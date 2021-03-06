package com.internousdev.ecsite.action;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import com.internousdev.ecsite.dao.BuyItemCompleteDAO;
import com.internousdev.ecsite.dto.BuyItemDTO;
import com.opensymphony.xwork2.ActionSupport;

public class BuyItemConfirmAction extends ActionSupport implements SessionAware{
	public Map<String,Object>session;
	private ArrayList<BuyItemDTO> buyItemDTOList = new ArrayList<BuyItemDTO>();
    /**
     * 商品購入情報登録メソッド
     */
	@SuppressWarnings("unchecked")
	public String execute() throws SQLException{
        String result = ERROR;

		buyItemDTOList=(ArrayList<BuyItemDTO>) session.get("list");

		for(int i=0; i<buyItemDTOList.size(); i++){
            int stock=buyItemDTOList.get(i).getItem_stock();
			int id=buyItemDTOList.get(i).getId();
			int total_price=buyItemDTOList.get(i).getTotal_price();


		    int count=buyItemDTOList.get(i).getCount();

		    int item_stock= stock - count;
		    System.out.println(item_stock);

		    if(item_stock<0){
		    	result=ERROR;


		    }else{






		BuyItemCompleteDAO buyItemCompleteDAO = new BuyItemCompleteDAO();
		buyItemCompleteDAO.buyItemInfo(
				id,
				session.get("login_user_id").toString(),
				total_price,
				count,
				buyItemDTOList.get(i).getPay(),
				item_stock);

                result = SUCCESS;
		    }

		}
         return result;
	}
	@Override
	public void setSession(Map<String,Object>session){
		this.session=session;
	}

}
