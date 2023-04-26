package controller.review;

import java.io.IOException;
import java.util.List;

import config.MyBatisContext;
import dto.ClassSessionView;
import dto.Classproduct;
import dto.Review;
import dto.Session;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import mapper.ReviewMapper;

@WebServlet(urlPatterns = { "/class/product.do" })
public class ClassProductController extends HttpServlet {
	private static final long serialVersionUID = 1L;



	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		long classcode = 118;
//		Long sessionno = Long.parseLong(request.getParameter("sessionno"));
//		System.out.println(sessionno);
			
		
		ReviewMapper mapper = MyBatisContext.getSqlSession().getMapper(ReviewMapper.class);
		
		List<ClassSessionView> list1 = mapper.ClassSessionViewSelect(classcode);
		List<Review> list = mapper.selectReviewAll();
		Classproduct product = mapper.SelectClassproduct(classcode);
//		Session session = mapper.SelectSession(sessionno);
		
//		System.out.println(session.toString());

		
		Double.parseDouble(product.getLatitude());
		Double.parseDouble(product.getLongitude());	
		
//		request.setAttribute("obj1", session);
		request.setAttribute("obj", product);
		request.setAttribute("list1", list1);
		request.setAttribute("list", list);		
		request.getRequestDispatcher("/WEB-INF/class/product.jsp").forward(request, response);
		
//		ClassSessionView obj = new ClassSessionView();
//		for(ClassSessionView obj1:list1) {
//			obj.setClasscode(obj1.getClasscode());
//			obj.setTitle(obj1.getTitle());
//			obj.setPostcode(obj1.getPostcode());
//			obj.setAddress1(obj1.getAddress1());
//			obj.setAddress2(obj1.getAddress2());
//			obj.setAddress3(obj1.getAddress3());
//			obj.setLatitude(obj1.getLatitude());
//			obj.setLongitude(obj1.getLongitude());
//			obj.setPrice(obj1.getPrice());
//			obj.setIntro(obj1.getIntro());
//			obj.setCurriculum(obj1.getCurriculum());
//			obj.setInstructor(obj1.getInstructor());
//			obj.setHit(obj1.getHit());
//			obj.setRegdate(obj1.getRegdate());
//			obj.setChk(obj1.getChk());
//			obj.setLocalcode(obj1.getLocalcode());
//			obj.setActcode(obj1.getActcode());
//			obj.setMemberid(obj1.getMemberid());
//			obj.setNo(obj1.getNo());
//			obj.setCnt(obj1.getCnt());
//			obj.setMinimum(obj1.getMinimum());
//			obj.setMaximum(obj1.getMaximum());
//			obj.setClassday(obj1.getClassday());
//			obj.setClassstart(obj1.getClassstart());
//			obj.setDiscount(obj1.getDiscount());
//			obj.setAddprice(obj1.getAddprice());
//			obj.setClasslevel(obj1.getClasslevel());
//			obj.setSeregdate(obj1.getSeregdate());
//			obj.setLocalcate(obj1.getLocalcate());
//			obj.setCitycode(obj1.getCitycode());
//			obj.setActdetailcate(obj1.getActdetailcate());
//			obj.setActivitycode(obj1.getActivitycode());
//			obj.setActcate(obj1.getActcate());
//			obj.setTotalprice(obj1.getTotalprice());
//		}	
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		
	}
}
