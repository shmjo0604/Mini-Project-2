package mapper;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;

import dto.Actdetailcate;
import dto.Activitycate;
import dto.Citycate;
import dto.Localcate;
import dto.SessionView;

@Mapper
public interface ClassMapper {

	// 클래스 조회 -> 날짜, 지역, 페이지 전달 받아서
	
	@Select({
		" SELECT s.* FROM sessionview s WHERE "
	})
	public List<SessionView> selectSessionViewList(Map<String, Object> map);
	
	// 지역 상위 카테고리 조회
	
	@Select({
		" SELECT c.* FROM citycate c ORDER BY c.code ASC "
	})
	public List<Citycate> selectCitycateList();
	
	// 지역 하위 카테고리 조회 -> 상위 카테고리 코드 외래키로 전달 받아서
	
	@Select({
		" SELECT l.* FROM localcate l WHERE citycode = #{citycode} ORDER BY l.code ASC "
	})
	public List<Localcate> selectLocalcateList(@Param("citycode") long citycode);
	
	// 클래스 상위 카테고리 조회
	
	@Select({
		" SELECT a.* FROM activitycate a ORDER BY a.code ASC "
	})
	public List<Activitycate> selectActivitycateList();
	
	// 클래스 하위 카테고리 조회 -> 상위 카테고리 코드 외래키로 전달 받아서
	
	@Select({
		" SELECT a.* FROM actdetailcate a WHERE actcode = #{actcode} ORDER BY a.code ASC "
	})
	public List<Actdetailcate> selectActdetailcateList(@Param("actcode") long actcode);
}
