package com.moving.controller;

import java.io.PrintWriter;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.moving.domain.NormalPostVO;
import com.moving.service.AdminBoardService;

//@RequestMapping(value="/admin")
@Controller
public class AdminBoardController {
	
	@Autowired
	private AdminBoardService adminBoardService;
	
	/* 게시판 관리 목록 */
	@RequestMapping(value="/admin/board")
	public ModelAndView board(@ModelAttribute NormalPostVO np,Model m,HttpServletRequest request, String codeNo) {
		int page=1; // 쪽번호
		int limit=10; // 한 페이지에 보여지는 목록 개수
		if(request.getParameter("page") != null) { // get으로 전달된 페이지 번호가 있는 경우
			page=Integer.parseInt(request.getParameter("page")); // 페이지 번호를 정수숫자로 바꿔서 저장
		} // if
		
		String findName=request.getParameter("findName"); // 검색어
		String findField=request.getParameter("findField"); // 검색 필드
		np.setCodeNo(Integer.parseInt(request.getParameter("codeNo"))); // 코드 넘버
		
		np.setFindField(findField);
		np.setFindName("%"+findName+"%");
		
		int boardCount=this.adminBoardService.boardCount(np); // 총 게시물 수
		np.setStartrow((page-1)*10+1);
		np.setEndrow(np.getStartrow()+limit-1);
		
		List<NormalPostVO> nplist=this.adminBoardService.boardList(np); // 총 게시물 목록
		
		if(findField != null && (findField.equals("nickname") || findField.equals("all"))) {
			int userId = adminBoardService.findUserIdByNickname(findName);
			np.setUserId(userId);
		
			boardCount=this.adminBoardService.boardCount(np); // 총 게시물 수
			np.setStartrow((page-1)*10+1);
			np.setEndrow(np.getStartrow()+limit-1);
			
			nplist=this.adminBoardService.boardList(np); // 총 게시물 목록
		}
		
		
		
		int maxpage=(int)((double)boardCount/limit+0.95); // 총 페이지
		int startpage=(((int)((double)page/10+0.9))-1)*10+1; // 시작 페이지
		int endpage=maxpage; // 마지막 페이지
		
		if(endpage > startpage +10 -1)
			endpage=startpage +10 -1;
		
		ModelAndView npmlist=new ModelAndView();
			
		npmlist.addObject("nplist",nplist); // nplist 키 이름에 nplist 컬렉션 저장
		npmlist.addObject("page",page);
		npmlist.addObject("startpage",startpage);
		npmlist.addObject("endpage",endpage);
		npmlist.addObject("maxpage",maxpage);
		npmlist.addObject("boardCount",boardCount);
		npmlist.addObject("findField",findField);
		npmlist.addObject("findName",findName);
		npmlist.addObject("codeNo",codeNo);
		npmlist.setViewName("admin/admin_board"); // 뷰 리졸브 경로
		
		return npmlist;
	} // board()
	
	/* FAQ 작성 폼 */
	@RequestMapping(value="/admin/board/faq_write")
	public String faq_write() {
		
		return "admin/admin_faq_write"; // 뷰페이지 경로
	} // faq_write()
	
	/* FAQ 작성 완료 */
	@RequestMapping(value="/admin/board/faq_write_ok")
	public String faqWriteOk(NormalPostVO np,
			HttpServletResponse response,HttpServletRequest request,HttpSession session) throws Exception {
		response.setContentType("text/html;charset=UTF-8");
		PrintWriter out=response.getWriter();
		String admin_id=(String)session.getAttribute("id");
		
		if(admin_id == null) {
			out.println("<script>");
			out.println("alert('다시 로그인 하세요!');");
			out.println("location='/moving.com/member/';");
			out.println("</script>");
		}else {
			if(!session.getAttribute("user_lv").equals("관리자")) {
				out.println("<script>");
				out.println("alert('접근 권한이 없습니다!');");
				out.println("location='/moving.com/main';");
				out.println("</script>");
			}else {
			np.setUserId(Integer.parseInt(admin_id));
			this.adminBoardService.insertFaq(np); // FAQ 저장
			return "redirect:/admin/board?codeNo=10003"; // FAQ목록보기로 이동
			}
		}
		
		return null;
	} // faqWriteOk()

	/* 공지사항 글쓰기로 이동 */
	@RequestMapping(value="/admin/board/notice_write")
	public ModelAndView adminNoticeWrite(
			HttpSession session,
			HttpServletResponse response,
			HttpServletRequest request) throws Exception{
		
		response.setContentType("text/html;charset=UTF-8");
		PrintWriter out=response.getWriter();
		session=request.getSession();
		
		if(session.getAttribute("id") != null) { //세션으로 id 값이 있을경우
			int user_id=(int)session.getAttribute("id");
			ModelAndView bw = new ModelAndView("admin/admin_notice_write");
			
			
			if(user_id != 0) {
				return bw;
			}//if
		}else {
			out.println("<script>");
			out.println("alert('로그인을 해주세요!');");
			out.println("location='/moving.com/member/login';");
			out.println("</script>");
		}//if else
		
		return null;
		
	} // adminNoticeWrite()
	
