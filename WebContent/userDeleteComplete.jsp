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

<!-- CSSとSCRIPTの読み込み -->
	<link rel="stylesheet" type="text/css" href="./css/basic_style.css">
<title>UserDeleteComplete画面</title>
</head>
<body>
<s:include value="header.jsp"/>
<div id="main">
              <div id="top">
                      <p>USER DELETE COMPLETE</p>
              </div>
              <div class="main-contents">
                   <p class="error-message">退会処理が完了しました。</p>
                   <br><br>
              </div>


              <p><a href='<s:url action="GoHomeAction"/>'>Homeへ戻る場合はこちら</a>

              </div>
<s:include value="footer.jsp"/>


</body>
</html>