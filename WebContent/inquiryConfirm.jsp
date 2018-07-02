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

<!-- CSSとSCRIPT読み込み -->
<link rel="stylesheet" type="text/css" href="./css/basic_style.css">
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>
<script type="text/javascript">
       function submitAction(url){
    	   $('form').attr('action',url);
    	   $('form').submit();
       }
</script>
<title>InquiryConfirm画面</title>
</head>
<body>

<s:include value="header.jsp"/>
<div id="main">
              <div id="top">
                      <p>INQUIRY CONFIRM</p>
              </div>
              <div class="main-contents">
                   <p>質問内容は以下の通りでよろしいですか。</p>
                   <p class="error-message">※「戻る」を選択すると記入した情報は消去されます。</p>
                   <br><br>

                   <table>
			<s:form action="InquiryCompleteAction">
			<tr id="box">
				<td><span>名前:</span></td>
				<td><s:property value="inquiry_name"/></td>
			</tr>

			<tr>
				<td><span>メールアドレス:</span></td>
				<td>
				<s:property value="inquiry_mail"/>
				</td>
			</tr>

			<tr>
				<td><span>問い合わせの種類:</span>
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
			</tr>

			<tr>
				<td><span>問い合わせ内容:</span></td>
				<td><s:property value="body"/></td>
			</tr>

			<tr>
				<td><br><br><br></td>
			</tr>

			<tr>
				<td><input type="button" class="button" value="戻る" onclick="submitAction('InquiryAction')" /></td>
				<td>
				<input type="hidden" name="master_id" value="master"/>
				<input type="button" class="button" value="完了" onclick="submitAction('InquiryCompleteAction')" />
				</td>
			</tr>
			</s:form>

		</table>
          </div>
</div>

  <s:include value="footer"/>
</body>
</html>