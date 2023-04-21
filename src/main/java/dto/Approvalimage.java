package dto;

import java.util.Date;

import lombok.Data;

//자격증, 수료증, 인증서
@Data
public class Approvalimage {
	// 클래스 코드(시퀀스)
	private long no;
	// 파일이름
	private String filename;
	// 파일사이즈
	private long filesize;
	// 파일데이터
	private String filedata;
	// 파일타입
	private String filetype;
	// 등록일자
	private Date regdate;
	// 클래스 코드(시퀀스)
	private long classcode;
}
