package mapper;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import dto.ApplyStatus;

@Mapper
public interface ApplyStatusMapper {

	// insert, update, delete => int
	// select => list, object int ...다양함.
	
	@Insert({
		" INSERT INTO APPLYTATUS (applyno,chk,regdate) ",
		" value(#{obj.applyno},#{obj.chk},#{obj.regdate})"
	})
	public int insertApplyStatus(@Param("obj")ApplyStatus obj);
	
//	@Select({
//		"select av.* FROM Applytatusview av WHERE applyno=#{no}"
//	})
//	public List<Applytatusview> Applytatusview(@Param("no")String no);
//	

}
