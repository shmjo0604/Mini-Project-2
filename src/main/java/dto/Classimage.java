package dto;

import java.util.Date;

import lombok.Data;

//클래스이미지
@Data
public class Classimage {
	// 이미지 코드(시퀀스)
	private long no;
	private String filename;
	private long filesize;
	private String filedata;
	private String filetype;
	// 1:프로필이미지, 2:메인, 3:서브, 4:커리큘럼
	private long typechk;
	// 등록일자
	private Date regdate;
	private long classcode;
}
