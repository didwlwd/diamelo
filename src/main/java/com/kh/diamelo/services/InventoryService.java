package com.kh.diamelo.services;

import com.kh.diamelo.domain.vo.*;

import com.kh.diamelo.domain.vo.PageInfo;
import com.kh.diamelo.domain.vo.Product;
import org.springframework.web.multipart.MultipartFile;

import java.util.ArrayList;
import java.util.List;


import java.util.ArrayList;

public interface InventoryService {



        int selectProductCount();

        int selectMaterialCount();

        ArrayList<Product> selectProductList(PageInfo pi);
        ArrayList<Product> selectMaterialList(PageInfo pi);

        int insertProduct(Product product);

        int insertProductAttachment(Attachment attachment);

        int insertRecipeList(ArrayList<Recipe> recipeList);





        int insertMaterial(Product product);

        int insertMaterialAttachment(Attachment attachment);








    /*
        int countProductsByType(String isProduct);
        public List<Product> getProductsByType(String isProduct);
     */
}
