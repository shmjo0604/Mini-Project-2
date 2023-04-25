package service;

import dto.Classproduct;

public interface ClassInsertService {
	// 1. 클래스 등록
	public int insertClassOne(Classproduct obj) throws Exception;

	// 2. 클래스 1개 조회
	public Classproduct selectClassOne(long classcode) throws Exception;

	// 3. 클래스 취소
	public int deleteClassOne(long classcode) throws Exception;

	// 4. 클래스 수정
	public int updateClassOne(Classproduct obj) throws Exception;
}
