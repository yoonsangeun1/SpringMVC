package com.moving.controller;

import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.moving.domain.VideoPostVO;
import com.moving.service.AdminVideoService;

@RequestMapping(value="/admin")
@Controller
public class AdminVideoController {
	
	@Autowired
	private AdminVideoService adminVideoService;
	
	/* 영화 업로드 완료 */
	@RequestMapping(value="/movie_upload_ok")
	public String insertMovieOk(VideoPostVO vp,HttpServletResponse response,HttpServletRequest request,HttpSession session) throws Exception {
		
		response.setContentType("text/html;charset=UTF-8");
		PrintWriter out=response.getWriter();
		String admin_id=String.valueOf(session.getAttribute("id"));
		
		if(admin_id == null) {
			out.println("<script>");
			out.println("alert('다시 로그인 하세요!');");
			out.println("location='admin_login';");
			out.println("</script>");
		}else {
			this.adminVideoService.insertMovie(vp); // 영화 저장
			return "redirect:/admin/movie"; // 영화 관리 목록보기로 이동
		}
		
		return null;
		
	}//insertMovieOk()
}
