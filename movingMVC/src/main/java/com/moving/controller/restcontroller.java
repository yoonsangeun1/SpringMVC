package com.moving.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import com.moving.domain.MUserVO;
import com.moving.domain.SocialProfileVO;
import com.moving.service.MUserService;

@RestController
public class restcontroller {


	@Autowired
	private MUserService mUserService;

	//게시판 번호에 해당하는 댓글 개수 불러오기
	@RequestMapping(value="getUserInfo", method=RequestMethod.GET)
	public MUserVO selectCommentCount(
			HttpServletRequest request, HttpSession session) throws Exception {
		session = request.getSession();
		
		/* @PathVariable("id") 애노테이션은 웹주소 경로에서 원하는 자료를 추출하는 용도로 사용.
		 * 여기서는 {id}에 주어진 게시판 번호값을 가져와서 int id에 저장 */
		MUserVO entity=null;
		try {
			MUserVO dm = this.mUserService.loginCheck((String)session.getAttribute("userid")); //로그인 인증
			System.out.println((String)session.getAttribute("userid"));
			session.setAttribute("id",dm.getId()); //세션 id에 시퀀스번호값 저장
			session.setAttribute("userid",dm.getUserid()); //세션 이메일아이디에 아이디값 저장
			session.setAttribute("nickname",dm.getNickname()); //세션 닉네임에 VO객체저장
			session.setAttribute("name",dm.getName()); //세션 이름에 VO객체저장
			session.setAttribute("email",dm.getEmail()); //세션 이메일에 VO객체저장
			session.setAttribute("genre01",dm.getGenre01()); //세션 장르1에 VO객체저장
			session.setAttribute("genre02",dm.getGenre02()); //세션 장르2에 VO객체저장
			session.setAttribute("genre03",dm.getGenre03()); //세션 장르3에 VO객체저장
			session.setAttribute("phone",dm.getPhone()); //세션 휴대폰번호에 VO객체저장
			session.setAttribute("publish_availability",dm.getPublishAvailability()); //세션 마이페이지 공개여부에 VO객체저장
			session.setAttribute("profile_image_url",dm.getProfileImageUrl()); //세션 프로필사진에 VO객체저장
			session.setAttribute("user_status",dm.getUserStatus()); //세션 회원상태에 VO객체저장
			session.setAttribute("user_type",dm.getUserType()); //세션 회원유형에 VO객체저장
			
			if(dm.getUserLv()==1) {
				session.setAttribute("user_lv", "개인회원");
			}else if(dm.getUserLv()==2) {
				session.setAttribute("user_lv", "휴면회원");
			}else if(dm.getUserLv()==3) {
				session.setAttribute("user_lv", "제작사");
			}else {
				session.setAttribute("user_lv", "관리자");
			}
//			session.setAttribute("user_lv",dm.getUserLv()); //세션 회원등급에 VO객체저장
			session.setAttribute("user_point",dm.getUserPoint()); //세션 회원포인트에 VO객체저장 
			session.setAttribute("register_date",dm.getRegisterDate()); //세션 회원가입날짜에 VO객체저장
			session.setAttribute("business_name",dm.getBusinessName()); //세션 사업자이름에 VO객체저장
			session.setAttribute("business_register_no",dm.getBusinessRegisterNo()); //세션 사업자등록번호에 VO객체저장
			session.setAttribute("business_license_image_path",dm.getBusinessLicenseImagePath()); //세션 사업자등록증이미지경로에 VO객체저장
			session.setAttribute("deactivate_date",dm.getDeactivateDate()); //세션 탈퇴날짜에 VO객체저장
			session.setAttribute("deactivate_reason",dm.getDeactivateReason()); //세션 탈퇴사유 VO객체저장
			
			SocialProfileVO svo = this.mUserService.findSocialAcount(dm.getId());
			if(svo!=null) {
				session.setAttribute("sessionSocial", svo);
			}
			entity=dm;
		}catch(Exception e) { 
			e.printStackTrace(); 
			entity=null;
		}
		return entity;
	}//selectCommentList()
}
