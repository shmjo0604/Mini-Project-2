package service;

import java.util.List;

import dto.Apply;

public interface ApplyService {
	
	
	public int insertApply(Apply obj);
	
	
	public List<Apply> selectApplyList(String id);
	

}
