package controller.review;

import java.io.IOException;
import java.util.List;

import config.MyBatisContext;
import dto.Review;
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
		
		ReviewMapper mapper = MyBatisContext.getSqlSession().getMapper(ReviewMapper.class);
		List<Review> list = mapper.selectReviewAll();
		
		request.setAttribute("list", list);
		
		request.getRequestDispatcher("/WEB-INF/review/selectview.jsp").forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		

	}
}
