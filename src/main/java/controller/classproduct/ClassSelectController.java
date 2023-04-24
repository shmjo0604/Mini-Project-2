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

@WebServlet("/class/select.do")
public class ClassSelectController extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		if(request.getParameter("search") == null) {
			response.sendRedirect("select.do?search=list");
			return;
		}
		
		ClassMapper cMapper = MyBatisContext.getSqlSession().getMapper(ClassMapper.class);
		
		List<Activitycate> list1 = cMapper.selectActivitycateList();
		List<Citycate> list2 = cMapper.selectCitycateList();
		
		// 근데 이거 getParameter로 값 받아올 때, null인지 0인지 알 수가 없네.
		
		Map<String, Object> map = new HashMap<>();
		map.put("citycode", 0);
		map.put("localcode", 0);
		map.put("activitycode", 0);
		map.put("actcode", 0);
		map.put("classdate", null);
		map.put("classlevel", 0);
		map.put("minprice", 0);
		map.put("maxprice", 0);
		map.put("keyword", null);
		
		List<ClassSessionView> list3  = cMapper.selectClassSessionViewList(map);
		System.out.println(list3.toString());
		
		//List<ClassSessionView> list4 = cMapper.selectClassProductList();
		//System.out.println(list4.toString());
		
		request.setAttribute("list1", list1);
		request.setAttribute("list2", list2);
		request.setAttribute("list3", list3);
		
		request.getRequestDispatcher("/WEB-INF/Class/select.jsp").forward(request, response);
	}

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		super.doPost(request, response);
	}
	
	

}
