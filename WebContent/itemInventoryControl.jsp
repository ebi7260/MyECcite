<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html >
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
<meta http-equiv="Content-Script-Type" content="text/javascript"/>
<meta http-equiv="imagetoolbar" content="no"/>
<meta name="description" content=""/>
<meta name="keywords" content=""/>

<!-- CSSとScriptの読み込み -->
     <link rel="stylesheet" type="text/css" href="./css/basic_style.css">
     <link rel="stylesheet" type="text/css" href="./css/table_style.css">

     <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>

     <script type="text/javascript">
             function submitAction(url){
            	 $('form').attr('action', url);
            	 $('form').submit();
             }
     </script>
<title>ItemInventoryControl画面</title>
</head>
<body>
 <s:include value="header.jsp"/>
      <div id="main">
              <div id="top">
                      <p>ITEM INVENTORY CONTROL</p>
              </div>
              <div class="main-contents">
                   <p>在庫を変更したい商品と変更したい数を選択してください。</p>
                    <table>
                    <s:form>
                    <s:iterator value="buyItemDTOList">


                      <dl class="dl-list">
                      <dd class="dd-list">
                      <img class="image" style="width:150px; height:120px;" src="<s:property value='image_file_path'/>"><br><br>

                      <s:property value="itemName" /><br>

                      <span>値段:</span>

                      <s:property value="itemPrice" /><span>円</span><br>

                      <span>在庫:</span>
                      <s:property value="item_stock"/><span>個</span><br>

                      <span>変更する数:</span>

                      <script>
                          document.write("<select class='select-box' name='count'>");
                          document.write("<option value='0' selected='selected'>-</option>");
                          for(i=1; i<11; i++){
                        	  document.write("<option value='");
                        	  document.write(i);
                        	  document.write("'>");
                        	  document.write(i);
                        	  document.write("</option>");
                          };

                          document.write("</select>")
                      </script>

                      </dd>
                      </dl>

                      </s:iterator>
                      <div class="clear"></div>

                           <tr>
                               <td>

                               <input type="button" class="button" value="在庫数変更" onclick="submitAction('ItemInventoryControlAction')" />
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