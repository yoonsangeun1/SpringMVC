package com.moving.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.moving.domain.VideoPostVO;
import com.moving.service.VideoPostService;

@Controller // @RequestMapping(value="/project")
public class VideoController {
	
	
	@Autowired
	// 의존성을 주입시킨다.
	private VideoPostService videoPostService;
	
	ModelAndView modelView = new ModelAndView();
	// view page 경로 설정
	
	
	@RequestMapping("video/videomain")
	// 영화 HOME
	public ModelAndView video_mainList
	(HttpServletRequest request, int codeNo)
	throws Exception {
		
		List<VideoPostVO> topLs = this.videoPostService.getTopLs(codeNo);
		modelView.addObject("topLs", topLs);
		
		modelView.setViewName("video/video_mainList");
		return modelView;
	}
	
	
	@RequestMapping("video/videocategory")
	// 영상 장르별 목록 보기
	public ModelAndView video_categoryList
	(HttpServletRequest request, VideoPostVO videoPostVO, int codeNo)
	throws Exception {
		codeNo = videoPostVO.getCodeNo();
		int page = 1;
		// 현재 페이지 번호
		if (request.getParameter("page") != null) {
		// 페이지에 받아오는 값이 null값이 아닐 때,
			page = Integer.parseInt(request.getParameter("page"));
			// get으로 전달 된 페이지 번호를 정수 숫자로 바꿔서 저장
		}
		int limit = 12;
		// 한 페이지에 보여지는 VIDEO 개수
		videoPostVO.setStartrow((page - 1) * 12 + 1);
		// 시작 행
		videoPostVO.setEndrow(videoPostVO.getStartrow() + limit - 1); 
		// 끝 행
		int totalCount = this.videoPostService.getTotalCount(codeNo);
		// 총 게시물 수
		List<VideoPostVO> dvdList = this.videoPostService.getVideoPost(videoPostVO);
		// 영상물 목록
		int maxpage = (int) ((double) totalCount / limit + 0.95);
		// 총 페이지
		int startpage = (((int) ((double) page / 10 + 0.9)) - 1) * 10 + 1;
		// 시작 페이지
		int endpage = maxpage;
		// 마지막 페이지
		if (endpage > startpage + 10 - 1) {
			endpage = startpage + 10 - 1;
		}
		modelView.addObject("totalCount", totalCount);
		// 총 게시물
		modelView.addObject("dvdList", dvdList);
		// 영상 목록
		modelView.addObject("page", page);
		// 현재 페이지 번호
		modelView.addObject("startpage", startpage);
		// 시작 페이지
		modelView.addObject("endpage", endpage);
		// 마지막 페이지
		modelView.addObject("maxpage", maxpage);
		// 총 페이지
		modelView.setViewName("video/video_categoryList");
		// view resolver
		return modelView;
		// 반환시킴.
	}
	// video_categoryList.jsp
	
	
	@RequestMapping("video/content")
	// 영상 상세 페이지 내용 보기
	public ModelAndView video_content
	(int id)
	throws Exception {
		VideoPostVO videoPostVO = this.videoPostService.getContent(id);
		// 번호에 해당하는 DB 레코드 값을 가져와서 객체에 저장함.
		modelView = new ModelAndView("/video/video_content");
		// 초기화
		modelView.addObject("videoPostVO", videoPostVO);
		// 키, 값 동일하게 입력
		return modelView;
	}
	// video_content.jsp
	
}