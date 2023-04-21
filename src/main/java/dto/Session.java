package dto;

import java.util.Date;

import lombok.Data;

@Data
public class Session {
  // 시퀀스
  private long no;
  // 현재신청인원
  private long cnt;
  // 최소신청인원
  private long min;
  // 최대신청인원
  private long max;
  // 날짜
  private String date;
  // 요일
  private String day;
  // 오전 6:00
  private String start;
  // 오후 9:00
  private String end;
  // 할인률
  private long discount;
  // 클래스 추가금액
  private long addprice;
  // 클래스 난이도(입문자, 경험자)
  private String level;
  // 등록일자
  private Date regdate;
  // 클래스 코드(시퀀스)
  private long classcode;
}
