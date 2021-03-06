package com.moving.controller;

import java.io.File;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.moving.domain.AttachedFileVO;

@Controller
public class AttachedFileController {
	
	//단일파일업로드
	@RequestMapping("/photoUpload")
	public String photoUpload(HttpServletRequest request,
			AttachedFileVO at) {
		
		 String callback = at.getCallback();
		    String callback_func = at.getCallback_func();
		    String file_result = "";
		
		try {
			  if(at.getFiledata() != null && at.getFiledata().getOriginalFilename() != null && !at.getFiledata().getOriginalFilename().equals("")){
		            //파일이 존재하면
				  
		            String original_name = at.getFiledata().getOriginalFilename();
		            String ext = original_name.substring(original_name.lastIndexOf(".")+1);
		            
		            //파일 기본경로
		            String defaultPath = request.getSession().getServletContext().getRealPath("/");
		           
				System.out.println(defaultPath+"여긴 적용 됨");
				
				
				 //파일 기본경로 _ 상세경로
	            String path = defaultPath + "resource" + File.separator +
	            		"photo_upload" + File.separator;             
	            File file = new File(path);
	            System.out.println("path:"+path);
	            //디렉토리 존재하지 않을경우 디렉토리 생성
	            if(!file.exists()) {
	                file.mkdirs();
	            }
	            //서버에 업로드 할 파일명(한글문제로 인해 원본파일은 올리지 않는것이 좋음)
	            String realname = UUID.randomUUID().toString() + "." + ext;
	        ///////////////// 서버에 파일쓰기 /////////////////
	            at.getFiledata().transferTo(new File(path+realname));
	            file_result += "&bNewLine=true&sFileName="+original_name+
	            		"&sFileURL=/resource/photo_upload/"+realname;

			}else {
				file_result += "&errstr=error";
				System.out.println("응~ else야");
			}
			
		}catch(Exception e) {
			e.printStackTrace();
			System.out.println("응~ catch문에서 걸렸어");
		}//try~catch문
		System.out.println("리턴 전");
		System.out.println("callback:" + callback);	
		System.out.println("callback_func:" + callback_func);
		System.out.println("file_result:" + file_result);
		
		return "redirect:" + callback + "?callback_func=" + callback_func+file_result;

	}//photoUpload()  //단일 파일 업로드	
	
	
	//다중 파일 업로드
	@RequestMapping("/multiplePhotoUpload")
	public void multiplePhotoUpload(HttpServletRequest request, HttpServletResponse response){
	    try {
	         //파일정보
	         String sFileInfo = "";
	         //파일명을 받는다 - 일반 원본파일명
	         String filename = request.getHeader("file-name");
	         //파일 확장자
	         String filename_ext = filename.substring(filename.lastIndexOf(".")+1);
	         //확장자를소문자로 변경
	         filename_ext = filename_ext.toLowerCase();
	         //파일 기본경로
	         String dftFilePath = request.getRealPath("/");
	        		 //request.getSession().getServletContext().getRealPath("/");
	         
	         //파일 기본경로 _ 상세경로
	         
	         SimpleDateFormat formatterFoler = new SimpleDateFormat("yyyyMM");
	         String todayFolder= formatterFoler.format(new java.util.Date());
	         //	System.out.println(todayFolder); 201912 이런식으로 나옴
	         
	         String filePath = dftFilePath + "resources" + File.separator + "photo_upload" + File.separator;
	         //File.separator 는 \ 인듯함.
	         
	         File file = new File(filePath);//기본 경로 폴더 생성
	         if(!file.exists()) {//file 폴더가 없다면
	            file.mkdirs();
	            
	         }else { // 폴더가 있다면
		         File fileyyyyMMFolder = new File(filePath + todayFolder + File.separator);
		         if(!fileyyyyMMFolder.exists()) {// 년월 폴더가 없다면
		        	 fileyyyyMMFolder.mkdirs();
		         }
	         }
	         
	         
	         String realFileNm = "";
	         SimpleDateFormat formatter = new SimpleDateFormat("yyyyMMddHHmmss");
	         String today= formatter.format(new java.util.Date());
	         //	System.out.println(today); 20191212171734 이런식으로 나옴
	         String todayTest =formatterFoler.format(new java.util.Date());//yyyyMM만 출력(폴더명 비교용-의미없음 지워도됨
	         
	         realFileNm = today+UUID.randomUUID().toString() + filename.substring(filename.lastIndexOf("."));
	         
		     
		     String rlFileNm = filePath  + todayFolder + File.separator + realFileNm;
		   
	         ///////////////// 서버에 파일쓰기 /////////////////
	         InputStream is = request.getInputStream();
	         OutputStream os=new FileOutputStream(rlFileNm);
	         int numRead;
	         byte b[] = new byte[Integer.parseInt(request.getHeader("file-size"))];
	         while((numRead = is.read(b,0,b.length)) != -1){
	            os.write(b,0,numRead);
	         }
	         if(is != null) {
	            is.close();
	         }
	         os.flush();
	         os.close();
	         ///////////////// 서버에 파일쓰기 /////////////////
	         // 정보 출력
	         sFileInfo += "&bNewLine=true";
	         // img 태그의 title 속성을 원본파일명으로 적용시켜주기 위함
	         sFileInfo += "&sFileName="+ filename;
	         sFileInfo += "&sFileURL="+"/moving.com/resources/photo_upload/"+
	         todayFolder + File.separator + realFileNm;
	         PrintWriter print = response.getWriter();
	         print.print(sFileInfo);
	         print.flush();
	         print.close();
	         
	    } catch (Exception e) {
	        e.printStackTrace();
	    }
	}

	
}//AttachedFileController class
