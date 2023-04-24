package mapper;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;

import dto.Actdetailcate;
import dto.Activitycate;
import dto.Citycate;
import dto.Classproduct;
import dto.Localcate;
import dto.ClassSessionView;

@Mapper
public interface ClassMapper {

	// 클래스 조회 -> 날짜, 지역, 클래스 카테고리, 난이도, 가격 전달 받아서(pagination)
	@Select({
		" <script> ",
		" SELECT DISTINCT s.* FROM classsessionview s ",
		" <trim prefix='WHERE' prefixOverrides='AND || OR '> ",
		" <if test = 'map.citycode != 0' > ",
			" citycode = #{map.citycode} ",
		" </if> ",
		" <if test = 'map.localcode != 0'> ",
			" AND localcode = #{map.localcode} ",
		" </if> ",
		" <if test = 'map.activitycode != 0'> ",
			" AND activitycode = #{map.activitycode} ",
		" </if> ",
		" <if test = 'map.actcode != 0'> ",
			" AND actcode = #{map.actcode} ",
		" </if> ",
		" <if test = 'map.classdate != null'> ",
			" AND classdate = #{map.classdate} ",
		" </if> ",
		" <if test = 'map.classlevel != 0'> ",
			" AND classlevel = #{map.classlevel} ",
		" </if> ",
		" <if test = 'map.minprice != 0'> ",
			" AND totalprice <![CDATA[ > ]]> #{map.minprice} ",
		" </if> ",
		" <if test = 'map.maxprice != 0'> ",
			" AND totalprice <![CDATA[ < ]]> #{map.maxprice} ",
		" </if> ",
		" <if test = 'map.keyword != null'> ",
			" AND classtitle LIKE '%' ||  #{map.keyword} || '%' ",
			/* " OR talent LIKE '%' ||  #{map.keyword} || '%' ", */
		" </if> ",
		" </trim> ",
		" ORDER BY s.classcode DESC ",
		" </script> "
	})
	public List<ClassSessionView> selectClassSessionViewList(@Param("map") Map<String, Object> map);
	
	// 클래스 전체 조회 
	
	@Select({
		" SELECT s.* FROM classsessionview s "
	})
	public List<ClassSessionView> selectClassProductList();
	
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
