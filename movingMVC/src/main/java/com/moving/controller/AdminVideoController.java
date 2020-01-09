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
import com.moving.domain.VideoPostVO;
import com.moving.service.AdminVideoService;

@Controller
public class AdminVideoController {
	
	@Autowired
	private AdminVideoService adminVideoService;
	
	/* 영화 업로드 완료 */
	@RequestMapping(value="admin/movie/movie_upload_ok")
	public String insertMovieOk(VideoPostVO vp,
			HttpServletResponse response,HttpServletRequest request,HttpSession session) throws Exception {
		response.setContentType("text/html;charset=UTF-8");
		PrintWriter out=response.getWriter();
		String admin_lv=(String)session.getAttribute("user_lv");
		
		if(admin_lv == null) {
			out.println("<script>");
			out.println("alert('다시 로그인 하세요!');");
			out.println("location='/moving.com/member/login';");
			out.println("</script>");
		}else {
			if(!admin_lv.equals("관리자")) {
				out.println("<script>");
				out.println("alert('접근 권한이 없습니다!');");
				out.println("location='/moving.com/main';");
				out.println("</script>");
			}else {
				
			int admin_id=(Integer)session.getAttribute("id");
			vp.setUserId(admin_id);
			this.adminVideoService.insertMovie(vp); // 영화 저장
			return "redirect:/admin/movie"; // 영화 관리 목록보기로 이동
		}
		}
		return null;
		
	}//insertMovieOk()
	
	/* 티저 업로드 완료 */
	@RequestMapping(value="/admin/movie/teaser_upload_ok")
	public String insertTeaserOk(VideoPostVO vp,
			HttpServletResponse response,HttpServletRequest request,HttpSession session) throws Exception {
		response.setContentType("text/html;charset=UTF-8");
		PrintWriter out=response.getWriter();
		String admin_lv=(String)session.getAttribute("user_lv");
		
		if(admin_lv == null) {
			out.println("<script>");
			out.println("alert('다시 로그인 하세요!');");
			out.println("location='/moving.com/member/login';");
			out.println("</script>");
		}else {
			if(!admin_lv.equals("관리자")) {
				out.println("<script>");
				out.println("alert('접근 권한이 없습니다!');");
				out.println("location='/moving.com/main';");
				out.println("</script>");
			}else {
				
				int admin_id=(Integer)session.getAttribute("id");
				vp.setUserId(admin_id);
				this.adminVideoService.insertTeaser(vp); // 영화 저장
				return "redirect:/admin/movie"; // 영화 관리 목록보기로 이동
			}
		}
		return null;
		
	}//insertTeaserOk()
	
	/* 영화 목록 */
	@RequestMapping(value="/admin/movie")
	public String movie(@ModelAttribute VideoPostVO vp, Model m,
			HttpServletResponse response,HttpServletRequest request,HttpSession session) throws Exception {
		response.setContentType("text/html;charset=UTF-8");
		PrintWriter out=response.getWriter();
		String admin_lv=(String)session.getAttribute("user_lv");
		System.out.println(admin_lv);
		if(admin_lv == null) {
			out.println("<script>");
			out.println("alert('다시 로그인 하세요!');");
			out.println("location='/moving.com/member/login';");
			out.println("</script>");
		}else {
			if(!admin_lv.equals("관리자")) {
				out.println("<script>");
				out.println("alert('접근 권한이 없습니다!');");
				out.println("location='/moving.com/main';");
				out.println("</script>");
			}else {
				
		int page=1; // 쪽번호
		int limit=10; // 한 페이지에 보여지는 목록 개수
		if(request.getParameter("page") != null) { // get으로 전달된 페이지 번호가 있는 경우
			page=Integer.parseInt(request.getParameter("page")); // 페이지 번호를 정수숫자로 바꿔서 저장
		} // if
		String findName=request.getParameter("findName"); // 검색어
		String findField=request.getParameter("findField"); // 검색 필드
		
		vp.setFindField(findField);
		vp.setFindName("%"+findName+"%");
		
		int videoCount=this.adminVideoService.videoCount(vp); // 총 영화 수
		vp.setStartrow((page-1)*10+1); // 시작 행 번호
		vp.setEndrow(vp.getStartrow()+limit-1); // 끝 행 번호
		
		List<VideoPostVO> vplist=this.adminVideoService.videoList(vp); // 총 영화 목록
		
		int maxpage=(int)((double)videoCount/limit+0.95); // 총 페이지
		int startpage=(((int)((double)page/10+0.9))-1)*10+1; // 시작 페이지
		int endpage=maxpage; // 마지막 페이지
		if(endpage > startpage +10 -1)
			endpage=startpage +10 -1;
		
		m.addAttribute("vplist",vplist); // mulist키 이름에 컬렉션 제네릭객체 mulist 저장
		m.addAttribute("page",page);
		m.addAttribute("startpage",startpage);
		m.addAttribute("endpage",endpage);
		m.addAttribute("maxpage",maxpage);
		m.addAttribute("videoCount",videoCount);
		m.addAttribute("findField",findField); //검색필드 저장
		m.addAttribute("findName",findName); //검색어
		
		return "admin/admin_movie"; // 뷰 페이지 경로 지정
			}
		}
		return null;
	}
	
