package dto;

import lombok.Data;

//신청테이블
@Data
public class Apply {
	// 신청번호(시퀀스)
	private long no;
	// 참여인원
	private int person;
	// 회원아이디(구매자)
	private String memberid;
	// 세션
	private long sessionno;
}
