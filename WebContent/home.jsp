<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta http-equiv="Content-Script-Type" content="text/javascript" />
<meta http-equiv="imagetoolbar" content="no" />
<meta name="description" content="" />
<meta name="keywords" content="" />

<link rel="stylesheet" type="text/css" href="./css/basic_style.css">


<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/Swiper/3.4.1/css/swiper.min.css">
<script src="https://cdnjs.cloudflare.com/ajax/libs/Swiper/3.4.1/js/swiper.min.js"></script>

<script src="https://cdnjs.cloudflare.com/ajax/libs/Swiper/3.4.1/js/swiper.min.js"></script>
  <script type="text/javascript">
  window.addEventListener('load', function() {
    var mySwiper = new Swiper('.swiper-container', {
      loop: true,
      pagination: '.swiper-pagination',
      nextButton: '.swiper-button-next',
      prevButton: '.swiper-button-prev',
      speed: 3000,
      autoplay: 3000,
      effect:'fade'
    });
  }, false);


  </script>


<title>Home画面</title>


</head>
<body>
     <s:include value="header.jsp"/>
     <div id="main">
     <div class="swiper-container">
	<!-- Additional required wrapper -->
	<div class="swiper-wrapper">
		<!-- Slides -->

	     <div class="swiper-slide"><img src="./image/slide001.png"></div>
         <div class="swiper-slide"><img src="./image/slide002.png"></div>
         <div class="swiper-slide"><img src="./image/slide003.png"></div>
         <div class="swiper-slide"><img src="./image/slide004.png"></div>


	</div>
	<!-- If we need pagination -->
	<div class="swiper-pagination"></div>

	<!-- If we need navigation buttons -->
	<div class="swiper-button-prev"></div>
	<div class="swiper-button-next"></div>
</div>

             <div id="text-center">
<%--                 <s:form action="HomeAction"> --%>
<%--                        <s:submit value="商品購入"/> --%>
<%--                 </s:form> --%>
                <s:if test="#session.id !=null">
                       <p>ログアウトする場合は
                               <a href='<s:url action="LogoutAction"/>'>こちら</a></p>
                </s:if>
            </div>
        </div>

     <s:include value="footer.jsp"/>
</body>
</html>