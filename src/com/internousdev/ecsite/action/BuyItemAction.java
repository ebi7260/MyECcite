package com.internousdev.ecsite.action;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import com.internousdev.ecsite.dto.BuyItemDTO;
import com.opensymphony.xwork2.ActionSupport;

public class BuyItemAction extends ActionSupport implements SessionAware{

	private ArrayList<BuyItemDTO> buyItemDTOList = new ArrayList<>();


     private List<String> count;

     private String pay;

     public Map<String,Object> session;

     private String buyItemErrorMessage;


     public String execute(){


    	 String result = SUCCESS;

    	 session.put("count",count);
    	 @SuppressWarnings("unchecked")
		List<BuyItemDTO> list=(List<BuyItemDTO>) session.get("buyItemDTOList");

    	 for(int i=0; i<count.size(); i++){
    	BuyItemDTO buyItemDTO=new BuyItemDTO();

    	 String buyItemName=list.get(i).getItemName();
    	 session.put("itemName", buyItemName);


    	 int buyItemPrice=list.get(i).getItemPrice();
    	 session.put("itemPrice", buyItemPrice);

    	 int buyItemId=list.get(i).getId();
    	 session.put("id", buyItemId);
    	 String image_file_path = list.get(i).getImage_file_path();
    	 int item_stock=list.get(i).getItem_stock();


    	 int intCount = Integer.parseInt(count.get(i));
    	 int intPrice = list.get(i).getItemPrice();


    	 if(intCount !=0){
    		 buyItemDTO.setId((int) session.get("id"));
    		 buyItemDTO.setItemName(session.get("itemName").toString());
    		 buyItemDTO.setItemPrice((int)session.get("itemPrice"));
    		 buyItemDTO.setCount(intCount);
    		 buyItemDTO.setImage_file_path(image_file_path);
             buyItemDTO.setItem_stock(item_stock);
    		 buyItemDTO.setTotal_price(intCount * intPrice);
    		 session.put("total_price",intCount * intPrice);

    		 String payment;
    		 if(pay.equals("1")){
    			 payment="現金払い";
    			 session.put("pay", payment);
    			 buyItemDTO.setPay(payment);

    		 }else{
    			 payment="クレジットカード";
    			 session.put("pay", payment);
    			 buyItemDTO.setPay(payment);
    		 }
    		 buyItemDTOList.add(buyItemDTO);
    	 }
    	     session.put("list", buyItemDTOList);
    	 }

    	 if(buyItemDTOList.size()>1){
    		 int totalPrice=0;
    		 for(int a = 0; a<buyItemDTOList.size(); a++){
    			 totalPrice=totalPrice + buyItemDTOList.get(a).getTotal_price();
    		 }
    		 System.out.println(totalPrice);
    		 session.put("totalPrice",totalPrice);
    	 }

    	 if(buyItemDTOList.size() ==0){
    		 buyItemErrorMessage = "商品を選択してください。";
    		 result = ERROR;
    	 }
    	 return result;
     }

     public List<String> getCount(){
    	 return count;
     }

     public void setCount(List<String> count){
    	 this.count = count;
     }

     public String getPay(){
    	 return pay;
     }

     public void setPay(String pay){
    	 this.pay = pay;
     }

     public ArrayList<BuyItemDTO> getBuyItemDTOList(){
    	 return buyItemDTOList;
     }
     public void setBuyItemDTOList(ArrayList<BuyItemDTO> buyItemDTOList){
    	 this.buyItemDTOList=buyItemDTOList;
     }

     public String getBuyItemerrorMessage(){
    	 return buyItemErrorMessage;
     }

     public void setBuyItemErrorMessage(String buyItemErrorMessage){
    	 this.buyItemErrorMessage = buyItemErrorMessage;
     }

     @Override
     public void setSession(Map<String,Object>session){
    	 this.session=session;
     }
}
