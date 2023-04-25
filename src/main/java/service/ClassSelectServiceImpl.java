package service;

import java.util.List;

import config.MyBatisContext;
import dto.Activitycate;
import dto.Citycate;
import mapper.ClassSelectMapper;

public class ClassSelectServiceImpl implements ClassSelectService {

	ClassSelectMapper cMapper = MyBatisContext.getSqlSession().getMapper(ClassSelectMapper.class);
	
	// 1. 지역 상위 카테고리 전달
	
	@Override
	public List<Citycate> classCitycateList() {
		return cMapper.selectCitycateList();
	}

	// 2. 클래스 상위 카테고리 전달
	
	@Override
	public List<Activitycate> classActivitycateList() {
		return cMapper.selectActivitycateList();
	}

}
