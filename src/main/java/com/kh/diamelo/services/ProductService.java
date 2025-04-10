package com.kh.diamelo.services;



import com.kh.diamelo.domain.vo.Cart;
import com.kh.diamelo.domain.vo.PageInfo;
import com.kh.diamelo.domain.vo.Product;

import java.util.ArrayList;

public interface ProductService {

    // erpPage 제품 정보 조회
    ArrayList<Product> getProductList();

    // crmPage 제품 정보 조회
    ArrayList<Product> getCrmProductList(PageInfo pi);

    // 장바구니 페이지 제품 정보 조회 - 오버로딩
    ArrayList<Product> getCrmProductList();

    // 제품 이미지 조회
    String getProductImage(int productNo);

    ArrayList<Product> getMaterialsByProductNo(int productNo);

    boolean produceProduct(int productNo, int quantity);

    // 제품 개수 조회
    int selectProductCount();

    // 검색된 제품 개수 조회
    int selectSearchProductCount(String keyword);

    // 검색된 crmPage 제품 정보 조회
    ArrayList<Product> getSearchCrmProductList(PageInfo pi, String keyword);

    // 장바구니 목록 조회
    ArrayList<Cart> getCartList(String userId);

    // 장바구니 추가
    int addCart(int proNo, String userId);

    // 장바구니 삭제
    int deleteCart(int proNo, String userId);
}
