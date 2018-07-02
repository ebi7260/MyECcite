<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
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
<title>ItemInventoryComplete画面</title>
</head>
<body>
<s:include value="header.jsp"/>
<div id="main">
             <div id="top">
                     <p>ITEM INVENTORY COMPLETE</p>
             </div>

             <div class="main-content">
                  <table>
                  <s:form>
                     <dl>
                         <dd>
                         <p>下記の通り商品在庫を変更しました。</p>
                         <div class="push"></div>

                         <s:iterator value="buyItemDTOList">


                            <img class="image" style="width:150px; height:120px;" src="<s:property value='image_file_path'/>"><br><br>



                            商品名:
                            <s:property value="itemName" /><br>
                            追加個数:
                            <s:property value="count"/><span>個</span><br>
                            変更後の在庫数:
                            <s:property value="total_count"/><span>個</span><br><br>


                    </s:iterator>
                    </dd>
                    </dl>



                 <div>
                           <p>管理ページに戻る場合は<a href='<s:url action="GoMasterPageAction" />'>こちら</a></p>

                 </div>
            </s:form>
            </table>

            </div>
        </div>

<s:include value="footer.jsp"/>
</body>
</html>