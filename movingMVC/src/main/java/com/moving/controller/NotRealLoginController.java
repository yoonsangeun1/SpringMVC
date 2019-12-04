package com.moving.controller;

import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

//@RestController
@Controller
public class NotRealLoginController {

	//임시로그인처리
	@RequestMapping("not_real_login")
	public String not_real_login(
			HttpServletRequest request, 
			HttpServletResponse response, 
			HttpSession session) throws Exception {
		response.setContentType("text/html; charset=UTF-8");
		PrintWriter out=response.getWriter();
		session=request.getSession();

		/* 세션에 id, userid, nickname 저장 */
		session.setAttribute("id", 1);
		session.setAttribute("userid", "admin@gmail.com");
		session.setAttribute("nickname", "admin");
		
		/* 세션에서 id, userid, nickname 불러와 변수에 저장 */
		int id=(int)session.getAttribute("id");
		String userid=(String)session.getAttribute("userid");
		String nickname=(String)session.getAttribute("nickname");
		
		/* 저장된 값 불러와졌으면 알림창 출력 후 다른 페이지로 이동 */
		if((id==1)&&(userid!=null)&&(nickname!=null)) {
			out.println("<script>");
			out.println("alert('임시 로그인 id="+id+", userid="+userid+", nickname="+nickname+"');");
			out.println("location='/moving.com/board/free'");
			out.println("</script>");
		}
		return null;
	}//not_real_login()
}
