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
}
