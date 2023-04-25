package controller.classproduct;

import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import config.MyBatisContext;
import dto.Activitycate;
import dto.Citycate;
import dto.ClassSessionView;
import dto.Classproduct;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import mapper.ClassMapper;

@WebServlet("/test.do")
public class TestController extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.getRequestDispatcher("/WEB-INF/test.jsp").forward(request, response);
	}

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		super.doPost(request, response);
	}
	
	

}
