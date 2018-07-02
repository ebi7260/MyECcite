package com.internousdev.ecsite.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.internousdev.ecsite.dto.BuyItemDTO;
import com.internousdev.ecsite.util.DBConnector;


public class CategorySearchDAO {
    private DBConnector dbConnector = new DBConnector();

    private Connection connection = dbConnector.getConnection();

    private List<BuyItemDTO> buyItemDTOList = new ArrayList<BuyItemDTO>();

    /**
     * カテゴリソート用メソッド
     * 選択したカテゴリの商品だけ商品情報が取得される
     */

    public List<BuyItemDTO> getBuyItemInfo(String sortCategory){
    	String sql ="SELECT * FROM item_info_transaction WHERE item_category=?";
    	try{
    		PreparedStatement preparedStatement = connection.prepareStatement(sql);

    		preparedStatement.setString(1, sortCategory);

    		ResultSet resultSet = preparedStatement.executeQuery();

    		while(resultSet.next()){
    			BuyItemDTO dto = new BuyItemDTO();

    			dto.setId(resultSet.getInt("id"));
    			dto.setItemName(resultSet.getString("item_name"));
    			dto.setItemPrice(resultSet.getInt("item_price"));
    			dto.setItem_stock(resultSet.getInt("item_stock"));
    			dto.setItem_category(resultSet.getString("item_category"));
    			dto.setImage_file_path(resultSet.getString("image_file_path"));

    	        buyItemDTOList.add(dto);
    	        }
    	}catch(Exception e){
    		e.printStackTrace(s);;
    	}
    	return buyItemDTOList;
    }

    public List<BuyItemDTO>getBUyItemDTOList(){
    	return buyItemDTOList;
    }
}
