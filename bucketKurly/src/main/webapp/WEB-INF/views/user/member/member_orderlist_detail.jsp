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

<title>마이페이지_주문 내역(member_orderlist)</title>

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
			
					<div id="qnb" class="quick-navigation">							
						<div class="bnr_qnb" id="brnQuick"></div>				
					</div>
					<script id="delivery"></script>				
				<div id="myPageTop" class="page_aticle mypage_top">
				<!-- <mypage-top :kurlylovers_benefit_tag="kurlylovers_benefit_tag" :kurlylovers_benefit_badge="kurlylovers_benefit_badge" :member-benefits-point-type="memberBenefitsPointType" :member-benefits-point-tag="memberBenefitsPointTag" :member-benefits-point-vallue="memberBenefitsPointVallue" :member-benefits-point-description="memberBenefitsPointDescription" :member-benefits-delivery-type="memberBenefitsDeliveryType" :member-benefits-delivery-tag="memberBenefitsDeliveryTag" :member-benefits-delivery-vallue="memberBenefitsDeliveryVallue" :member-benefits-delivery-description="memberBenefitsDeliveryDescription" :member-benefits-special-type="memberBenefitsSpecialType" :member-benefits-special-tag="memberBenefitsSpecialTag" :member-benefits-special-vallue="memberBenefitsSpecialVallue" :member-benefits-special-description="memberBenefitsSpecialDescription" :user-name="userName" :user-grade="userGrade" :user-grade-info="userGradeInfo" :user-grade-name="userGradeName" :accumulated-money="accumulatedMoney" :coupon-count="couponCount" :expire-date="expireDate" :expire-point="expirePoint" :kurly-pass-expiration-date="kurlyPassExpirationDate" :type="type" :notification-check="notificationCheck" :imc-data="imcData" :imc-time="imcTime"></mypage-top> -->
					<h2 class="screen_out">마이페이지</h2>
						<div class="mypagetop_user">
							<div class="inner_mypagetop">
								<div class="grade_user">
									<div class="grade_wrap">
										<div class="grade_logo class6">웰컴</div>
											<strong class="name">###님</strong>
									</div>
									<div class="grade_bnenfit">
										<!---->
										<div class="benefit">
											<strong class="tit"> </strong>
											적립 5%
										</div>
										<div class="benefit">
											<strong class="tit"> </strong>
											최초 1회 무료배송
										</div>
										<div class="benefit"> </div>										
									</div>
									<div class="next">
										<a href="#none" onclick="KurlyTrackerLink('/shop/event/lovers/lovers.php', 'select_my_kurly_membership_guide')" class="total_grade">전체등급 보기</a>
										<a href="#none" onclick="KurlyTrackerLink('/shop/proc/my_benefit.php?id=benefit', 'select_my_kurly_membership_benefit')" class="next_month">다음 달 예상등급 보기</a>
									</div>
								</div>
								<div class="list_mypage">
									<div class="list">
										<a href="#none" onclick="KurlyTrackerLink('/shop/mypage/mypage_emoney.php', 'select_my_kurly_point_history', {selection_type: 'top'})" class="link_wrap">
											<div class="link_title"> 적립금 
												<!---->
												<img src="https://res.kurly.com/kurly/ico/2021/arrow_right_gray_56_56.png" alt="" class="arrow_right">
											</div> 
											<div class="spacer"></div>
												<p class="info"> 0 원 <span class="expire"> 소멸 예정 0 원 </span>
												</p>
										</a>
										
										<a href="#none" onclick="KurlyTrackerLink('/shop/mypage/mypage_coupon.php', 'select_my_kurly_coupon_list', {selection_type: 'top'})" class="link_wrap">
											<div class="link_title"> 쿠폰
												<!---->
												<img src="https://res.kurly.com/kurly/ico/2021/arrow_right_gray_56_56.png" alt="" class="arrow_right"></div>
													<div class="spacer"></div>
														<p class="info">2 개</p>
										</a>
										
										<a href="#none" onclick="KurlyTrackerLink('/shop/event/kurlyEvent.php?htmid=event/reusable_packaging/purplebox', 'select_my_kurly_purple_box')" class="link_wrap">
											<div class="link_title"> 컬리 퍼플 박스 
												<img src="https://res.kurly.com/kurly/ico/2021/arrow_right_gray_56_56.png" alt="" class="arrow_right"></div>
													<div class="spacer"></div>
														<p class="info">알아보기</p>
										</a>
										
										<a href="/shop/mypage/kurlypass.php" class="link_wrap"><div class="link_title"> 컬리패스
											<img src="https://res.kurly.com/kurly/ico/2021/arrow_right_gray_56_56.png" alt="" class="arrow_right"></div>
												<div class="spacer"></div>
													<p class="info"> 알아보기 </p>
										</a>
									</div>
									<!---->
								</div>
							</div>
							<a href="https://www.kurly.com/shop/main/html.php?htmid=event/kurly.htm&amp;name=basket" class="bnr_event" style="background-image: url(&quot;//img-cf.kurly.com/shop/data/skin/designgj/img/banner/02397884eed80e3d0108c9cbf0a840ee.jpg&quot;);">
								<img src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAXcAAAA8CAQAAAA3ITJuAAAAAXNSR0IArs4c6QAAAEJJREFUeAHtwQENAAAAwiD7p34ON2AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAcCKwBAABQveChQAAAABJRU5ErkJggg==" alt="할인혜택보러가기">
							</a>							
						</div>				
					</div>
				
					<div class="bg_loading" id="bgLoading">
						<div class="loading_show"></div>
					</div>
					
					
				<div class="page_aticle aticle_type2">				
					<div id="snb" class="snb_my">
						<h2 class="tit_snb">마이컬리</h2>
							<div class="inner_snb">
								<ul class="list_menu">
									<li class="on">
										<a href="/shop/mypage/mypage_orderlist.php">주문 내역</a>
									</li>
				
									<li>
										<a href="#none" onclick="KurlyTrackerLink('/shop/mypage/mypage_gift.php', 'select_my_kurly_gift_list')">선물 내역</a>
									</li>
									<li>
										<a href="#none" onclick="KurlyTrackerLink('/shop/mypage/destination/list.php', 'select_shipping_address_list')">배송지 관리</a>
									</li>
									<li>
										<a href="/shop/mypage/mypage_review.php">상품 후기</a>
									</li>
									<li>
										<a href="/shop/mypage/product_inquiry.php">상품 문의</a>
									</li>
									<li>
										<a href="#none" onclick="KurlyTrackerLink('/shop/mypage/mypage_emoney.php', 'select_my_kurly_point_history', {selection_type: 'mypage'})">적립금</a>
									</li>
									<li>
										<a href="#none" onclick="KurlyTrackerLink('/shop/mypage/mypage_coupon.php', 'select_my_kurly_coupon_list', {selection_type: 'mypage'})">쿠폰</a>
									</li>
									<li>
										<a href="/shop/member/myinfo.php">개인 정보 수정</a>
									</li>
								</ul>
							</div>
							
								<a href="/shop/mypage/mypage_qna_register.php?mode=add_qna" class="link_inquire">
									<span class="emph">도움이 필요하신가요 ?
									</span> 1:1 문의하기
								</a>
					</div>
					
					<div class="page_section section_orderview" >
						<div class="head_aticle">
							<h2 class="tit">주문 내역 상세</h2>
						</div>
							<div class="head_section link_type">
								<h3 class="tit">주문번호 1633417964220</h3>
								<span class="link">
								배송 또는 상품에 문제가 있나요?
									<a href="/shop/mypage/mypage_qna_register.php?mode=add_qna&amp;ordno=1633417964220">1:1 문의하기</a>
								</span>
							</div>
								<form name="frmOrdView" method="post">
									<input type="hidden" name="mode">
									<input type="checkbox" name="include" checked="checked" value="" class="chk_cart">
										<table class="tbl tbl_type1">
											<colgroup>
												<col style="width:80px;">
												<col style="width:auto">
												<col style="width:100px;">
												<col style="width:136px;">
											</colgroup>
												<tbody>
													<tr>
														<td class="thumb">
															<a href="/shop/goods/goods_view.php?&amp;goodsno=42606" style="background-image:url(//img-cf.kurly.com/shop/data/goods/1575002815187s0.jpg)"></a>
														</td>
														<td class="info">
															<div class="name">
																<a href="/shop/goods/goods_view.php?&amp;goodsno=42606" class="link">[동원참치] 라이트 스탠다드 85g 8캔</a>
															</div>
															<div class="desc">															
																<span class="price">10,800원</span>															
																<span class="ea">1개</span>
															</div>
														</td>
														<td class="progress ">
															상품준비중
														</td>
														<td class="action" style="display: none;">
															<button type="button" class="btn btn_cart ga_tracking_event" onclick="cartLayerOpenAction('42606')">장바구니 담기</button>
														</td>														
													</tr>		
												</tbody>
										</table>
									</form>	
									
									<div id="orderCancel" class="order_cancel" style="display: none;">
									<span class="inner_cancel">
									
									<button type="button" id="cartPutAll" class="btn btn_cart">전체 상품 다시 담기</button>
									<button type="button" class="btn btn_cancel off">전체 상품 주문 취소</button>
									</span>
									<p class="cancel_notice">직접 주문취소는 ‘입금확인’ 상태일 경우에만 가능합니다.</p>
									</div>								
									
									<!--  배송 조회 영역 -->
									
									<div class="order_delivery">
										<h3 class="tit">배송조회</h3>
											<ul class="list_status">
												<li class="no_delivery">배송중 단계부터 배송상태 확인이 가능합니다.</li>
											</ul>
									</div>
									
									<!-- 결제 정보 영역 -->
									
									<div class="head_section">
										<h3 class="tit">
											결제정보
												<span class="txt_sub">※ 본 주문은 페이코 서비스로 결제되었습니다. 세부 결제내역은 페이코 구매내역을 확인하여 주십시오.</span>
										</h3>
									</div>
									
									<table class="tbl tbl_type2 tbl_type3">
										<colgroup>
											<col style="width:160px">
											<col style="width:auto">
										</colgroup>
											<tbody>
												<tr>
													<th>상품금액</th>
														<td><span id="paper_goodsprice">33,380</span>원
														</td>
												</tr>
												<tr>
													<th>배송비</th>
														<td>
															<div id="paper_delivery_msg1">
																<span id="paper_delivery">0</span>원
															</div>
															<div id="paper_delivery_msg2" style="">최초 1회 무료배송</div>
														</td>
												</tr>
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
												<tr>
													<th>결제금액</th>
														<td><span id="paper_settlement">19,490</span>원
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
														<th>주문 번호</th>
															<td>1633417964220</td>
													</tr>
													<tr>
														<th>주문자명</th>
															<td>이상원</td>
													</tr>
													<tr>
														<th>보내는 분</th>
															<td>이상원</td>
													</tr>
													<tr>
														<th>결제일시</th>
															<td>2021-10-05 16:13:15</td>
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
															<td>이상원</td>
													</tr>
													<tr>
														<th>핸드폰</th>
															<td>010-9408-****</td>
													</tr>
													<tr>
														<th>배송방법</th>
															<td>샛별배송</td>
													</tr>
													<tr>
														<th>주소</th>
															<td>
																(08785)
																서울 관악구 쑥고개로 63-8 (둥지오피스텔) 303호
															</td>
													</tr>
													<tr>
														<th>받으실 장소</th>
															<td>문 앞</td>
													</tr>
													<tr>
														<th>공동현관 출입 방법</th>
															<td>자유 출입 가능 </td>
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
</body>
</html>




