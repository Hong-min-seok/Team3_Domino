package net.board.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import net.board.db.*;

public class DominoAdminIssueDeleteAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		ActionForward forward = new ActionForward();
		IssueDAO issuedao = new IssueDAO();
		boolean check = false;
		int list_num = Integer.parseInt(request.getParameter("list_num"));
		
		check = issuedao.issueDelete(list_num);
		
		if(check == false) {
			System.out.println("뉴스 삭제 실패");
			return null;
		}
		
		forward.setRedirect(true);
		forward.setPath("AdminIssueList.bo");
		return forward;
	}

}
