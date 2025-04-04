package com.kh.diamelo.domain.vo;

import lombok.*;

import java.sql.Date;

@Getter
@Setter
@AllArgsConstructor
@ToString
@NoArgsConstructor
public class Product {
    private int proNo; //제품번호
    private int proCategoryNo; //제품 카테고리 번호
    private String proName; //제품명
    private String proDetail; //제품 상세 정보
    private int proPrice; //단가
    private String proDeleted; //삭제됨 Y, 삭제안됨 N
    private String isProduct; //완제품 여부(제품 : Y, 재료 : N)


    private String categoryName;
    private String proInventStock;

    private String changeName;
    private String originName;

    private Date proEnrollDate;

    private int amount;
    private int stock;

    private int qty;
    private int itemTotal;


}
