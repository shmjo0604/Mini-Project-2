package service;

import java.util.List;

import dto.Session;

public class SessionServiceImpl implements SessionService{
	
	/* (1) 세션 등록*/
	@Override
	public int insertSessionOne(Session obj) throws Exception {
		return mapper.insertSessionOne(obj);
	}
	
	/* (1)-1 클래스 가격 조회 */
	@Override
	public long selectPriceOne(long classcode) throws Exception {
		return mapper.selectPriceOne(classcode);
	}
	
	/* (2) 세션 전체 조회 */
	@Override
	public List<Session> selectSessionList(long classcode) throws Exception {
		return mapper.selectSessionList(classcode);
	}
	
	/* (3) 세션 수정 */
	@Override
	public int updateSessionOne(long no) throws Exception {
		return mapper.updateSessionOne(no);
	}
	
	/* (4) 세션 하나 삭제 */
	@Override
	public int deleteSessionOne(long no) throws Exception {
		return mapper.deleteSessionAll(no);
	}
	
	/* (5) 세션 전체 삭제 */
	@Override
	public int deleteSessionAll(long classcode) throws Exception {
		return mapper.deleteSessionAll(classcode);
	}

	



	

	

}
