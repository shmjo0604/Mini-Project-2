package service;

import dto.Member;

public interface MemberService {

	public int insertMemberOne(Member obj); 
	
	public int selectMemberIDCheck(String id);
	
	public Member selectMemberLogin(Member obj);
	
	public Member updateMemberOne(Member obj);
	
	public Member updateMemberPassword(Member obj);
	
	public int deleteMemberOne(Member obj);
}
