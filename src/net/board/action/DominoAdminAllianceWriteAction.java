package net.board.action;

import java.util.Enumeration;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

import net.board.db.*;

public class DominoAdminAllianceWriteAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {

		ActionForward forward = new ActionForward();
		AllianceBean alliancebean = new AllianceBean();
		AllianceDAO alliancedao = new AllianceDAO();
		
		 String uploadPath=request.getRealPath("eventupload");
		 System.out.println("DominoAdminAllianceWriteAction 들어옴");
		 System.out.println("업로드폴더 경로 : " + uploadPath);
		 
		 
		   int size = 10*1024*1024;
		   
		   String title="";
		   String bulletin="";
		   String filename = "";
		   boolean check = false;
		   
		   
		   try{
		      MultipartRequest multi=new MultipartRequest(request,
		                     uploadPath,
		                     size, 
		                     "UTF-8",
		            new DefaultFileRenamePolicy());

		      title=multi.getParameter("alliance_title");
		      bulletin=multi.getParameter("alliance_bulletin");
		      
		      Enumeration files=multi.getFileNames();
		      
		      String file =(String)files.nextElement();
		      filename=multi.getFilesystemName(file);

		      		      
		   }catch(Exception e){
			   System.out.println("파일 받아오기 실패,,");
		      e.printStackTrace();
		      return null;
		   }
		   
		   alliancebean.setTitle(title);
		   alliancebean.setBulletin(bulletin);
		   alliancebean.setAdd_file(filename);
		   
		   check = alliancedao.allianceWrite(alliancebean);
		   
		   if(check == true) {
			   System.out.println("alliancedao로 들어가서 저장하기 성공");
		   } else {
			   System.out.println("alliancedao에서 allianceWrite 실패");
		   }
		   
		   
		   forward.setRedirect(true);
		   forward.setPath("AdminAllianceList.bo");
		   return forward;
		
	}

}