	/* 영화 내용보기 */
	@RequestMapping("/admin/movie/movie_cont")
	public ModelAndView adminNoticeCont(@RequestParam("id")
			int id, //id는 영화 시퀀스 id
			@RequestParam("page") int page) throws Exception{
		
		//번호에 해당하는 디비 레코드값을 가져옴
		VideoPostVO vp=this.adminVideoService.movieCont(id);
		String vp_cont=vp.getContent().replace("\n","<br/>");
		ModelAndView cm=new ModelAndView("admin/admin_movie_cont"); // textarea영역에서 엔터키 친부분을 다음줄로 개행
		
		cm.addObject("vp",vp);
		cm.addObject("page",page);
		
		return cm;
		
	}
	
	/* 영화 수정 */
	@RequestMapping("/admin/movie/movie_edit")
	public String adminMovieEdit(int id, //게시글 번호 id
			int page,						//페이지
			Model m,						
			HttpServletRequest request,
			HttpServletResponse response,
			HttpSession session) throws Exception{
		
		response.setContentType("text/html;charset=UTF-8");
		PrintWriter out=response.getWriter();
		session=request.getSession();
		
		if(session.getAttribute("id") != null) { //세션에 값이 있을 경우
			
			VideoPostVO vp=this.adminVideoService.movieCont(id); //글번호 id를 기준으로 검색
				
				m.addAttribute("vp",vp);
				m.addAttribute("page",page);
				
				return "admin/admin_movie_edit"; //view페이지로 이동
		}else { //세션에 값이 없을 경우
			out.println("<script>");
			out.println("alert('로그인을 해주세요!');");
			out.println("location='/moving.com/member/login';");
			out.println("</script>");
		}//if else
		
		return null;
		
	}
	
	/* 영화 수정 완료 */
	@RequestMapping("/admin/movie/movie_edit_ok")
	public String adminMovieEditOk(VideoPostVO vp,
			int page,
			int id,
			String findField,
			String findName,
			RedirectAttributes rttr) throws Exception{
		
		this.adminVideoService.movieEdit(vp);
		
		rttr.addFlashAttribute("msg","EDIT"); // 개사물 수정 후 수정완료 알림
		
		return "redirect:/admin/movie/movie_cont?id="+id+"&page="+page+"&findField="+findField+"&findName="+findName; //해당 내용보기 페이지로 이동
		
	}
	
	/* 티저 수정 완료 */
	@RequestMapping("/admin/movie/teaser_edit_ok")
	public String adminTeaserEditOk(VideoPostVO vp,
			int page,
			int id,
			String findField,
			String findName,
			RedirectAttributes rttr) throws Exception{
		
		this.adminVideoService.teaserEdit(vp);
		
		rttr.addFlashAttribute("msg","EDIT"); // 개사물 수정 후 수정완료 알림
		
		return "redirect:/admin/movie/movie_cont?id="+id+"&page="+page+"&findField="+findField+"&findName="+findName; //해당 내용보기 페이지로 이동
		
	}
	
	/* 영화 삭제 */
	@RequestMapping("/admin/movie/movie_del")
	public String adminNoticeDel(int id, //게시글 번호 id
			int page,						//페이지
			HttpServletRequest request,
			HttpServletResponse response,
			HttpSession session,
			RedirectAttributes rttr) throws Exception{
		
		response.setContentType("text/html;charset=UTF-8");
		PrintWriter out=response.getWriter();
		session=request.getSession();

		if(session.getAttribute("id") != null) { //세션에 값이 있을 경우

			VideoPostVO vp=this.adminVideoService.movieCont(id); //글번호 id를 기준으로 검색

			int m_userid=(int)session.getAttribute("id"); //세션으로 받아온 id를 m_userid에 저장

				this.adminVideoService.movieDel(id);
				
				rttr.addFlashAttribute("msg","DEL"); // 게시물 삭제 후 삭제완료 알림
				
				return "redirect:/admin/movie?&page="+page; //view 페이지로 이동

		}else { //세션에 값이 없을 경우
			out.println("<script>");
			out.println("alert('로그인을 해주세요!');");
			out.println("location='/moving.com/member/login';");
			out.println("</script>");
		}//if else
		
		return null;
		
	}
}
