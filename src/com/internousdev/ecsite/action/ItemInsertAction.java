package com.internousdev.ecsite.action;

import java.sql.SQLException;
import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import com.internousdev.ecsite.dao.ItemInsertDAO;
import com.internousdev.ecsite.dto.ItemInsertDTO;
import com.opensymphony.xwork2.ActionSupport;

public class ItemInsertAction extends ActionSupport implements SessionAware{

      private String itemName;

      private String itemPrice;

      private String itemStock;

      private String imageFilePath;

      public Map<String,Object> session;

      private ItemInsertDTO dto = new ItemInsertDTO();

      private ItemInsertDAO dao = new ItemInsertDAO();

      public String execute() throws SQLException{
    	  String result = ERROR;

    	  if(itemName.length() !=0 && itemPrice.length() !=0 &&itemStock.length() !=0 && imageFilePath.length() !=0){
    		  dto = dao.itemInsertInfo(itemName, itemPrice, itemStock, imageFilePath);

    		  session.put("itemInsertDTO",dto);
    		  session.put("itemName",itemName);
    		  session.put("itemPrice",itemPrice);
    		  session.put("itemStock",itemStock);
    		  session.put("imageFilePath",imageFilePath);

    		  result = SUCCESS;

    	  }
    	  return result;
      }

      public String getItemName() {
    	  return itemName;
      }

      public void setItemName(String itemName){
    	  this.itemName=itemName;
      }

      public String getItemPrice() {
    	  return itemPrice;
      }

      public void setItemPrice(String itemPrice){
    	  this.itemPrice = itemPrice;
      }

      public String getItemStock() {
    	  return itemStock;
      }

      public void setItemStock(String itemStock){
    	  this.itemStock = itemStock;
      }

      public String getImageFilePath(){
    	  return imageFilePath;
      }

      public void setImageFilePath(String imageFilePath){
    	  this.imageFilePath = imageFilePath;
      }

      @Override
      public void setSession(Map<String,Object> session){
    	  this.session = session;
      }
}
