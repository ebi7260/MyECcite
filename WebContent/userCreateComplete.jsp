<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="Content-Script-Type"content="text/javascript"/>
<meta http-equiv="imagetoolbar" content="no"/>
<meta name="description" content=""/>
<meta name="keywords" content=""/>
<link rel="stylesheet" type="text/css" href="./css/basic_style.css">
<link rel="stylesheet" type="text/css" href="./css/table_style.css">

<title>UserCreateComplete画面</title>


</head>
<body>
      <s:include value="header.jsp"/>
      <div id="main">
             <div id="top">
                     <p>UserCreateCoplete</p>
             </div>
             <div>
                     <h3>ユーザーの登録が完了しました。</h3>
                     <div>
                           <a href='<s:url action="HomeAction"/>'>ログインへ</a>
                     </div>
             </div>
        </div>
        <s:include value="footer.jsp"/>

</body>
</html>