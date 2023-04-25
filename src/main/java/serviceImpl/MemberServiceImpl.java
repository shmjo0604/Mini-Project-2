package serviceImpl;

import config.MyBatisContext;
import dto.Member;
import mapper.MemberMapper;
import service.MemberService;

public class MemberServiceImpl implements MemberService {

	@Override
	public int insertMemberOne(Member obj) {
		try {
			return MyBatisContext.getSqlSession().getMapper(MemberMapper.class).insertMemberOne(obj);
		} catch (Exception e) {
			e.printStackTrace();
			return 0;
		}
	}

	@Override
	public int selectMemberIDCheck(String id) {
		try {
			return MyBatisContext.getSqlSession().getMapper(MemberMapper.class).selectMemberIDCheck(id);
		} catch (Exception e) {
			e.printStackTrace();
			return 0;

		}
	}

	@Override
	public Member selectMemberLogin(Member obj) {
		try {
			return MyBatisContext.getSqlSession().getMapper(MemberMapper.class).selectMemberLogin(obj);
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		}
	}

	@Override
	public Member updateMemberOne(Member obj) {
		try {
			return MyBatisContext.getSqlSession().getMapper(MemberMapper.class).updateMemberOne(obj);
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		}
	}

	@Override
	public Member updateMemberPassword(Member obj) {
		try {
			return MyBatisContext.getSqlSession().getMapper(MemberMapper.class).updateMemberPassword(obj);

		} catch (Exception e) {
			e.printStackTrace();
			return null;
		}
	}

	@Override
	public int deleteMemberOne(Member obj) {
		try {
			return MyBatisContext.getSqlSession().getMapper(MemberMapper.class).deleteMemberOne(obj);

		} catch (Exception e) {
			e.printStackTrace();
			return 0;
		}
	}

}
