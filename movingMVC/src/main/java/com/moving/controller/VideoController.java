package com.moving.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.moving.domain.VideoPostVO;
import com.moving.service.VideoPostService;

@Controller // @RequestMapping(value="/project")
public class VideoController {
	
	// 의존성을 주입시킨다.
	@Autowired
	private VideoPostService videoPostService;
	
	ModelAndView modelView = new ModelAndView(); // view page 경로 설정
	
	// 영화 HOME
	@RequestMapping("video/videomain")
	public String main() {
		return "video/video_mainList";
	} // video_mainList.jsp
	
//	// 카테고리별 페이지
//	@RequestMapping("video/videocategory")
//	public String categoryList() {
//		return "video/video_categoryList";
//	} // video_categoryList.jsp
	
//	 영상 상세 페이지 내용 보기
	@RequestMapping("video/content")
	public ModelAndView video_content(int id) throws Exception {
		VideoPostVO videoPostVO = this.videoPostService.getContent(id); // 번호에 해당하는 DB 레코드 값을 가져와서 dvd 객체에 저장함.
		ModelAndView modelView = new ModelAndView("/video/video_content");
		modelView.addObject("videoPostVO", videoPostVO); // 키, 값 동일하게 입력
		return modelView;
	} // video_content.jsp
	
//	// 영화 HOME
//	@RequestMapping("video/videomain")
//	public ModelAndView video_mainList (HttpServletRequest request, VideoPostVO dvd)
//	throws Exception {
//		int limit = 9; // 한 페이지에 보여지는 목록의 개수
//		int totalCount = this.videoPostService.getTotalCount(); // 총 게시물 수
//		List<VideoPostVO> dvdList = this.videoPostService.getVideoPostList(dvd); // 영상물 목록을 가져옴.
//		ModelAndView modelView = new ModelAndView(); // Video Post ModelAndView
//		modelView.addObject("totalCount", totalCount);
//		modelView.addObject("dvdList", dvdList);
//		modelView.setViewName("video/video_mainList"); // View Resolver
//		return modelView; // 반환되는 값
//	} // video_mainList.jsp
	
	// 카테고리별 페이지
	@RequestMapping("video/videocategory")
	public ModelAndView video_categoryList
	(HttpServletRequest request, VideoPostVO videoPostVO) // java.lang.NumberFormatException: For input string: "id" 오류가 발생해서 int id 추가
	throws Exception {
		int page = 1; // 현재 페이지 번호
		if (request.getParameter("page") != null) { // 페이지에 받아오는 값이 null값이 아닐 때,
			page = Integer.parseInt(request.getParameter("page")); // get으로 전달 된 페이지 번호를 정수 숫자로 바꿔서 저장
		} // if
		int limit = 12; // 한 페이지에 보여지는 DVD 개수
		videoPostVO.setStartrow((page - 1) * 12 + 1); // 시작 행
		videoPostVO.setEndrow(videoPostVO.getStartrow() + limit - 1); // 끝 행
		int totalCount = this.videoPostService.getTotalCount(); // 총 게시물 수
		List<VideoPostVO> dvdList = this.videoPostService.getVideoPost(videoPostVO); // 영상물 목록
		int maxpage = (int) ((double) totalCount / limit + 0.95); // 총 페이지
		int startpage = (((int) ((double) page / 10 + 0.9)) - 1) * 10 + 1; // 시작 페이지
		int endpage = maxpage; // 마지막 페이지
		if (endpage > startpage + 10 - 1) {
			endpage = startpage + 10 - 1;
		} // if
		
		ModelAndView modelView = new ModelAndView();
		
		modelView.addObject("totalCount", totalCount); // 총 게시물
		modelView.addObject("dvdList", dvdList); // 영상 목록
		modelView.addObject("page", page); // 현재 페이지 번호
		modelView.addObject("startpage", startpage); // 시작 페이지
		modelView.addObject("endpage", endpage); // 마지막 페이지
		modelView.addObject("maxpage", maxpage); // 총 페이지
		modelView.setViewName("video/video_categoryList"); // view resolver
		return modelView; // 반환시킴.
	} // video_categoryList.jsp
	
}