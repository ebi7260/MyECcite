package com.internousdev.ecsite.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.internousdev.ecsite.dto.BuyItemDTO;
import com.internousdev.ecsite.util.DBConnector;


public class BuyItemDAO {

         private DBConnector dbConnector = new DBConnector();
         private Connection connection = dbConnector.getConnection();

         public List<BuyItemDTO> buyItemDTOList = new ArrayList<BuyItemDTO>();

         public List<BuyItemDTO> getBuyItemInfo(){
        	 String sql = "SELECT id,item_name,item_price,item_stock,image_file_path FROM item_info_transaction";

        	 try{
        		 PreparedStatement preparedStatement = connection.prepareStatement(sql);
        		 ResultSet resultSet = preparedStatement.executeQuery();
        		 while(resultSet.next()){
        			 BuyItemDTO buyItemDTO=new BuyItemDTO();
        			 buyItemDTO.setId(resultSet.getInt("id"));
        			 buyItemDTO.setItemName(resultSet.getString("item_name"));
        			 buyItemDTO.setItemPrice(resultSet.getInt("item_price"));
        			 buyItemDTO.setItem_stock(resultSet.getInt("item_stock"));
        			 buyItemDTO.setImage_file_path(resultSet.getString("image_file_path"));
        			 buyItemDTOList.add(buyItemDTO);
        		 }
        	 }catch(Exception e){
        		 e.printStackTrace();
        	 }
        	 return buyItemDTOList;
         }

         public List<BuyItemDTO> getBuyItemDTO(){
        	 return buyItemDTOList;
         }
}
