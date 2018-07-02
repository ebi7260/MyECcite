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

<link rel="stylesheet"  type="text/css"  href="./css/basic_style.css">
<title>Login画面</title>


</head>

<body>
     <s:include value="header.jsp"/>
     <div id="main">
             <div id="top">
                     <p>Login</p>
             </div>
             <div>
                       <h3>商品を購入する際にはログインをお願いします。</h3>
                       <s:form action="LoginAction">
                       <table>
                             <tr>

                                      <td><label>ログインID:</label></td>
                                      <td><input type="text" name="loginUserId" value=""/></td>
                             </tr>
                             <tr>
                                      <td><label>パスワード:</label></td>
                                      <td><input type="password" name="loginPassword" value=""/></td>
                             </tr>
                                      <s:submit value="ログイン"/>
                       </table>
                       </s:form>
                       <br>
                       <div id="text-link">
                               <p>新規ユーザー登録は
                                     <a href='<s:url action="UserCreateAction"/>'>こちら</a></p>
                               <p>Homeへ戻る場合は
                                     <a href='<s:url action="GoHomeAction"/>'>こちら</a></p>
                       </div>
             </div>
     </div>

     <s:include value="footer.jsp"/>

</body>
</html>