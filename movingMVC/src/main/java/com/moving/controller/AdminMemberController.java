package com.moving.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.moving.domain.MUserVO;
import com.moving.service.AdminMemberService;

@RequestMapping(value="/admin")
@Controller
public class AdminMemberController {
	
	@Autowired
	private AdminMemberService adminMemberService;
	
	/* 관리자 회원관리 목록 */
	@RequestMapping(value="/member")
	public String member(@ModelAttribute MUserVO mu,Model m,HttpServletRequest request) {
		int page=1; // 쪽번호
		int limit=10; // 한 페이지에 보여지는 목록 개수
		if(request.getParameter("page") != null) { // get으로 전달된 페이지 번호가 있는 경우
			page=Integer.parseInt(request.getParameter("page")); // 페이지 번호를 정수숫자로 바꿔서 저장
		} // if
		String findName=request.getParameter("findName"); // 검색어
		String findField=request.getParameter("findField"); // 검색 필드
		
		mu.setFindField(findField);
		mu.setFindName("%"+findName+"%");
		
		int memberCount=this.adminMemberService.memberCount(mu); // 총 회원 수
		mu.setStartrow((page-1)*10+1); // 시작 행 번호
		mu.setEndrow(mu.getStartrow()+limit-1); // 끝 행 번호
		
		List<MUserVO> mulist=this.adminMemberService.memberList(mu); // 검색 전후 회원 목록
		
		int maxpage=(int)((double)memberCount/limit+0.95); // 총 페이지
		int startpage=(((int)((double)page/10+0.9))-1)*10+1; // 시작 페이지
		int endpage=maxpage; // 마지막 페이지
		if(endpage > startpage +10 -1)
			endpage=startpage +10 -1;
		
		m.addAttribute("mulist",mulist); // mulist키 이름에 컬렉션 제네릭객체 mulist 저장
		m.addAttribute("page",page);
		m.addAttribute("startpage",startpage);
		m.addAttribute("endpage",endpage);
		m.addAttribute("maxpage",maxpage);
		m.addAttribute("memberCount",memberCount);
		m.addAttribute("findField",findField); //검색필드 저장
		m.addAttribute("findName",findName); //검색어
		
		
		return "admin/admin_member"; // 뷰 페이지 경로 지정
	}//member()
	
//	/* 회원 클릭했을 때 나오는 회원정보 창 */
//	@RequestMapping(value="/memberInfo")
//	public ModelAndView memberInfo() {
//		
//	}
}
 