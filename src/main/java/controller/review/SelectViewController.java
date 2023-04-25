package controller.review;

import java.io.IOException;

import config.MyBatisContext;
import dto.ClassSessionView;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import mapper.ClassSessionViewMapper;

@WebServlet(urlPatterns = { "/review/selectview.do" })
public class SelectViewController extends HttpServlet {
	private static final long serialVersionUID = 1L;



	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
	
//		
//		System.out.println(no);
//		
		ClassSessionView obj = new ClassSessionView();
		obj.setNo(0);
		System.out.println(obj.toString());
//		
//		ClassSessionViewMapper mapper = MyBatisContext.getSqlSession().getMapper(ClassSessionViewMapper.class);
//		ClassSessionView view = mapper.ClassSessionViewSelectOne(obj);
		
		ClassSessionViewMapper mapper = MyBatisContext.getSqlSession().getMapper(ClassSessionViewMapper.class);
		ClassSessionView int1 = mapper.aa();
				
				
		request.setAttribute("view", int1);
		
		request.getRequestDispatcher("/WEB-INF/review/selectview.jsp").forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		

	}
}
