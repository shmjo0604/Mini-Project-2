package dto;

import java.util.Date;

import lombok.Data;

//리뷰테이블
@Data
public class Review {
	// 신청번호
	private long no;
	// 제목
	private String title;
	// 내용
	private String content;
	// 평점(1,2,3,4,5)
	private String rating;
	// 리뷰등록일자
	private Date regdate;
}
