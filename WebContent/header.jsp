<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
<meta http-equiv="Content-Script-Type" content="text/javascript" />
<meta http-equiv="imagetoolbar" content="no" />
<meta name="description" content="" />
<meta name="keywords" content="" />

<link rel="stylesheet" type="text/css" href="./css/basic_style.css">
<link href="https://fonts.googleapis.com/css?family=Bowlby+One+SC" rel="stylesheet">
<title>Header</title>
</head>
<body>
<div id="header">
              <div class="sitename">
              Musical instrument store
              </div>

              <div class="top-menu">

			<div class="right-list">
				<ul>
					<li><a href='<s:url action="GoHomeAction"/>'>TOP</a></li>
					<li><a href='<s:url action="ProductPageAction"/>'>PRODUCT</a></li>
					<li><a href='<s:url action="UserCreateAction"/>'>SIGNUP</a></li>
					<li><a href='<s:url action="GoLoginAction"/>'>LOGIN</a></li>
					<li><a href='<s:url action="MyPageAction"/>'>MYPAGE</a></li>
					<li><a href='<s:url action="LogoutAction"/>'>LOGOUT</a></li>
					<li><a href='<s:url action="InquiryAction"/>'>MAIL</a></li>
				</ul>
			</div>
		</div>
     </div>
</body>
</html>