package net.board.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import net.board.db.EventBean;
import net.board.db.EventDAO;

public class DominoAdminEventDetail implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
	System.out.println("DominoAdminEventDetail ����");
		
		ActionForward forward= new ActionForward();
		EventDAO eventdao = new EventDAO();
		EventBean eventbean = new EventBean();
		
		int list_num = Integer.parseInt(request.getParameter("list_num"));
		eventbean = eventdao.getEventDetail(list_num);
		
		request.setAttribute("eventbean", eventbean);
		
		forward.setRedirect(false);
		forward.setPath("adminEventDetail.jsp");
		return forward;
		
	}

}
