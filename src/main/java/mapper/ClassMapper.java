package mapper;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

@Mapper
public interface ClassMapper {

	@Insert({
		" INSERT INTO classprodouct( cnt, itemno, customerid )  ",
		" VALUES ( #{obj.cnt}, #{obj.itemno}, #{obj.customerid} )"
	})public int insertClassOne(@Param("obj") Classproduct obj );
}
