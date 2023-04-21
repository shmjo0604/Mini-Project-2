package mapper;

import java.util.List;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;

import dto.Apply;

@Mapper
public interface ApplyMapper {
	
	// insert, update, delete => int
	// select => list, object int ...다양함.
	
	@Insert({
		" INSERT INTO Apply (person, memberid, sessionno)",
		" VALUES(#{obj.person}, #{obj.memberid}, #{obj.sessionno}"
	})
	public int insertApply(@Param("obj") Apply obj);
	
	@Select({
		"Select FROM Apply WHERE memberid=#{id} "
	})
	public List<Apply> selectApplyList(@Param("id") String id);

}
