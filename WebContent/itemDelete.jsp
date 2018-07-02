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
	<link rel="stylesheet" type="text/css" href="./css/table_style.css">

	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<title>ItemDelete画面</title>
</head>
<body>
<s:include value="header.jsp"/>
<div id="main">
              <div id="top">
                      <p>ITEM DELETE CONTROL</p>
              </div>
              <div class="main-contents">
                   <p>削除したい商品を選択してください。</p>
                    <table>
                    <s:form action="ItemDeleteAction">
                     <dl class="dl-list">
                    <s:iterator value="buyItemDTOList">


                      <dd class="dd-list">
                      <img class="image" style="width:150px; height:120px;" src="<s:property value='image_file_path'/>"><br><br>

                      <s:property value="itemName" /><br>

                      <span>値段:</span>

                      <s:property value="itemPrice" /><span>円</span><br>

                      <span>在庫:</span>
                      <s:property value="item_stock"/><span>個</span><br>

                      <input class="check-box" type="checkbox" name="deleteName" value="<s:property value='itemName'/>">

                      </dd>

                      </s:iterator>
                      </dl>
                      <div class="clear"></div>

                           <tr>
                               <td>

                               <s:submit class="button" value="商品を削除する"/>
                               </td>
                           </tr>

                      </s:form>
                      </table>
                           <p>管理画面へ戻る場合は <a href='<s:url action="GoMasterPageAction" />'>こちら</a></p>
                           <p>ログアウトする場合は<a href='<s:url action="LogoutAction"/>'>こちら</a></p>
                     </div>
                   </div>




<s:include value="footer.jsp"/>
</body>
</html>