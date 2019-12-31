package com.moving.controller;

import java.io.File;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.List;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.moving.domain.ProfilePostVO;
import com.moving.service.BoardActorsService;
import com.oreilly.servlet.MultipartRequest;

@Controller
public class BoardActorsController { /*배우모집 컨트롤러*/

	@Autowired
	private BoardActorsService boardActorsService;
	
	//게시판 목록 보기
	@RequestMapping("/board/actors")
	public ModelAndView board_actors(
			HttpServletRequest request,
			ProfilePostVO ba) { //ba는 boardactors 여서 ba이다.
		
		/*페이징 쪽 나누기*/
		int page=1; //현재 쪽번호
		int limit=20; //한페이지에 보여지는 목록 개수
		
		if(request.getParameter("page") != null) {
			page=Integer.parseInt(request.getParameter("page"));
			//get으로 전달된 페이지번호를 정수숫자로 바꿔서 저장
		}//if
		
		String findField=request.getParameter("findField");//검색필드(콤보박스)
		String findName=request.getParameter("findName");//검색어
		
		ba.setFindField(findField);
		ba.setFindName("%"+findName+"%");
		
		ba.setStartrow((page-1)*20+1); //시작행번호
		ba.setEndrow(ba.getStartrow()+limit-1); //끝행번호
		
		int totalCount=this.boardActorsService.getTotalCount(ba);// 검색 전, 후 총 게시물 수
		List<ProfilePostVO> balist=this.boardActorsService.getBoardActorsList(ba);
		//게시물 목록을 가져옴
		
		//총페이지 수
		int maxpage=(int)((double)totalCount/limit+0.95);
		//시작 페이지
		int startpage=(((int)((double)page/10+0.9))-1)*10+1;
		//마지막 페이지
		int endpage=maxpage;
		
		if(endpage > startpage+20-1) {
			endpage=startpage+20-1;
		}//if
		
		ModelAndView bamlist=new ModelAndView(); //board actors ModelAndView list
		
		bamlist.addObject("totalCount",totalCount);
		bamlist.addObject("balist",balist);
		bamlist.addObject("startpage",startpage);
		bamlist.addObject("endpage",endpage);
		bamlist.addObject("maxpage",maxpage);
		bamlist.addObject("page",page);
		bamlist.addObject("findField",findField);
		bamlist.addObject("findName",findName);
		
		bamlist.setViewName("board/board_actors"); //jsp경로
		
		return bamlist;
		
	}//board_actors()
	
	//글쓰기로 이동
	@RequestMapping("/board/actors_write")
	public ModelAndView board_actors_write(
			HttpSession session,
			HttpServletResponse response,
			HttpServletRequest request) throws Exception{
		
		response.setContentType("text/html;charset=UTF-8");
		PrintWriter out=response.getWriter();
		session=request.getSession();
		
		if(session.getAttribute("id") != null) { //세션 id값이 있을경우
			int id=(int)session.getAttribute("id");
			
			if(id != 0) {
				return new ModelAndView("board/board_actors_write");
			}//if
		}else {
			out.println("<script>");
			out.println("alert('로그인을 해주세요!');");
			out.println("location='/moving.com/member/login';");
			out.println("</script>");
		}//if else
		
		return null;
		
	}//board_actors_write
	
