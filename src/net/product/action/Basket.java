package net.product.action;

import net.member.db.MemberBean;
import net.member.db.MemberDAO;
import net.product.db.ProductBean;
import net.product.db.ProductDAO;

import java.util.ArrayList;
import java.util.List;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class Basket implements Action{

	public ActionForward execute(HttpServletRequest request,HttpServletResponse response) throws Exception{

		System.out.println("listAction");
		// 인코딩
		request.setCharacterEncoding("UTF-8");
		// ActionForward, ProductDAO, ProductBean 객체 생성
		ActionForward forward = new ActionForward();
		ProductDAO productDAO = new ProductDAO();
		ProductBean productVO = new ProductBean();
	
		// 세션 호출 또는 생성
		HttpSession session = request.getSession();

		// 피자
		List pizzalist = (List)productDAO.getPizzaList();
		
		for(int i=0; i<pizzalist.size(); i++){
			ProductBean bean = (ProductBean)pizzalist.get(i);
			
			int code = bean.getPizza_code();
			String codeS = Integer.toString(code);
			String name = bean.getPizza_name();
			String temp = "pizzacode"+code;
			String image = bean.getPizza_image();
			
			if(request.getParameter(temp)!=null) {
				session.setAttribute("p"+codeS,code);
				session.setAttribute("p"+name,name);
				session.setAttribute("p"+temp,request.getParameter(temp));
				session.setAttribute("p"+image,image);
				
				session.setAttribute(codeS+"dough",request.getParameter("dough"));
				session.setAttribute(codeS+"size",request.getParameter("size"));
				System.out.println(name+" : "+request.getParameter(temp));
			}
		}
		
//		System.out.println(dough+"/"+size);
		
		// 토핑
		List toppinglist = (List)productDAO.getToppingList();
		
		for(int i=0; i<toppinglist.size(); i++){
			ProductBean bean = (ProductBean)toppinglist.get(i);
			
			int code = bean.getTopping_code();
			String codeS = Integer.toString(code);
			String name = bean.getTopping_name();
			String temp = "toppingcode"+code;
			
			if(request.getParameter(temp)!=null && !request.getParameter(temp).equals("0")) {
				session.setAttribute("t"+codeS,code);
				session.setAttribute("t"+name,name);
				session.setAttribute("t"+temp,request.getParameter(temp));
				System.out.println(name+" : "+request.getParameter(temp));
			}
		}
		
		// 사이드
		List sidelist = (List)productDAO.getSideList();
		
		for(int i=0; i<sidelist.size(); i++){
			ProductBean bean = (ProductBean)sidelist.get(i);
			
			int code = bean.getSide_code();
			String codeS = Integer.toString(code);
			String name = bean.getSide_name();
			String temp = "sidecode"+code;
			String image = bean.getSide_image();
			
			if(request.getParameter(temp)!=null && !request.getParameter(temp).equals("0")) {
				session.setAttribute("s"+codeS,code);
				session.setAttribute("s"+name,name);
				session.setAttribute("s"+temp,request.getParameter(temp));
				session.setAttribute("s"+image,image);
				System.out.println(name+" : "+request.getParameter(temp));
			}
		}
		
		// 음료/기타
		List otherlist = (List)productDAO.getOtherList();
		
		for(int i=0; i<otherlist.size(); i++){
			ProductBean bean = (ProductBean)otherlist.get(i);
			
			int code = bean.getOther_code();
			String codeS = Integer.toString(code);
			String name = bean.getOther_name();
			String temp = "othercode"+code;
			String image = bean.getOther_image();
			
			if(request.getParameter(temp)!=null && !request.getParameter(temp).equals("0")) {
				session.setAttribute("o"+codeS,code);
				session.setAttribute("o"+name,name);
				session.setAttribute("o"+temp,request.getParameter(temp));
				session.setAttribute("o"+image,image);
				System.out.println(name+" : "+request.getParameter(temp));
			}
		}
		
		List doughList = new ArrayList();
		List toppingList = new ArrayList();
		List sideList = new ArrayList();
		List otherList = new ArrayList();
		List pizzaList = new ArrayList(); 
		
		doughList = productDAO.getDoughList();
		toppingList = productDAO.getToppingList();
		sideList = productDAO.getSideList();
		otherList = productDAO.getOtherList();
		pizzaList = productDAO.getPizzaList();
		
		request.setAttribute("doughList", doughList);
		request.setAttribute("toppingList", toppingList);
		request.setAttribute("sideList", sideList);
		request.setAttribute("otherList", otherList);
		request.setAttribute("pizzaList", pizzaList);
		
		MemberDAO memberdao = new MemberDAO();
	    MemberBean bean = new MemberBean();
	      
	    bean = memberdao.getMemberDetail((String)session.getAttribute("loginId"));
	    request.setAttribute("memberDetail", bean);
		
	    
	    
	    
		// 전송 방식 = false : Forward 
		forward.setRedirect(false);
		// 접근 경로 지정
		forward.setPath("./basket.jsp");

		return forward;													
	}
}
