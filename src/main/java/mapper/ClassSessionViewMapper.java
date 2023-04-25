package mapper;

import java.util.List;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;

import dto.ClassSessionView;
import dto.Review;

@Mapper
public interface ClassSessionViewMapper {
	
	
	@Select({
		" SELECT csv.* FROM CLASSSESSIONVIEW CSV where no=#{obj.no};"
		})
	public List<ClassSessionView> ClassSessionViewSelectOne(@Param("obj") ClassSessionView obj);
	
	@Select({
		" SELECT r.* FROM REVIEW r ;"
		})
	public Review selectReviewOne();
	
	
	@Delete({
		" DELETE from address where memberid = #{obj.memberid} and no = ${obj.no}"		
	})
	public int deleteReviewOne(@Param("obj") Review obj);
	
}
