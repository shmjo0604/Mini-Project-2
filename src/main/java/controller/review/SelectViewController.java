package controller.review;

import java.io.IOException;

import config.MyBatisContext;
import dto.ClassSessionView;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import mapper.ReviewMapper;

@WebServlet(urlPatterns = { "/review/selectview.do" })
public class SelectViewController extends HttpServlet {
	private static final long serialVersionUID = 1L;



	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		long no = 18;
		
		System.out.println(no);
		
		ClassSessionView obj = new ClassSessionView();
		obj.setNo(no);
		System.out.println(obj.toString());
		
		ReviewMapper mapper = MyBatisContext.getSqlSession().getMapper(ReviewMapper.class);
//		List<Review> list = mapper.selectReviewAll();
		
		ClassSessionView view = mapper.ClassSessionViewSelectOne(obj);
		
//		request.setAttribute("list", list);
		request.setAttribute("view", view);
		
		request.getRequestDispatcher("/WEB-INF/review/selectview.jsp").forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		

	}
}
