package controller;

import java.io.IOException;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Map;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import service.SessionService;
import service.SessionServiceImpl;

@WebServlet(urlPatterns = {"/session/update.do"})
public class SessionUpdateController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private SessionService sService = new SessionServiceImpl();

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.getRequestDispatcher("/WEB-INF/session/session_update.jsp").forward(request, response);
	}

}
