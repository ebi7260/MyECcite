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
<title>ItemDeleteComplete画面</title>
</head>
<body>
<s:include value="header.jsp"/>
<div id="main">
             <div id="top">
                     <p>ITEM DELETE COMPLETE</p>
             </div>

             <div class="main-content">
             <table>
             <s:form>
                  <span>商品を</span><s:property value="session.itemDeleteListSize"/><span>件削除しました。</span>
                  <br><br>

                 <tr>
                           <td><p>管理ページに戻る場合は<a href='<s:url action="GoMasterPageAction" />'>こちら</a></p></td>

                 </tr>
             </s:form>
             </table>
            </div>
        </div>

<s:include value="footer.jsp"/>
</body>
</html>