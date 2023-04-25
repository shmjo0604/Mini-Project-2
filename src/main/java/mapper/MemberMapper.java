package mapper;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import dto.Member;

public interface MemberMapper {
	//회원가입
	@Insert({
		" INSERT INTO MEMBER (id, password, name, email,phone, gender,birth)" ,
		 " VALUES(#{obj.id}, #{obj.password},#{obj.name},#{obj.email},#{obj.phone},#{obj.gender},#{obj.birth}) "
	})public int insertMemberOne(@Param("obj")Member obj);
	//중복아이디확인
	@Select({
		" select count(*) cnt from member m where id = #{id} "
	})public int selectMemberIDCheck(@Param("id")String id);
	
	//로그인
	@Select({
		" select * from member where id =#{obj.id} and password=#{obj.password} "		
	
	})public Member selectMemberLogin(@Param("obj")Member obj); 
	//
	
	//아이디찾기
	@Select({
		"SELECT M.ID FROM MEMBER M WHERE NAME =#{OBJ.NAME} AND PHONE = #{OBJ.PHONE} AND EMAIL = #{OBJ.EMAIL} "
	})public Member selectMemberId(@Param("id")Member obj);
	//회원정보수정
	@Update({
		"UPDATE MEMBER SET NAME = #{OBJ.NAME},EMAIL = #{OBJ.EMAIL},PHONE = #{OBJ.PHONE} WHERE ID = #{OBJ.ID} AND PASSWORD = #{OBJ.PASSWORD}" 
	})public Member updateMemberOne(@Param("obj")Member obj );
	//비밀번호변경
	@Update({
		"UPDATE MEMBER SET PASSWORD = #{OBJ.NEWPASSWORD} WHERE PASSWORD =#{OBJ.PASSWORD} "
	})public Member updateMemberPassword(@Param("obj") Member obj);
	//로그아웃
	
	
	
	//회원탈퇴 
	@Delete({
		"DELETE FROM MEMBER WHERE ID =#{OBJ.ID} AND PASSWORD =#{OBJ.PASSWORD} "
	})public int deleteMemberOne(@Param("obj")Member obj);
	

}
