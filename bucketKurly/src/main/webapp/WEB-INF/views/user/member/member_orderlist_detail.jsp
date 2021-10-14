<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<c:set var="path" value="${pageContext.request.contextPath}" />

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" type="text/css" href="resources/css/member_orderlist_detail.css">
<link rel="stylesheet" type="text/css" href="resources/css/common.css">
<style>
	.duplicate_check {    border: 1px solid #5f0080;    background-color: #fff;    color: #5f0080;    display: inline-block;    width: 300px;   margin-top: 30px;   margin-left: 5px;    vertical-align: top;    height: 70px;    border-radius: 3px;    font-weight: 700;    font-size: 18px;    line-height: 40px;    text-align: center;    outline: none;}
</style>

<title>마이페이지_주문 내역 상세</title>

</head>
<body>
	<div id="wrap" class="">
		<div id="pos_scroll"></div>
		<div id="container">

			<!-- header -->
			<%@ include file="/WEB-INF/views/layout/header.jsp"%>

			<!-- main -->
			<div id="main">
				<div id="content">
					<div class="bg_loading" id="bgLoading">
						<div class="loading_show"></div>
					</div>
					<div class="page_aticle aticle_type2">				
						<div id="snb" class="snb_my">
							<h2 class="tit_snb">마이컬리</h2>
							<div class="inner_snb">
								<ul class="list_menu">
									<li class="on">
										<a href="${pageContext.request.contextPath}/member_orderlist.do">주문 내역</a>
									</li>
									<li>
										<a href="${pageContext.request.contextPath}/board_qna_insert.do">상품 문의</a>
									</li>
									<li>
										<a href="########">상품 후기</a>
									</li>
									<li>
										<a href="#none">적립금</a>
									</li>
									<li>
										<a href="#none">쿠폰</a>
									</li>
									<li>
										<a href="${pageContext.request.contextPath}/memberinfo.do">개인 정보 수정</a>
									</li>
								</ul>
							</div>
							<a href="${pageContext.request.contextPath}/board_qna_insert.do" class="link_inquire">
								<span class="emph">도움이 필요하신가요 ?</span> 1:1 문의하기
							</a>
						</div>
					
						<div class="page_section section_orderview" >
							<div class="head_aticle">
								<h2 class="tit">주문 내역 상세</h2>
							</div>
							
							<div class="head_section link_type">
								<input type = "hidden" id = "order_no" value = "${info.order_no}"/>
								<h3 class="tit"> 주문번호 &nbsp;&nbsp;:&nbsp;&nbsp;${info.order_no}</h3>
								<input type="hidden" id="merchantNum" value="${info.order_merchant_no}">
							</div>
							
							<form name="frmOrdView" method="post">
								<input type="hidden" name="mode">
								<input type="checkbox" name="include" checked="checked" value="" class="chk_cart">
									<table class="tbl tbl_type1">
										<colgroup>
											<col style="width:12%; text-align:center;">
											<col style="width:auto">
											<col style="width:30%; text-align:center;">
										</colgroup>
										<tbody>
											<c:forEach items="${orderlist}" var="orderlist">
												<tr>
													<td class="thumb">
														<a href="${pageContext.request.contextPath}/goods_list_detail.do?goods_sell_no=${orderlist.goods_sell_no}" style="background-image: url(&quot;${orderlist.category_goods_image_thumb}&quot;);"></a>
													</td>
													<td class="info">
														<div class="name">
															<a href="" class="link">${orderlist.category_goods_name}</a>
														</div>
														<div class="desc">															
															<span class="price">${orderlist.goods_sell_price}원</span>															
															<span class="ea">${orderlist.order_details_goods_count}개</span>
														</div>
													</td>
													<td class="progress">${info.order_delivery_status}</td>
												</tr>
											</c:forEach>		
										</tbody>
									</table>
								</form>	
								
									
									<!-- 결제 정보 영역 -->
								
									<div class="head_section">
										<h3 class="tit">결제정보</h3>
									</div>
									
									<table class="tbl tbl_type2 tbl_type3">
										<colgroup>
											<col style="width:160px">
											<col style="width:auto">
										</colgroup>
										<tbody>
											<tr>
												<th>상품금액</th>
													<td><span id="paper_goodsprice">${info.order_goods_price - info.order_delivery_fee}</span>원
													</td>
											</tr>
											<tr>
												<th>배송비</th>
													<td>
														<div id="paper_delivery_msg1">
															<span id="paper_delivery">${info.order_delivery_fee}</span>원
														</div>
													</td>
											</tr>
											<!-- 
											<tr>
												<th>상품할인금액</th>
													<td>- <span id="paper_goodsDc">3,890</span>원</td>
												</tr>
											<tr>
												<th>쿠폰할인</th>
												<td>- <span id="paper_coupon">10,000</span>원</td>
											</tr>
											<tr>
												<th>적립금사용</th>
													<td><span id="paper_emoney">0</span>원</td>
											</tr>
											 -->
											<tr>
												<th>결제금액</th>
													<td><span id="paper_settlement">${info.order_goods_price}</span>원
													</td>
											</tr>
											<tr>
												<th>적립예정금액</th>
													<td>
														<strong class="emph">(배송완료 다음날 적립 예정)</strong>975원
													</td>
											</tr>
											<tr>
												<th>결제방법</th>
													<td>신용카드 <img src="//res.kurly.com/pc/admin/1801/icon_payco.gif"></td>
											</tr>
										</tbody>
									</table>
									
									<!-- 주문 정보 영역 -->
									
									<div class="head_section">
										<h3 class="tit">주문정보</h3>
									</div>
									<table class="tbl tbl_type2">
										<colgroup>
											<col style="width:160px">
											<col style="width:auto">
										</colgroup>
											<tbody>
												<tr>
													<th>주문자명</th>
														<td>${info.order_name}</td>
												</tr>
												<tr>
													<th>보내는 분</th>
														<td>${info.order_name}</td>
												</tr>
												<tr>
													<th>결제일시</th>
														<td>${info.order_date}</td>
												</tr>
											</tbody>
									</table>
									
									<!-- 배송 정보 영역 -->
									
									<div class="head_section">
										<h3 class="tit">배송 정보</h3>
									</div>
									<table class="tbl tbl_type2">
										<colgroup>
											<col style="width:160px">
											<col style="width:auto">
										</colgroup>
											<tbody>
												<tr>
													<th>받는 분</th>
													<td>${info.order_name}</td>
												</tr>
												<tr>
													<th>핸드폰</th>
													<td>${info.order_phone}</td>
												</tr>
												<tr>
													<th>배송방법</th>
													<td>샛별배송</td>
												</tr>
												<tr>
													<th>주소</th>
													<td>
														${info.order_address}
													</td>
												</tr>
												<tr>
													<th>포장방법</th>
													<td>종이 포장재</td>
												</tr>
											
											</tbody>
									</table>

									<!--  추가 정보 영역 -->
									<div class="head_section">
										<h2 class="tit">추가 정보</h2>
									</div>
									<table class="tbl tbl_type2">
										<colgroup>
										<col style="width:160px">
										<col style="width:auto">
										</colgroup>
											<tbody>
												<tr>
													<th>메세지 전송 시점</th>
													<td id="orderview_delivery_message_time">배송 직후</td>
												</tr>
												<tr>
													<th>미출시 조치방법</th>
													<td>결제수단으로 환불</td>
												</tr>
											</tbody>
									</table>
									
									<c:if test="${info.order_delivery_status ne '환불대기' and info.order_delivery_status ne '환불완료' and info.order_delivery_status ne '구매확정'}">
										<div style="text-align: center;">
											<button id="refundRequest" onclick="refundRequest()" class="duplicate_check" type="button">전체상품 주문취소</button>
										</div>
									</c:if>
						</div>			
					</div>
				
				</div>
			</div>
						

			<!-- layerDSR -->
			<%@ include file="/WEB-INF/views/layout/layerDSR.jsp"%>


			<!-- footer -->
			<%@ include file="/WEB-INF/views/layout/footer.jsp"%>

		<a href="#top" id="pageTop" class="on" style="opacity: 1; bottom: 15px;">맨 위로가기</a>
		</div>
	</div>
	
	<!-- 환불요청 -->
	<script>	
		$("#refundRequest").on("click", function(){	
		
	     var refund_price = $('#paper_settlement').text();	//refund price 	
	  	 console.log(refund_price);
	  	 var order_no = $('#order_no').val();	//order_no 	
	  	 console.log(order_no);
	  	 var merchant_no = $('#merchantNum').val();	//merchant_no 	
	  	 console.log(merchant_no);
		 	
				$.ajax({
					url : 'insert_refund.do',
					type : 'POST',
					data : {'refund_price' : refund_price, 'order_no' : order_no, 'merchant_no' : merchant_no},					
					success : function(result) {
						if (result == 1) {
							alert("환불 요청에 성공했습니다.");
							window.location.href = "${pageContext.request.contextPath}/member_orderlist.do";
						} 
					},
						error : function() {
							alert("환불 요청에 성공했습니다.");
							window.location.href = "${pageContext.request.contextPath}/member_orderlist.do";
						}
				});
		
	});
	</script>
		
</body>
</html>




