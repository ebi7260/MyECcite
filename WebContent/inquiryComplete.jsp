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

<!-- CSSとSCRIPTの読み込み -->
     <link rel="stylesheet" type="text/css" href="./css/basic_style.css">

<title>InquiryComplete画面</title>
</head>
<body>
<s:include value="header.jsp"/>
<div id="main">
              <div id="top">
                      <p>INQUIRY CONFIRM</p>
              </div>
              <div class="main-contents">
                   <p>お問い合わせを受け付けました。</p>
                   <br><br>

                   <p>内容確認の後、ご返信いたします。</p>
                   <br>

                   <p><a href='<s:url action="GoHomeAction"/>'>Homeへ戻る場合はこちら</a></p>
          </div>
</div>




<s:include value="footer.jsp"/>


</body>
</html>