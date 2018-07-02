<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>

<!DOCTYPE html>
<html>
<head>

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
<meta http-equiv="Content-Script-Type"content="text/javascript"/>
<meta http-equiv="imagetoolbar" content="no"/>
<meta name="description" content=""/>
<meta name="keywords" content=""/>

<link rel="stylesheet" type="text/css" href="./css/basic_style.css">
<title>BuyItemComplete画面</title>

</head>
<body>
      <s:include value="header.jsp"/>
      <div id="main">
             <div id="top">
                     <p>BuyItemComplete</p>
             </div>
             <div>
                     <p>購入手続きが完了いたしました。</p>


                     <div>
                          <a href='<s:url action="MyPageAction" />'>
                                 マイぺージ</a><span>から購入履歴の確認が可能です。</span>
                          <p>Homeへ戻る場合は<a href='<s:url action="GoHomeAction"/>'>
                            こちら</a></p>
                     </div>
              </div>
       </div>
       <s:include value="footer.jsp"/>

</body>
</html>