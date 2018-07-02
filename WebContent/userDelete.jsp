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
<title>User Delete画面</title>
</head>
<body>
<s:include value="header.jsp"/>
<div id="main">
              <div id="top">
                      <p>USER DELETE</p>
              </div>
              <div class="main-contents">
                   <table>
                   <s:form action = "UserDeleteAction">
                   <dl>
                     <dd>
                     <p class = "error-message">退会してもよろしいでしょうか?</p>
                     <h3>※一度退会されるとご登録頂いているすべての情報が完全に失われます</h3>

                     <!-- ユーザー情報削除 -->
                         <input type="hidden" name="deleteFlg" value="1">
                         <s:submit class="button" name="deleteFlg" value="退会する"/>
                     </dd>
                   </dl>
                   </s:form>
                   </table>
              </div>

              <p><a href='<s:url action="MyPageAction"/>'>マイページへ戻る場合はこちら</a></p>
              <p><a href='<s:url action="GoHomeAction"/>'>Homeへ戻る場合はこちら</a>

              </div>

<s:include value="footer.jsp"/>
</body>
</html>