	/* 공지사항 글쓰기 완료 */
	@RequestMapping("/admin/board/notice_write_ok")
	public String adminWriteOk(NormalPostVO np,
			HttpServletResponse response,
			HttpServletRequest request,
			HttpSession session,
			RedirectAttributes rttr) throws Exception{
			
		response.setContentType("text/html;charset=UTF-8");
		PrintWriter out=response.getWriter();
		session=request.getSession();
		
		if(session.getAttribute("id") != null) {
			
			int user_id=(int)session.getAttribute("id"); //세션으로 id를 user_id에 저장
			
			np.setUserId(user_id); //NormalPostVO np.setUserId에 id 값을 넣어둠.
			
			this.adminBoardService.noticeWrite(np);//np값을 기준으로 글쓰기 완료하기
				
			rttr.addFlashAttribute("msg","WRITE");
			
			return "redirect:/admin/board?codeNo=0"; //목록으로 이동
			
		}else { //넘겨온 id값이 없을경우, 또는 세션 만료되었을 경우
			out.println("<script>");
			out.println("alert('로그인을 해주세요!');");
			out.println("location='/moving.com/member/login';");
			out.println("</script>");
		}//if else
		
		return null;
		
	} // adminWriteOk()
	
	/* 게시물 내용보기 */
	@RequestMapping("/admin/board/board_cont")
	public ModelAndView adminNoticeCont(@RequestParam("id")
			int id, //id는 게시글 시퀀스 id
			@RequestParam("page") int page, @RequestParam("codeNo") int codeNo) throws Exception{
		
		//번호에 해당하는 디비 레코드값을 가져옴
		NormalPostVO np=this.adminBoardService.noticeCont(id);
		String np_cont=np.getContent().replace("\n","<br/>");
		ModelAndView cm=new ModelAndView("/admin/admin_board_cont"); // textarea영역에서 엔터키 친부분을 다음줄로 개행
		
		cm.addObject("np",np);
		cm.addObject("page",page);
		cm.addObject("codeNo",codeNo);
		
		return cm;
		
	} // adminNoticeCont()
	
	/* 게시물 수정 */
	@RequestMapping("/admin/board/board_edit")
	public String adminNoticeEdit(int id, //게시글 번호 id
			int page,						//페이지
			int codeNo,
			Model m,						
			HttpServletRequest request,
			HttpServletResponse response,
			HttpSession session) throws Exception{
		
		response.setContentType("text/html;charset=UTF-8");
		PrintWriter out=response.getWriter();
		session=request.getSession();
		
		if(session.getAttribute("id") != null) { //세션에 값이 있을 경우
			
			NormalPostVO np=this.adminBoardService.noticeCont(id); //글번호 id를 기준으로 검색
			
			int m_userid=(int)session.getAttribute("id"); //세션으로 받아온 id를 m_userid에 저장
			
//			if(m_userid == np.getUserId()) { //m_user의 id와 normal_post의
//				//user_id가 일치한다면
				
				m.addAttribute("np",np);
				m.addAttribute("page",page);
				m.addAttribute("codeNo",codeNo);
				
				return "admin/admin_board_edit"; //view페이지로 이동
				
//			}else { //본인 게시글 수정이 아닐경우 // 즉 해당 글을 쓴 관리자만 수정 가능?하게
//				
//				out.println("<script>");
//				out.println("alert('본인 게시글만 수정 가능합니다!');");
//				out.println("alert("+m_userid+");");
//				out.println("alert("+np.getUserId()+");");
//				out.println("history.back();");
//				out.println("</script>");
//			}// if else
			
		}else { //세션에 값이 없을 경우
			out.println("<script>");
			out.println("alert('로그인을 해주세요!');");
			out.println("location='/moving.com/member/login';");
			out.println("</script>");
		}//if else
		
		return null;
		
	} // adminNoticeEdit()
	
	/* 공지 수정 완료 */
	@RequestMapping("/admin/board/board_edit_ok")
	public String adminNoticeEditOk(NormalPostVO np,
			int page,
			int id,
			int codeNo,
			String findField,
			String findName,
			RedirectAttributes rttr) throws Exception{
		
		this.adminBoardService.noticeEdit(np);
		
		rttr.addFlashAttribute("msg","EDIT"); // 개사물 수정 후 수정완료 알림
		
		return "redirect:/admin/board/board_cont?codeNo="+codeNo+"&id="+id+"&page="+page+"&findField="+findField+"&findName="+findName; //해당 내용보기 페이지로 이동
		
	} // adminNoticeEditOk()
	
	/* 공지 삭제 */
	@RequestMapping("/admin/board/board_del")
	public String adminNoticeDel(int id, //게시글 번호 id
			int page,						//페이지
			int codeNo,
			HttpServletRequest request,
			HttpServletResponse response,
			HttpSession session,
			RedirectAttributes rttr) throws Exception{
		
		response.setContentType("text/html;charset=UTF-8");
		PrintWriter out=response.getWriter();
		session=request.getSession();

		if(session.getAttribute("id") != null) { //세션에 값이 있을 경우

			NormalPostVO np=this.adminBoardService.noticeCont(id); //글번호 id를 기준으로 검색

			int m_userid=(int)session.getAttribute("id"); //세션으로 받아온 id를 m_userid에 저장

//			if(m_userid == np.getUserId()) { //m_user의 id와 normal_post의 user_id가 일치한다면

				this.adminBoardService.noticeDel(id);
				
				rttr.addFlashAttribute("msg","DEL"); // 게시물 삭제 후 삭제완료 알림
				
				return "redirect:/admin/board?codeNo="+codeNo+"&page="+page; //view 페이지로 이동

//			}else { //본인 게시글 삭제가 아닐경우
//				out.println("<script>");
//				out.println("alert('본인 게시글만 삭제 가능합니다!');");
//				out.println("alert("+m_userid+");");
//				out.println("alert("+np.getUserId()+");");
//				out.println("history.back();");
//				out.println("</script>");
//			}//if else

		}else { //세션에 값이 없을 경우
			out.println("<script>");
			out.println("alert('로그인을 해주세요!');");
			out.println("location='/moving.com/member/login';");
			out.println("</script>");
		}//if else
		
		return null;
		
	}// adminNoticeDel()
}
