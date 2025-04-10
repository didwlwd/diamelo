package com.kh.diamelo.services;

import com.kh.diamelo.domain.vo.PageInfo;
import com.kh.diamelo.domain.vo.SalesDetails;
import com.kh.diamelo.mappers.IncomeMapper;
import lombok.RequiredArgsConstructor;
import org.apache.ibatis.session.RowBounds;
import org.springframework.stereotype.Service;

import java.util.ArrayList;

@RequiredArgsConstructor
@Service
public class IncomeServiceImpl implements IncomeService {

    private final IncomeMapper incomeMapper;

    @Override
    public int selectIncomeCount() {

        return incomeMapper.selectIncomeCount();
    }

    @Override
    public ArrayList<SalesDetails> selectIncomeList(PageInfo pi) {
        int offset = (pi.getCurrentPage() - 1) * pi.getBoardLimit();
        RowBounds rowBounds = new RowBounds (offset, pi.getBoardLimit());
        return incomeMapper.selectIncomeList(rowBounds);
    }

//    @Override
//    public int selectIncomeAllSales() {
//        return incomeMapper.selectIncomeAllSales();
//    }
//
//    @Override
//    public int selectIncomeAllSalesDetails(String type, String startDate, String endDate, String company) {
//        return incomeMapper.selectIncomeAllSalesDetails(type, startDate,endDate,company);
//    }

    @Override
    public int selectSerachIncomeCount(String type, String startDate, String endDate, String company) {
        return incomeMapper.selectSerachIncomeCount(type, startDate, endDate, company);
    }

    @Override
    public ArrayList<SalesDetails> selectSearchIncomeList(PageInfo pi, String type, String startDate, String endDate, String company) {
        int offset = (pi.getCurrentPage() - 1) * pi.getBoardLimit();
        RowBounds rowBounds = new RowBounds (offset, pi.getBoardLimit());
        return incomeMapper.selectSearchIncomeList(rowBounds, type, startDate, endDate, company);
    }

    @Override
    public int searchIncomeSum(String type, String startDate, String endDate, String company) {
        return incomeMapper.searchIncomeSum(type, startDate, endDate, company);
    }

    @Override
    public ArrayList<SalesDetails> incomeDetail(int gno) {
        return incomeMapper.incomeDetail(gno);
    }
}
