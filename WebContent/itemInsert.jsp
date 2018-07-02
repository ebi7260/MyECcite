<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
<meta http-equiv="Content-Script-Type" content="text/javascript"/>
<meta http-equiv="imagetoolbar" content="no"/>
<meta name="description" content=""/>
<meta name="keywords" content=""/>

<link rel="stylesheet" type="text/css" href="./css/basic_style.css">

<title>ItemInsert画面</title>
</head>
<body>
<s:include value="header.jsp"/>
     <div id="main">
             <div id="top">
                     <p>ITEM INSERT</p>
             </div>

             <div class="main-content">
                  <p>追加する商品の情報を入力してください。</p>

                  <table>
                  <s:form method="post" action="ItemInsertAction">
                    商品名<br>
                    <input type="text" name="ItemName"/><br>
                    値段<br>
                    <input type="text" name="ItemPrice"/><br>
                    在庫<br>
                    <input type="text" name="ItemStock"/><br>
                    画像パス<br>
                    <input type="text" name="ImageFilePath"/><br>


                 <s:submit class="button" value="商品を追加する"/>
                 </s:form>

                 </table>
            </div>
             <div>

                           <p>管理画面へ戻る場合は <a href='<s:url action="GoMasterPageAction" />'>こちら</a></p>
                           <p>ログアウトする場合は<a href='<s:url action="LogoutAction"/>'>こちら</a></p>

            </div>
        </div>

<s:include value="footer.jsp"/>
</body>
</html>