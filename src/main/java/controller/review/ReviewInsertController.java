package controller.review;

import java.io.IOException;

import config.MyBatisContext;
import dto.Review;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import mapper.ReviewMapper;

@WebServlet(urlPatterns = { "/project/reviewinsert.do" })
public class ReviewInsertController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		request.getRequestDispatcher("/WEB-INF/insertreview.jsp").forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String title = request.getParameter("title");
		String content = request.getParameter("content");
		Long no = Long.parseLong(request.getParameter("no"));
		int star = Integer.parseInt(request.getParameter("reviewStar")) ;

		Review obj = new Review();
		obj.setNo(no);
		obj.setTitle(title);
		obj.setContent(content);
		obj.setRating(star);

		ReviewMapper mapper = MyBatisContext.getSqlSession().getMapper(ReviewMapper.class);
		int ret = mapper.insertReviewOne(obj);

		if (ret == 1) {	
			response.sendRedirect("reviewselect.do");
			return ;
		}
		else {
			response.sendRedirect("reviewinsert.do");
		}

	}
}
