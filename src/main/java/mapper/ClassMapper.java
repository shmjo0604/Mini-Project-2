package mapper;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import dto.Classproduct;

@Mapper
public interface ClassMapper {

	// 1. 클래스 한개 등록
	@Insert({
		" INSERT INTO classprodouct( title, postcode, address1, address2, address3, price, intro, curriculum, localcode, actcode ) ",
		" VALUES ( #{obj.title}, #{obj.postcode}, #{obj.address1}, #{obj.address2}, #{obj.address3}, #{obj.price}, #{obj.intro}, #{obj.curriculum}, #{obj.localcode}, #{obj.actcode} )"
	})
	public int insertClassOne(@Param("obj") Classproduct obj );
	
	// 2. 클래스 1개 조회
	@Select({
		" SELECT c.* FROM classproduct c WHERE classcode=#{classcode} "
	})
	public Classproduct selectClassOne(@Param("classcode")long classcode );
	
	// 3. 클래스 삭제
	@Delete({
		" DELETE FROM classproduct WHERE classcode=#{classcode} "
	})
	public int deleteClassOne(@Param("classcode")long classcode); 
	
	// 4. 클래스 수정
	@Update({
		" UPDATE classproduct SET title=#{obj.title}, postcode=#{obj.postcode}, price=#{obj.price}, intro=#{obj.intro}, curriculum=#{obj.curriculum} WHERE classcode=#{obj.classcode} "
	})
	public int updateClassOne(@Param("obj") Classproduct obj);
		
	// 
}
