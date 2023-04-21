package dto;

import java.util.Date;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

//클래스이미지
@Getter
@Setter
@ToString(exclude = {"filedata"})
@NoArgsConstructor
@AllArgsConstructor
public class Classimage {
	// 이미지 코드(시퀀스)
	private long no;
	private String filename;
	private long filesize;
	private byte[] filedata;
	private String filetype;
	// 1:프로필이미지, 2:메인, 3:서브, 4:커리큘럼
	private int typechk;
	// 등록일자
	private Date regdate;
	private long classcode;
}