	//글쓰기 완료 후 리스트로 이동
	@RequestMapping("/board/actors_write_ok")							
	public String board_actors_write_ok(ProfilePostVO ba,
			HttpServletResponse response,
			HttpServletRequest request,
			HttpSession session,
			RedirectAttributes rttr) throws Exception{
		
		response.setContentType("text/html;charset=UTF-8");
		PrintWriter out=response.getWriter();
		session=request.getSession();	
	
		String saveFolder=request.getRealPath("/"); // 파일 기본경로
		int fileSize=10*1024*1024; //첨부파일 최대크기(10MB)
		MultipartRequest multi=null;// 첨부파일을 가져오는 api
		String filePath=null;		//String들, 밑에 if문 밖에서도 사용하기 위해 미리 선언함.
		String todayFolder=null;
		String fileName=null;
		File fileyyyyMMFolder = null;
		
		/*File UpFile=multi.getFile("thumbnailImage"); //첨부한 파일을 가져옴. */		
		
		if(session.getAttribute("id") != null) {
			int user_id=(int)session.getAttribute("id");//세션으로 받아온 id를 user_id에 저장
			ba.setUserId(user_id); //ProfilePostVO ba.setUserId에 id 값을 넣어둠.
			
			//파일 저장 경로
			filePath = saveFolder + "resources" + File.separator +"photo_upload" + File.separator;
			
			multi=new MultipartRequest(request,filePath,fileSize,"UTF-8");
			File UpFile=multi.getFile("thumbnailImage"); //첨부한 파일을 가져옴.
			
			if(UpFile != null) {
				
			fileName=UpFile.getName(); //첨부한 파일명	
			SimpleDateFormat formatterFolder = new SimpleDateFormat("yyyyMM"); //년월만 저장
			todayFolder = formatterFolder.format(new java.util.Date()); //201912 이런식
			
			//파일 저장 경로
			filePath = saveFolder + "resources" + File.separator +"photo_upload" + File.separator;
			
			File file = new File(filePath); //기본 경로 폴더 생성하기
			if(!file.exists()) { //file 폴더가 없다면
				file.mkdirs();   //자동 생성
			}else {
				 fileyyyyMMFolder = new File(filePath + todayFolder +File.separator);
				if(fileyyyyMMFolder.exists()) {//년월 폴더가 없다면
					fileyyyyMMFolder.mkdirs();
				}//if 	
			}//if else
			
			String realFileNm = "";
			SimpleDateFormat formatter = new SimpleDateFormat("yyyyMMddHHmmss");
	        String today= formatter.format(new java.util.Date());
	        
	        //해당 폴더에 생성될 이미지 파일 명
	        realFileNm = today + UUID.randomUUID().toString() + fileName.substring(fileName.lastIndexOf("."));
	        String rlFileNm = filePath + todayFolder +File.separator + realFileNm; //디비에 저장될 파일 경로
	        UpFile.renameTo(new File(fileyyyyMMFolder+"/"+realFileNm));
	        
	        ba.setThumbnailImage(rlFileNm); //파일 경로? 저장
	        
			ba.setCategory(multi.getParameter("category"));	
			ba.setEtctext(multi.getParameter("etctext"));
			ba.setEmail(multi.getParameter("email"));
			ba.setBirthDate(multi.getParameter("birthDate"));
			        
			String height_string=multi.getParameter("height"); //height는 int 타입으로 넣어야 하기 때문에
			if(height_string == "" || height_string.equals("") //값을 가져와 int 타입으로 변경함.
					|| height_string == null) {						   
			int height = Integer.parseInt(height_string+0);	   // ""값일 경우 에러가 나니깐 +0을 해줌.
			ba.setHeight(height);
			
			} else {										   //height_string이 ""이 아닌 정상 값일 경우
				
			int height = Integer.parseInt(height_string);
			ba.setHeight(height);	
			
			}//if else
			
			ba.setSex(multi.getParameter("sex"));
			ba.setWebsiteUrl(multi.getParameter("websiteUrl"));
			ba.setContent(multi.getParameter("content"));
			
			ba.setName((String)session.getAttribute("name")); //이름 저장
			
			System.out.println(multi.getParameter("etctext"));
   
			}else{ // UpFile != null if문
				
			ba.setThumbnailImage(""); //mybatis는 컬럼에 null을 저장못함.
				//그러므로 파일을 첨부하지 않았을때 null 저장막기 위함임.
			
					
			}//if else
			
			this.boardActorsService.inBoardActors(ba); //ba 값을 기준으로 글쓰기 완료하기
			
			rttr.addFlashAttribute("msg","BOARD/ACTORS_INSERT");
			
			return "redirect:/board/actors"; // 목록으로 이동
			
		}else { //넘겨온 id 값이 없을경우, 또는 세션 만료
			out.println("<script>");
			out.println("alert('로그인을 해주세요!');");
			out.println("location='/moving.com/member/login';");
			out.println("</script>");
		}//if else
		
		return null;
		
	}//board_actors_write_ok()
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
}//BoardActorsController class
