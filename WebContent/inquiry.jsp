<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="Content-Script-Type" content="text/javascript" />
<meta http-equiv="imagetoolbar" content="no" />
<meta name="description" content="" />
<meta name="keywords" content="" />

<!-- CSSの読み込み -->
<link rel="stylesheet" type="text/css" href="./css/basic_style.css">
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>
<script type="text/javascript">
       function submitAction(url){
    	   $('form').attr('action',url);
    	   $('form').submit();
       }
</script>
<title>Inquiry画面</title>
</head>
<body>
  <s:include value="header.jsp"/>
<div id="main">
              <div id="top">
                      <p>INQUIRY</p>
              </div>
              <div class="main-contents">
                   <p>お問い合わせがある方は、下記よりご連絡をお願いいたします。</p>
            <div class="error-message">
			<s:if test="errorMessage != null ">
			<p><s:property value="errorMessage" escape="false"/></p>
			</s:if>
		    </div>
            <table>
            <s:form action="InquiryConfirmAction">
			名前<br>
				<input type="text" name="inquiry_name" value=""/><br><br>

			メールアドレス<br>
				<input type="text" name="inquiry_mail" value=""/><br><br>

			お問い合わせの種類<br>
				<select name="qtype">
				<option value="company">会社について</option>
				<option value="product">商品について</option>
				<option value="order">注文について</option>
				<option value="support">アフターサポートについて</option>
				<option value="another">その他のお問い合わせ</option>
				</select>

			<br><br>

			お問い合わせ内容<br>
				<s:textarea cols="30" rows="5" name="body" value=""/>
				<br>
				<input type="hidden" name="master_id" value="master"/>
				<s:submit class="button" value="送信" onclick="submitAction('InquiryCompleteAction')" />
		    </s:form>
           </table>

          </div>
         </div>
        <s:include value="footer.jsp"/>
</body>
</html>