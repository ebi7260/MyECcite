package com.internousdev.ecsite.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import com.internousdev.ecsite.util.DBConnector;
import com.internousdev.ecsite.util.DateUtil;

public class BuyItemCompleteDAO {
     private DBConnector dbConnector = new DBConnector();
     private Connection connection = dbConnector.getConnection();
     private DateUtil dateUtil = new DateUtil();
     private String sql = "INSERT INTO user_buy_item_transaction"
     		+ "(item_transaction_id,total_price,total_count,user_master_id,pay,insert_date) VALUES(?,?,?,?,?,?)";

     public void buyItemInfo(int item_transaction_id,String user_master_id,
    		 int total_price,int total_count,String pay,int item_stock) throws SQLException{
    	 try{
    		 PreparedStatement preparedStatement = connection.prepareStatement(sql);
    		 preparedStatement.setInt(1, item_transaction_id);
    		 preparedStatement.setInt(2, total_price);
    		 preparedStatement.setInt(3, total_count);
    		 preparedStatement.setString(4,user_master_id);
    		 preparedStatement.setString(5, pay);
    		 preparedStatement.setString(6, dateUtil.getDate());

    		 int buyCount = preparedStatement.executeUpdate();

    		 if(buyCount >0){
    			 String sql2="UPDATE item_info_transaction SET item_stock=? WHERE id=?";

    			 PreparedStatement ps=connection.prepareStatement(sql2);

    			 ps.setInt(1, item_stock);
    			 ps.setInt(2, item_transaction_id);
    			 ps.executeUpdate();
    		 }

        }catch(Exception e){
        	e.printStackTrace();
        }finally{
        	connection.close();
        }
     }
}
