package controller;

import java.io.IOException;
import java.util.List;

import config.MyBatisContext;
import dto.Activitycate;
import dto.Citycate;
import dto.Classimage;
import dto.Classproduct;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import mapper.ClassMapper;
import service.ClassInsertService;
import service.ClassInsertServiceImpl;

@WebServlet(urlPatterns = { "/class/insert.do" })
public class ClassInsertController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	private ClassInsertService mService = new ClassInsertServiceImpl();

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		ClassMapper mapper = MyBatisContext.getSqlSession().getMapper(ClassMapper.class); 
		List<Citycate> list = mapper.selectCitycateList(); 
		List<Activitycate> list1 = mapper.selectActivitycateList();
  
		request.setAttribute("list" , list); request.setAttribute("list1", list1); 
		
		request.getRequestDispatcher("/WEB-INF/class/menumain.jsp").forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		Classproduct obj = new Classproduct();
		obj.setTitle("title");
		obj.setPostcode(request.getParameter("postcode"));
		obj.setAddress1(request.getParameter("address1"));
		obj.setAddress2(request.getParameter("address2"));
		obj.setAddress3(request.getParameter("address3"));
		obj.setLatitude("latitude");
		obj.setLongitude("longitude");
		obj.setPrice(1000);
		obj.setIntro("intro");
		obj.setCurriculum("curiculum");
		obj.setLocalcode(Long.parseLong(request.getParameter("localcode")));
		obj.setActcode(Long.parseLong(request.getParameter("actcode")));
		obj.setMemberid("test2");
		
		System.out.println(obj.toString());
		/*
		
		int ret =MyBatisContext.getSqlSession().getMapper(ClassMapper.class).insertClassOne(obj);
		if(ret==1) {
			
			return;
		}
		*/
		/*Classimage img = new Classimage();
		img.setFilename("filename");*/
		
		//mService.insertClassOne()
		
		request.getRequestDispatcher("/WEB-INF/member/alert.jsp").forward(request, response);
	}

}
