package controller;

import java.io.IOException;

import dto.Session;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import service.SessionService;
import service.SessionServiceImpl;

@WebServlet(urlPatterns = {"/session.do"})
public class SessionController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private SessionService sService = new SessionServiceImpl();
       

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.getRequestDispatcher("/WEB-INF/session.jsp").forward(request, response);
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		int menu = Integer.parseInt(request.getParameter("menu"));
		
		if(menu == 1) { // 세션등록
			Session obj = new Session();
			obj.setMinimum(5);
			obj.setMaximum(10);
			obj.setClassdate("2023-04-21");
			obj.setClassday("월요일");
			obj.setClassstart("오전 10시");
			obj.setClassend("오후 2시");
			obj.setDiscount(10);
			obj.setAddprice(5000);
			obj.setClasslevel("입문자");
			obj.setClasscode(1); // 테스트
			
			
			try {
				int ret = sService.insertSessionOne(obj);
				if(ret == 1) {
					//response.sendRedirect("session.do?menu" + menu);
				}
			} 
			catch (Exception e) {
				e.printStackTrace();
			}
		}
		else if(menu == 2) {
			
		}
		
	}

}
