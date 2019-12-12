package com.moving.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.moving.domain.BoardCommentVO;
import com.moving.service.BoardCommentService;

@Controller
public class BoardComment { /*댓글 임시 컨트롤러*/
	
	@Autowired
	private BoardCommentService boardCommentService;
	
	//게시판 목록
	@RequestMapping("all/{id}")
	public ResponseEntity<List<BoardCommentVO>> list(
			int id){
		
		ResponseEntity<List<BoardCommentVO>> entity=null;
		
		try {
			entity=new ResponseEntity<>(	
			this.boardCommentService.listComment(id),HttpStatus.OK);
		}catch(Exception e) {
			e.printStackTrace();
			entity=new ResponseEntity<>(HttpStatus.BAD_REQUEST);
		}//try~catch문
		
		return entity;
		
	}//list()

}//BoardComment class
