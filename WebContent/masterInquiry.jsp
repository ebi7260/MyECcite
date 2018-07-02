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
<title>MasterInquiry画面</title>
</head>
<body>
 <s:include value="header.jsp"/>

     <div id="main">
        <div id="top">
          <p>MASTER INQUIRY</p>
        </div>

<!--         問合せがある場合 -->
<%-- 		<s:if test="#session.inquiryDTOList !==null"> --%>
<!-- 			<br><br> -->
        <div class="inquiry_confirm">
            <s:if test="#session.inquiryDTOList !==null">
			<span>INQUIRY MESSAGE</span>


			<table border="1">
			<tbody>
			<tr>
				<th>名前</th>
				<th>メールアドレス</th>
				<th>お問い合わせの種類</th>
				<th>お問い合わせ内容</th>
			</tr>

			<s:iterator value="#session.inquiryDTOList">
			<tr>
				<td><s:property value="inquiry_name"/></td>

				<td><s:property value="inquiry_mail"/></td>

				<s:if test='qtype=="company"'>
				<td>会社について</td>
				</s:if>

				<s:if test='qtype=="product"'>
				<td>商品について</td>
				</s:if>

				<s:if test='qtype=="order"'>
				<td>注文について</td>
				</s:if>

				<s:if test='qtype=="support"'>
				<td>アフターサポートについて</td>
				</s:if>

				<s:if test='qtype=="another"'>
				<td>その他のお問い合わせ</td>
				</s:if>

				<td><s:property value="body"/></td>
			</tr>
			</s:iterator>
			</tbody>
			</table>
			<div class="push"></div>

			<!-- 履歴の削除機能 -->

			<s:form action="InquiryAllDeleteAction">
				<input type="hidden" name="deleteFlg" value="1">
				<s:submit class="button" value="一覧の削除" method="delete"/>
			</s:form>
            </s:if>

<!--         問合せがない場合 -->
		<s:elseif test="#session.inquiryDTOList==null">
			<div class="push"></div>
			<span>INQUIRY MESSAGE</span>
			<br>
			<div class="error-message">お問合せメッセージはありません。</div>
			<div class="push"></div>
		</s:elseif>







<!-- 		<!-- messageに値が入っている場合は表示 -->
<%-- 			<s:if test="message != null"> --%>
<!-- 			<div class="push"></div> -->
<%-- 			<p class="error-message"><s:property value="message"/></p> --%>
<%-- 			</s:if> --%>


        <div>
		<p><a href='<s:url action="GoMasterPageAction"/>'>管理画面へ戻る場合はこちら</a></p>
		<p><a href='<s:url action="LogoutAction"/>'>ログアウトする場合はこちら</a></p>
        </div>
     </div>
   </div>
     <s:include value="footer.jsp"/>

</body>
</html>