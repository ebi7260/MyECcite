package com.internousdev.ecsite.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import com.internousdev.ecsite.dto.ItemInsertDTO;
import com.internousdev.ecsite.util.DBConnector;

public class ItemInsertDAO {

	   private DBConnector dbConnector = new DBConnector();

	   private Connection connection = dbConnector.getConnection();

	   private ItemInsertDTO itemInsertDTO = new ItemInsertDTO();

	   private String sql = "INSERT INTO item_info_transaction(item_name,item_price,item_stock,image_file_path) VALUES(?,?,?,?)";

	   /**
	    * 商品追加のメソッド
	    */

	   public ItemInsertDTO itemInsertInfo(String itemName, String itemPrice, String itemStock, String  imageFilePath)throws SQLException{
		   try{
			   PreparedStatement preparedStatement = connection.prepareStatement(sql);
			   preparedStatement.setString(1, itemName);
			   preparedStatement.setString(2, itemPrice);
			   preparedStatement.setString(3, itemStock);
			   preparedStatement.setString(4, imageFilePath);

			   preparedStatement.executeUpdate();
		   }catch(Exception e){
			   e.printStackTrace();
		   }finally{
			   connection.close();
		   }
		 return itemInsertDTO;
	   }
}
