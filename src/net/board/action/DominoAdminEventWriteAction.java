package net.board.action;

import java.util.Enumeration;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

import net.board.db.EventBean;
import net.board.db.EventDAO;

public class DominoAdminEventWriteAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {

		ActionForward forward = new ActionForward();
		EventBean eventbean = new EventBean();
		EventDAO eventdao = new EventDAO();
		
		 String uploadPath=request.getRealPath("eventupload");
		 System.out.println("DominoAdminEventWriteAction 들어옴");
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

		      title=multi.getParameter("event_title");
		      bulletin=multi.getParameter("event_bulletin");
		      
		      Enumeration files=multi.getFileNames();
		      
		      String file =(String)files.nextElement();
		      filename=multi.getFilesystemName(file);

		      		      
		   }catch(Exception e){
			   System.out.println("파일 받아오기 실패,,");
		      e.printStackTrace();
		      return null;
		   }
		   
		   eventbean.setTitle(title);
		   eventbean.setBulletin(bulletin);
		   eventbean.setAdd_file(filename);
		   
		   check = eventdao.eventWrite(eventbean);
		   
		   if(check == true) {
			   System.out.println("eventdao로 들어가서 저장하기 성공");
		   } else {
			   System.out.println("eventdao에서 eventWrite 실패");
		   }
		   
		   
		   forward.setRedirect(true);
		   forward.setPath("AdminEventList.bo");
		   return forward;
		
	}

}
