package net.board.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import net.board.db.EventDAO;

public class DominoAdminEventDeleteAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		ActionForward forward = new ActionForward();
		EventDAO eventdao = new EventDAO();
		boolean check = false;
		int list_num = Integer.parseInt(request.getParameter("list_num"));
		
		check = eventdao.eventDelete(list_num);
		
		if(check == false) {
			System.out.println("뉴스 삭제 실패");
			return null;
		}
		
		forward.setRedirect(true);
		forward.setPath("AdminEventList.bo");
		return forward;
	}

}
