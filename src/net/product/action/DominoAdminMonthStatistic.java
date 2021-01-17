package net.product.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import net.product.db.*;
import java.util.*;

public class DominoAdminMonthStatistic implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		request.setCharacterEncoding("UTF-8");
		ActionForward forward = new ActionForward();
		StatisticBean bean = new StatisticBean();
		ProductDAO productdao = new ProductDAO();
		
		System.out.println("DominoAdminMonthStatistic 액션커맨드");
		List statisticlist = productdao.getMonthStatistic();
		List rank = productdao.getRank();

		request.setAttribute("statisticlist", statisticlist);
		request.setAttribute("rank", rank);
		
		forward.setRedirect(false);
		forward.setPath("adminMonthStatistic.jsp");
		return forward;
	}

}
