package com.internousdev.ecsite.action;

/*import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import com.internousdev.ecsite.dto.InquiryDTO;*/
import com.opensymphony.xwork2.ActionSupport;
public class InquiryAction extends ActionSupport /*implements SessionAware*/{

	/*List<InquiryDTO> inquiryDTOList = new ArrayList<InquiryDTO>();

	@SuppressWarnings("unused")
	private Map<String,Object> session;*/

	//問い合わせページへ移行するメソッド

	public String execute(){
		return SUCCESS;
	}
		/*@Override
		public void setSession(Map<String, Object>session){
			this.session = session;
		}*/

	}


