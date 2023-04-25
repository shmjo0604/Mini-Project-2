package mapper;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;

import dto.ClassSessionView;
import dto.Review;

@Mapper
public interface ClassSessionViewMapper {
	
	
	@Select({
		" SELECT csv.* FROM CLASSSESSIONVIEW CSV where no=#{obj.no}"
		})
	public ClassSessionView ClassSessionViewSelectOne(@Param("obj") ClassSessionView obj);
	
	@Select({
		" SELECT csv.* FROM CLASSSESSIONVIEW CSV where no= #{no}"
		})
	public ClassSessionView dd(long no);
	
	@Select({
		" SELECT csv.* FROM CLASSSESSIONVIEW CSV where no=18;"
		})
	public ClassSessionView aa();
	
	
	
	
	
	
	
	
	@Select({
		" SELECT r.* FROM REVIEW r ;"
		})
	public Review selectReviewOne();
	
	
	@Delete({
		" DELETE from address where memberid = #{obj.memberid} and no = ${obj.no}"		
	})
	public int deleteReviewOne(@Param("obj") Review obj);
	
}
