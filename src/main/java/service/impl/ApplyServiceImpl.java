package service.impl;

import config.MyBatisContext;
import dto.Apply;
import mapper.ApplyMapper;
import service.ApplyService;

public class ApplyServiceImpl implements ApplyService{

	@Override
	public int insertApply(Apply obj) {
		try {
			return MyBatisContext.getSqlSession().getMapper(ApplyMapper.class)
					.insertApply(obj);
		}
		catch (Exception e) {
			e.printStackTrace();
			return -1;
		}
	}

}
