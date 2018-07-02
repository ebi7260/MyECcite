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
	<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>

	<script type="text/javascript">
		function submitAction(url) {
			$('form').attr('action', url);
			$('form').submit();
		}
	</script>
<title>ItemDeleteConfirm画面</title>
</head>
<body>
<s:include value="header.jsp"/>
     <div id="main">
             <div id="top">
                     <p>ITEM DELETE CONFIRM</p>
             </div>

             <div class="main-content">
                  <table>
                  <s:form>
                     <dl>
                         <dd>
                         <p>以下の商品を削除してよろしいでしょうか？</p>
                         <div class="push"></div>

                         <s:iterator value="itemDeleteList">
                         商品名:
                         <s:property value="itemName" /><br><br>

                          </s:iterator>
                          </dd>
                    </dl>
                    <div class="push"></div>



                 <tr>
                           <td><input type="button" class="button" value="戻る" onclick="submitAction('GoItemDeleteAction')" /></td>
                           <td><input type="button" class="button" value="完了" onclick="submitAction('ItemDeleteConfirmAction')" /></td>
                 </tr>
            </s:form>
            </table>

            </div>
        </div>

<s:include value="footer.jsp"/>


</body>
</html>