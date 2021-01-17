package net.board.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import net.board.db.*;

public class DominoAdminAllianceDeleteAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		ActionForward forward = new ActionForward();
		AllianceDAO alliancedao = new AllianceDAO();
		boolean check = false;
		int list_num = Integer.parseInt(request.getParameter("list_num"));
		
		check = alliancedao.allianceDelete(list_num);
		
		if(check == false) {
			System.out.println("이벤트 삭제 실패");
			return null;
		}
		
		forward.setRedirect(true);
		forward.setPath("AdminAllianceList.bo");
		return forward;
	}

}
