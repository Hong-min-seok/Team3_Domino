package net.board.action;

import java.util.Enumeration;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

import net.board.db.*;

public class DominoAdminIssueWriteAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		ActionForward forward = new ActionForward();
		IssueBean issuebean = new IssueBean();
		IssueDAO issuedao = new IssueDAO();
		
		 String uploadPath=request.getRealPath("issueupload");
		 System.out.println("DominoAdminIssueWriteAction ����");
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

		      title=multi.getParameter("issue_title");
		      bulletin=multi.getParameter("issue_bulletin");
		      
		      Enumeration files=multi.getFileNames();
		      
		      String file =(String)files.nextElement();
		      filename=multi.getFilesystemName(file);

		      		      
		   }catch(Exception e){
			   System.out.println("���� �޾ƿ��� ����,,");
		      e.printStackTrace();
		      return null;
		   }
		   
		   issuebean.setTitle(title);
		   issuebean.setBulletin(bulletin);
		   issuebean.setAdd_file(filename);
		   
		   check = issuedao.issueWrite(issuebean);
		   
		   if(check == true) {
			   System.out.println("issuedao�� ���� �����ϱ� ����");
		   } else {
			   System.out.println("issuedao���� issueWrite ����");
		   }
		   
		   
		   forward.setRedirect(true);
		   forward.setPath("AdminIssueList.bo");
		   return forward;
		
	}

}
