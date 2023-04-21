package dto;

import lombok.Data;

//액티비티카테고리테이블
@Data
public class Activitycate {
// 101,102,103
private long code;
// 재능(예술, 스포츠, 뷰티, 쿠킹, 쥬얼리, 인테리어)
private String cate;
}
