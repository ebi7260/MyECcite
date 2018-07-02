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


<title>BuyItem画面</title>
<!-- CSSの読み込み -->
<link rel="stylesheet" type="text/css" href="./css/basic_style.css">
<link rel="stylesheet" type="text/css" href="./css/table_style.css">
</head>
<body>
      <s:include value="header.jsp"/>
      <div id="main">
              <div id="top">
                      <p>BuyItem</p>
              </div>

              <!-- 商品検索機能 -->
              <s:form action="SearchAction">
              <tr>
                  <td><s:textfield name="searchWord" value=""/></td>
                  <td><s:submit class="button" value="検索"/></td>
              </tr>
              </s:form>
              <!-- メイン部分 -->
              <div class="item-table">
                    <s:form action="BuyItemAction">
                    <table>


                      <s:iterator value="#session.buyItemDTOList">
                      <dl class="dl-list">
                      <dd class="dd-list">
                      <img class="image" style="width:150px; height:120px;" src="<s:property value='image_file_path'/>">
                      <br><br>
                      <s:property value="itemName" /><br>

                      <span>値段:</span>

                      <s:property value="itemPrice" /><span>円</span><br>

                      <span>在庫:</span>
                      <s:if test="item_stock>0">
                         <s:property value="item_stock"/>
                      </s:if>
                      <s:else>
                         <span class="error-message">品切れ</span>
                      </s:else>
                      <br>
                      <span>購入個数:</span>
                      <s:if test="item_stock>0">
                      <div class="select-box">
                      <select name="count">
                                                     <option value="0" selected="selected">-</option>
                                                     <option value="1">1</option>
                                                     <option value="2">2</option>
                                                     <option value="3">3</option>
                                                     <option value="4">4</option>
                                                     <option value="5">5</option>
                      </select>
                      </div>
                      </s:if>
                      <s:else>
                      <select name="count">
                              <option value="0" selected="selected">0</option>
                      </select>
                      </s:else>
                      </dd>
                      </dl>
                      </s:iterator>

                      </table>
                      <!-- ここまで繰り返し処理、ここから支払い選択 -->
                      <div class="clear"></div>
                      <div class="pay-push">
                      <table>

                           <tr>
                                  <td>
                                        <span>支払い方法</span>
                                  </td>
                                  <td>
                                        <input type="radio" name="pay" value="1" checked="checked">現金払い
                                        <input type="radio" name="pay" value="2">クレジットカード
                                  </td>
                          </tr>
                          <tr>
                                  <td>
                                        <s:submit value="購入"/>
                                  </td>
                          </tr>
                      </table>
                      </div>



                     </s:form>
                    </div>
                          <p>前画面に戻る場合は<a href='<s:url action="GoHomeAction" />'>こちら</a></p>
                          <p>疑問点がございましたら<a href='<s:url action="InquiryAction" />'>こちら</a>からお問い合わせください</p>
                        </div>





           <s:include value="footer.jsp"/>

</body>
</html>