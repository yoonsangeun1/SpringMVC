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
import org.springframework.ui.Model;
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
			int page,
			HttpSession session,
			HttpServletResponse response,
			HttpServletRequest request) throws Exception{
		
		response.setContentType("text/html;charset=UTF-8");
		PrintWriter out=response.getWriter();
		session=request.getSession();
		
		if(session.getAttribute("id") != null) { //세션 id값이 있을경우
			int id=(int)session.getAttribute("id");
			
			ModelAndView aw=new ModelAndView("board/board_actors_write");
			aw.addObject("page",page);
			
			if(id != 0) {
				return aw;
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
		String sFileInfo="";
		
		if(session.getAttribute("id") != null) {
			int user_id=(int)session.getAttribute("id");//세션으로 받아온 id를 user_id에 저장
			ba.setUserId(user_id); //ProfilePostVO ba.setUserId에 id 값을 넣어둠.
			
			//파일 저장 경로
			filePath = saveFolder + "resources" + File.separator +"photo_upload";
			
			multi=new MultipartRequest(request,filePath,fileSize,"UTF-8");
			File UpFile=multi.getFile("thumbnailImage"); //첨부한 파일을 가져옴.
			
			if(UpFile != null) {
				
			fileName=UpFile.getName(); //첨부한 파일명	
			SimpleDateFormat formatterFolder = new SimpleDateFormat("yyyyMM"); //년월만 저장
			todayFolder = formatterFolder.format(new java.util.Date()); //201912 이런식
			
			File file = new File(filePath); //기본 경로 폴더 생성하기
			if(!file.exists()) { //file 폴더가 없다면
				file.mkdirs();   //자동 생성
			}else {
				 fileyyyyMMFolder = new File(filePath + File.separator + todayFolder +File.separator);
				if(!fileyyyyMMFolder.exists()) {//년월 폴더가 없다면
					fileyyyyMMFolder.mkdirs();
				}//if 	
			}//if else
			
			String realFileNm = "";
			SimpleDateFormat formatter = new SimpleDateFormat("yyyyMMddHHmmss");
	        String today= formatter.format(new java.util.Date());
	        
	        //해당 폴더에 생성될 이미지 파일 명
	        realFileNm = today + UUID.randomUUID().toString() + fileName.substring(fileName.lastIndexOf("."));
	        UpFile.renameTo(new File(fileyyyyMMFolder+"/"+realFileNm));
	        
	         ///////////////// DB에 파일쓰기 /////////////////
	         sFileInfo += "/moving.com/resources/photo_upload/"+
	         todayFolder + File.separator + realFileNm;    
	        
	        ba.setThumbnailImage(sFileInfo); //파일 경로? 저장
	        
			ba.setCategory(multi.getParameter("category"));	
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
			
			if(multi.getParameter("etctext") == "") {
				ba.setEtctext("");
			}else {
				ba.setEtctext(multi.getParameter("etctext"));
			}
			
			ba.setSex(multi.getParameter("sex"));
			ba.setWebsiteUrl(multi.getParameter("websiteUrl"));
			ba.setContent(multi.getParameter("content"));
			
			ba.setName((String)session.getAttribute("name")); //이름 저장
   
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
	
	//내용보기+조회수 증가
	@RequestMapping("/board/actors_cont")
	public ModelAndView board_actors_cont(
			int page,
			int id) throws Exception{
		
		//번호에 해당하는 디비 레코드 값을 가져옴.
		ProfilePostVO ba=this.boardActorsService.getCont(id);
		
		ModelAndView cm=new ModelAndView("/board/board_actors_cont");
		
		cm.addObject("ba",ba);
		cm.addObject("page",page);
		
		return cm;
		
	}//board_actors_cont
	
	//게시글 수정
	@RequestMapping("/board/actors_edit")
	public String board_actors_edit(int id,
			int page,
			Model m,
			HttpServletRequest request,
			HttpServletResponse response,
			HttpSession session) throws Exception{
		
		response.setContentType("text/html;charset=UTF-8");
		PrintWriter out=response.getWriter();
		session=request.getSession();
		
		if(session.getAttribute("id") != null) { /*세션에 값이 있을 경우*/
			
			ProfilePostVO ba=this.boardActorsService.getCont2(id); //조회수 증가 없는 내용값
			
			int m_userid= (int) session.getAttribute("id"); //세션으로 받아온 id를 m_userid에 저장
			
			if(m_userid == ba.getUserId()) { 
			//세션 m_user의 id와 profile_post의 user_id가 일치한다면
				
				m.addAttribute("ba",ba);
				m.addAttribute("page",page);
				m.addAttribute("id",id);
				
				return "board/board_actors_edit"; //view페이지로 이동
				
			}else { //본인 게시글이 아닐경우
				out.println("<script>");
				out.println("alert('본인 게시글만 수정 가능합니다!');");
				out.println("history.back();");
				out.println("</script>");
			}//if else
		
		}else { // 세션에 값이 없을경우
			out.println("<script>");
			out.println("alert('로그인을 해주세요!');");
			out.println("location='/moving.com/member/login';");
			out.println("</script>");
		}//if else
		
		return null;
		
	}//board_actors_edit()
	
	//게시글 수정 완료
	@RequestMapping("/board/actors_edit_ok")
	public String board_actors_edit_ok(ProfilePostVO ba,
			HttpServletRequest request,
			HttpServletResponse response,
			HttpSession session,
			RedirectAttributes rttr) throws Exception{
		
		response.setContentType("text/html;charset=UTF-8");
		PrintWriter out=response.getWriter();
		session=request.getSession();	
		
		String saveFolder = request.getRealPath("/"); //파일 기본경로
		int fileSize=10*1024*1024; //첨부파일 최대크기(10MB)
		MultipartRequest multi=null; //첨부파일을 가져오는 api
		String filePath=null;
		String todayFolder=null;
		String fileName=null;
		File fileyyyyMMFolder = null;
		String sFileInfo="";
		int id=0;
		int page=0;
		
		if(session.getAttribute("id") != null) {
			
			int user_id=(int)session.getAttribute("id"); //세션으로 받아온 id를 user_id에 저장
			ba.setUserId(user_id); //ProfilePostVO ba.setUserId에 id값을 넣어둠.	
			
			//파일 저장 경로
			filePath = saveFolder + "resources" + File.separator + "photo_upload";
			
			multi = new MultipartRequest(request,filePath,fileSize,"UTF-8");
			File UpFile = multi.getFile("thumbnailImage"); //첨부한 파일을 가져옴.
			
			if(multi.getParameter("id") != null) {
				id = Integer.parseInt(multi.getParameter("id"));
			}//if
			
			if(multi.getParameter("page") != null) {
				page = Integer.parseInt(multi.getParameter("page"));
			}//if
			
			if(UpFile != null) {
				
				fileName=UpFile.getName(); //첨부한 파일명
				SimpleDateFormat formatterFolder = new SimpleDateFormat("yyyyMM"); //년월만 저장
				todayFolder = formatterFolder.format(new java.util.Date()); 
				
				File file = new File(filePath); //기본 경로 폴더 생성하기
				if(!file.exists()) { //file 폴더가 없다면
					file.mkdirs(); //자동 생성
				}else {
					fileyyyyMMFolder = new File(filePath + File.separator + todayFolder + File.separator);
					if(!fileyyyyMMFolder.exists()) { //년월폴더가 없다면
						fileyyyyMMFolder.mkdirs();
					}//if
				}//if else
				
				String realFileNm = "";
				SimpleDateFormat formatter = new SimpleDateFormat("yyyyMMddHHmmss");
				String today = formatter.format(new java.util.Date());
				
				//해당 폴더에 생성될 이미지 파일 명
				realFileNm = today + UUID.randomUUID().toString() + fileName.substring(fileName.lastIndexOf("."));
				UpFile.renameTo(new File(fileyyyyMMFolder + "/" + realFileNm));
				
				/////////// DB에 파일 쓰기 //////////////////
				sFileInfo += "/moving.com/resources/pohoto_upload/"+todayFolder+File.separator+realFileNm;
				
				ba.setThumbnailImage(sFileInfo);
				
				ba.setCategory(multi.getParameter("category"));
				ba.setEmail(multi.getParameter("email"));
				ba.setBirthDate(multi.getParameter("birthDate"));
				
				String height_string=multi.getParameter("height");
				if(height_string == "" || height_string.equals("")
						|| height_string == null) {
					int height = Integer.parseInt(height_string+0); 
					ba.setHeight(height);
				}else {
					int height = Integer.parseInt(height_string);
					ba.setHeight(height);
				}//if else
				
				if(multi.getParameter("etctext") == "" 
				|| multi.getParameter("etctext") == null ||
				multi.getParameter("etctext").equals("")) {
					ba.setEtctext("");
				}else {
					ba.setEtctext(multi.getParameter("etctext"));
				}
				
				ba.setSex(multi.getParameter("sex"));
				ba.setWebsiteUrl(multi.getParameter("websiteUrl"));
				ba.setContent(multi.getParameter("content"));
				ba.setId(id);
				
				this.boardActorsService.editBoardActors(ba); //새로 등록한 썸네일이 있을 경우
				
			}else {//새로 등록한 썸네일이 없을 경우
				
				System.out.println(page+"+"+id);
				
				ba.setCategory(multi.getParameter("category"));
				ba.setEmail(multi.getParameter("email"));
				ba.setBirthDate(multi.getParameter("birthDate"));
				
				String height_string=multi.getParameter("height");
				if(height_string == "" || height_string.equals("")||
					height_string == null) {
					int height = Integer.parseInt(height_string+0); 
					ba.setHeight(height);
				}else {
					int height = Integer.parseInt(height_string);
					ba.setHeight(height);
				}//if else
				
				if(multi.getParameter("etctext") == "" 
				|| multi.getParameter("etctext") == null ||
				multi.getParameter("etctext").equals("")) {
					ba.setEtctext("");
				}else {
					ba.setEtctext(multi.getParameter("etctext"));
				}
				
				ba.setSex(multi.getParameter("sex"));
				ba.setWebsiteUrl(multi.getParameter("websiteUrl"));
				ba.setContent(multi.getParameter("content"));
				ba.setId(id);

				System.out.println(ba.getContent());
				System.out.println(ba.getSex());
				System.out.println(ba.getWebsiteUrl());
				System.out.println(ba.getEtctext());
				System.out.println(ba.getCategory());
				System.out.println(ba.getId());
				
				this.boardActorsService.editBoardActors2(ba);
				
			}//if else
			
			rttr.addFlashAttribute("msg","BOARD/ACTORS_EDIT");
			
			return "redirect:/board/actors_cont?id="+id+"&page="+page;
	
		}else {
			out.println("<script>");
			out.println("alert('로그인을 해주세요!');");
			out.println("location='/moving.com/member/login';");
			out.println("</script>");
		}//if else
		
		return null;
		
	}//board_actors_edit_ok()
	
	//게시글 삭제
	@RequestMapping("/board/actors_del")
	public String board_actors_del(int id,int page,
			HttpServletResponse response,
			HttpServletRequest request,
			HttpSession session,
			RedirectAttributes rttr) throws Exception{
	
		response.setContentType("text/html;charset=UTF-8");
		PrintWriter out=response.getWriter();
		session=request.getSession();
		
		if(session.getAttribute("id") != null) { //세션에 값이 있을 경우
		
			ProfilePostVO ba=this.boardActorsService.getCont2(id);
			
			int m_userid = (int) session.getAttribute("id");
			
			if(m_userid == ba.getUserId()) { //m_user의 id와 normal_post의
				//user_id가 일치한다면
				
				this.boardActorsService.delBoardActors(id);
			
				rttr.addFlashAttribute("msg","BOARD/ACTORS_DEL");
				
				return "redirect:/board/actors?page="+page;
				
			}else { /*본인 게시글이 아닐 경우*/
				rttr.addFlashAttribute("msg","BOARD/ACTORS_CON_X");
				return "redirect:/board/actors_cont?id="+id+"&page="+page;
			}//if else
	
		}else { /*세션에 값이 없을 경우*/
			out.println("<script>");
			out.println("alert('로그인을 해주세요!');");
			out.println("location='/moving.com/member/login';");
			out.println("</script>");
		}//if else
		
		return null;
		
	}//board_actors_del()
	
	
	
	
	
	
	
	
	
	
	
	
	
}//BoardActorsController class/
