package net.board.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import net.board.db.IssueBean;
import net.board.db.IssueDAO;

public class DominoUserIssueDetail implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
	System.out.println("DominoUserIssueDetail µé¾î¿È");
		
		ActionForward forward= new ActionForward();
		IssueDAO issuedao = new IssueDAO();
		IssueBean issuebean = new IssueBean();
		
		int list_num = Integer.parseInt(request.getParameter("num"));
		issuebean = issuedao.getIssueDetail(list_num);
		
		request.setAttribute("issuebean", issuebean);
		
		forward.setRedirect(false);
		forward.setPath("userIssueDetail.jsp");
		return forward;
		
	}

}
