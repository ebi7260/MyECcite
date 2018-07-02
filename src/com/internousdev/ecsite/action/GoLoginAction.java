package com.internousdev.ecsite.action;

import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import com.opensymphony.xwork2.ActionSupport;

public class GoLoginAction extends ActionSupport implements SessionAware{

	private String loginMessage;

	public Map<String, Object> session;

	//実行メソッド
	public String execute(){
		if(session.containsKey("masterId")){

			loginMessage = "管理者IDでログイン済みです。";
		}else if(session.containsKey("id")){

			loginMessage = "ログイン済みです。";
		}

		return SUCCESS;
	}

	public String getLoginMessage() {
		return loginMessage;
	}

	public void setLoginMessage(String loginMessage){
		this.loginMessage = loginMessage;
	}

	public Map<String, Object> getSession(){
		return session;
	}

	public void setSession(Map<String,Object> session){
		this.session = session;
	}

}
