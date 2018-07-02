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

<!-- CSSとSCRIPTの読み込み -->
     <link rel="stylesheet" type="text/css" href="./css/basic_style.css">
     <link rel="stylesheet" type="text/css" href="./css/table_style.css">
     <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>
     <script type="text/javascript">
             function submitAction(url){
            	 $('form').attr('action',url);
            	 $('form').submit();
             }
     </script>
<title>ItemInventoryConfirm画面</title>
</head>
<body>
     <s:include value="header.jsp"/>
     <div id="main">
             <div id="top">
                     <p>ITEM INVENTORY CONFIRM</p>
             </div>

             <div class="main-content">
                  <table>
                  <s:form>
                     <dl>
                         <dd>
                         <p>下記の通り在庫数を変更してよろしいでしょうか？</p>
                         <div class="push"></div>

                         <s:iterator value="buyItemDTOList">
                         <s:if test="count != 0">

                            <img class="image" style="width:150px; height:120px;" src="<s:property value='image_file_path'/>"><br><br>

                            商品名:
                            <s:property value="itemName" /><br>
                            現在の在庫数:
                            <s:property value="item_stock"/><span>個</span><br>
                            追加個数:
                            <s:property value="count"/><span>個</span><br><br>
                          </s:if>

                          </s:iterator>
                          </dd>
                    </dl>
                    <div class="push"></div>



                 <tr>
                           <td><input type="button" class="button" value="戻る" onclick="submitAction('GoItemInventoryAction')" /></td>
                           <td><input type="button" class="button" value="完了" onclick="submitAction('ItemInventoryConfirmAction')" /></td>
                 </tr>
            </s:form>
            </table>

            </div>
        </div>

       <s:include value="footer.jsp"/>
</body>
</html>