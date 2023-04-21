package mapper;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import dto.ApplyStatus;

@Mapper
public interface ApplyStatusMapper {

	// insert, update, delete => int
	// select => list, object int ...다양함.
	
	// 신청 상태 뭘 들고올지 
	@Insert({
		" INSERT INTO APPLYTATUS (applyno,chk,regdate) ",
		" value(#{obj.applyno},#{obj.chk},#{obj.regdate})"
	})
	public int insertApplyStatus(@Param("obj")ApplyStatus obj);
	
	
	// 신청상태에서 보기위해 뷰를 만들어서 보기 위한 것
//	@Select({
//		"select av.* FROM Applytatusview av WHERE applyno=#{no}"
//	})
//	public List<Applytatusview> Applytatusview(@Param("no")String no);
//	

}
