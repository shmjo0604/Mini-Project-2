package mapper;

import java.util.List;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import dto.Session;

@Mapper
public interface SessionMapper {
	
	/***** 판매자 *****/
	
	/* (1) 세션 등록*/
	@Insert({
		" INSERT INTO SESSION(MINIMUM, MAXIMUM, CLASSDATE, CLASSDAY, CLASSSTART, CLASSEND, DISCOUNT, ADDPRICE, CLASSLEVEL, CLASSCODE) ",
		" VALUES(#{obj.minimum}, #{obj.maximum}, #{obj.classdate}, #{obj.classday}, #{obj.classstart}, #{obj.classend}, #{obj.discount}, #{obj.addprice}, #{obj.classlevel}, #{obj.classcode} " })
	public int insertSessionOne(@Param("obj") Session obj);
	
	/* (2) 세션 전체 조회 */
	@Select({ " SELECT * FROM SESSION ORDER BY DESC "})
	public List<Session> selectSessionList();
	
	
	/* (3) 세션 수정 */
	@Update({ " UPDATE ",
			  " SET MINIMUM=#{obj.minimum}, MAXIMUM=#{obj.maximum}, CLASSDATE=#{obj.classdate}, CLASSDAY=#{obj.classday}, CLASSSTART=#{obj.classstart}, CLASSEND=#{obj.classend}, DISCOUNT=#{obj.discount}, ADDPRICE=#{obj.addprice}, CLASSLEVEL=#{obj.classlevel} ",
			  " WHERE NO=#{no} " })
	public int updateSessionOne(@Param("no") long no);
	
	/* (4) 세션 하나 삭제 */
	@Delete({ " DELETE FROM SESSION WHERE NO=#{no} " })
	public int deleteSessionOne(@Param("no") long no);
	
	
	/* (5) 세션 전체 삭제 */
	@Delete({ " DELETE FROM SESSION WHERE CLASSCODE=#{classcode} " })
	public int deleteSessionAll(@Param("classcode") long classcode);
	
}
