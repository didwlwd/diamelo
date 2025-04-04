package com.kh.diamelo.controller;

import com.kh.diamelo.domain.vo.PageInfo;
import com.kh.diamelo.domain.vo.Product;
import com.kh.diamelo.domain.vo.Sales_Details;
import com.kh.diamelo.services.BuyService;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.ArrayList;

@RequiredArgsConstructor
@Controller
public class BuyController {
    private final BuyService buyService;

    // 구매조회
    @GetMapping("search.buy")
    public String searchBuy() {
        return null;
    }

    // 구매서 등록
    @GetMapping("buyAdd.erp")
    public String buyAddPage() {
        return "erpPage/materialBuyPage";
    }

    //구매 상세보기
    @GetMapping("detail.buy")
    public String detailBuy() {
        return "erpPage/buyDetailPage";
    }

    //재료구매신청 버튼
    @PostMapping("mat.buy")
    public String materialBuy() {
        return null;
    }

    //구매관리 페이지로 가기
    @GetMapping("buyList.erp")
    public String buyList(@RequestParam(defaultValue = "1") int bpage, Model model){
        int buyCount = buyService.selectBuyCount();

        PageInfo pi = new PageInfo(buyCount, bpage, 10, 10);
        ArrayList<Sales_Details> list = buyService.selectBuyList(pi);

        model.addAttribute("list", list);
        model.addAttribute("pi", pi);

        return "erpPage/buyPage";
    }

    @GetMapping("buyDetail.erp")
    public String buyDetail(int salNo, Model model){
        ArrayList<Product> list = buyService.selectProduceBuyList(salNo);
        return "erpPage/buyDetailPage";
    }



}
