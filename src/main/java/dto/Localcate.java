package dto;

import lombok.Data;

//상세지역카테고리테이블
@Data
public class Localcate {
	private long code;
	private String localcate;
	private long citycode;
}
