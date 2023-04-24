package mapper;

import java.util.List;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import dto.Actdetailcate;
import dto.Activitycate;
import dto.Citycate;
import dto.Classproduct;
import dto.Localcate;

@Mapper
public interface ClassMapper {

	// 1. 클래스 한개 등록
	@Insert({
			" INSERT INTO classprodouct( title, postcode, address1, address2, address3, price, intro, curriculum, localcode, actcode ) ",
			" VALUES ( #{obj.title}, #{obj.postcode}, #{obj.address1}, #{obj.address2}, #{obj.address3}, #{obj.price}, #{obj.intro}, #{obj.curriculum}, #{obj.localcode}, #{obj.actcode} )" })
	public int insertClassOne(@Param("obj")Classproduct obj);

	// 2. 클래스 1개 조회
	@Select({ " SELECT c.* FROM classproduct c WHERE classcode=#{classcode} " })
	public Classproduct selectClassOne(@Param("classcode") long classcode);

	// 3. 클래스 삭제
	@Delete({ " DELETE FROM classproduct WHERE classcode=#{classcode} " })
	public int deleteClassOne(@Param("classcode") long classcode);

	// 4. 클래스 수정
	@Update({
			" UPDATE classproduct SET title=#{obj.title}, postcode=#{obj.postcode}, price=#{obj.price}, intro=#{obj.intro}, curriculum=#{obj.curriculum} WHERE classcode=#{obj.classcode} " })
	public int updateClassOne(@Param("obj") Classproduct obj);

	// 지역 상위 카테고리 조회

	@Select({ " SELECT c.* FROM citycate c ORDER BY c.code ASC " })
	public List<Citycate> selectCitycateList();

	// 지역 하위 카테고리 조회 -> 상위 카테고리 코드 외래키로 전달 받아서

	@Select({ " SELECT l.* FROM localcate l WHERE citycode = #{citycode} ORDER BY l.code ASC " })
	public List<Localcate> selectLocalcateList(@Param("citycode") long citycode);

	// 클래스 상위 카테고리 조회

	@Select({ " SELECT a.* FROM activitycate a ORDER BY a.code ASC " })
	public List<Activitycate> selectActivitycateList();

	// 클래스 하위 카테고리 조회 -> 상위 카테고리 코드 외래키로 전달 받아서

	@Select({ " SELECT a.* FROM actdetailcate a WHERE actcode = #{actcode} ORDER BY a.code ASC " })
	public List<Actdetailcate> selectActdetailcateList(@Param("actcode") long actcode);

}
