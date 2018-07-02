<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html >
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
<meta http-equiv="Content-Script-Type" content="text/javascript"/>
<meta http-equiv="imagetoolbar" content="no" />
<meta name="description" content=""/>
<meta name="keywords" content=""/>
<!-- CSSとSCRIPT読み込み -->
<link rel="stylesheet" type="text/css" href="./css/basic_style.css">
<link rel="stylesheet" type="text/css" href="./css/table_style.css">


<!-- 以下メイン -->
<title>ItemInsertComplete画面</title>
</head>
<body>
<s:include value="header.jsp"/>
     <div id="main">
             <div id="top">
                     <p>ITEM INSERT COMPLETE</p>
             </div>

             <div class="main-content">
                 <table>
                 <s:form>
                    <dl class="buy_item">
                        <dd>
                        <p class="error-message">以下の商品を追加しました</p>
                        <br>

                        商品名:
                        <s:property value="session.itemName" /><br><br>

                        値段:
                        <s:property value="session.itemPrice"/><span>円</span><br><br>
                        在庫:
                        <s:property value="session.itemStock"/><span>個</span><br><br>
                        画像パス:
                        <s:property value="session.imageFilePath"/><br><br>
                        </dd>
                    </dl>
                </s:form>
                </table>
            </div>
             <div>

                           <p>管理ページに戻る場合は<a href='<s:url action="GoMasterPageAction" />'>こちら</a></p>
                           <p>商品をさらに追加する場合は<a href='<s:url action="GoMasterPageAction"/>'>こちら</a></p>

            </div>
        </div>

<s:include value="footer.jsp"/>
</body>
</html>