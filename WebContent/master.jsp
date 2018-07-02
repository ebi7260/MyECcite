<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
<meta http-equiv="Content-Script-Type" content="text/javascript"/>
<meta http-equiv="imagetoolbar" content="no" />
<meta name="description" content="" />
<meta name="keywords" content="" />

<!-- CSSの読み込み -->
<link rel="stylesheet" type="text/css" href="./css/basic_style.css">
<link rel="stylesheet" type="text/css" href="./css/table_style.css">
<title>管理者画面</title>
</head>
<body>
     <s:include value="header.jsp"/>

     <div id="main">
        <div id="top">
          <p>master</p>
        </div>


             <div>
                 <p><a href='<s:url action="GoItemInsertAction"/>'>商品追加</a></p>
                 <p><a href='<s:url action="GoItemDeleteAction"/>'>商品削除</a></p>
                 <p><a href='<s:url action="GoItemInventoryAction"/>'>在庫管理</a></p>
                 <p><a href='<s:url action="InquiryAllDeleteAction"/>'>問い合わせ一覧</a>

             <p><a href='<s:url action="LogoutAction"/>'>ログアウト</a></p>
             </div>
     </div>
     <!-- メインとフッターの位置調整 -->
     <div class="footer-push"></div>

     <div id="footer">
          <div id="pr">
          </div>
     </div>
     <s:include value="footer.jsp"/>

</body>
</html>