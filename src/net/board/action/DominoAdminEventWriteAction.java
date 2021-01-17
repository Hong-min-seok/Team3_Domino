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
		 System.out.println("DominoAdminEventWriteAction ����");
		 System.out.println("���ε����� ��� : " + uploadPath);
		 
		 
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
			   System.out.println("���� �޾ƿ��� ����,,");
		      e.printStackTrace();
		      return null;
		   }
		   
		   eventbean.setTitle(title);
		   eventbean.setBulletin(bulletin);
		   eventbean.setAdd_file(filename);
		   
		   check = eventdao.eventWrite(eventbean);
		   
		   if(check == true) {
			   System.out.println("eventdao�� ���� �����ϱ� ����");
		   } else {
			   System.out.println("eventdao���� eventWrite ����");
		   }
		   
		   
		   forward.setRedirect(true);
		   forward.setPath("AdminEventList.bo");
		   return forward;
		
	}

}
