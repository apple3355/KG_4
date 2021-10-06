<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<c:set var="path" value="${pageContext.request.contextPath}" />

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" type="text/css" href="resources/css/member_orderlist.css">
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
				<div id="myPageTop" class="page_aticle mypage_top">
				<mypage-top :kurlylovers_benefit_tag="kurlylovers_benefit_tag" :kurlylovers_benefit_badge="kurlylovers_benefit_badge" :member-benefits-point-type="memberBenefitsPointType" :member-benefits-point-tag="memberBenefitsPointTag" :member-benefits-point-vallue="memberBenefitsPointVallue" :member-benefits-point-description="memberBenefitsPointDescription" :member-benefits-delivery-type="memberBenefitsDeliveryType" :member-benefits-delivery-tag="memberBenefitsDeliveryTag" :member-benefits-delivery-vallue="memberBenefitsDeliveryVallue" :member-benefits-delivery-description="memberBenefitsDeliveryDescription" :member-benefits-special-type="memberBenefitsSpecialType" :member-benefits-special-tag="memberBenefitsSpecialTag" :member-benefits-special-vallue="memberBenefitsSpecialVallue" :member-benefits-special-description="memberBenefitsSpecialDescription" :user-name="userName" :user-grade="userGrade" :user-grade-info="userGradeInfo" :user-grade-name="userGradeName" :accumulated-money="accumulatedMoney" :coupon-count="couponCount" :expire-date="expireDate" :expire-point="expirePoint" :kurly-pass-expiration-date="kurlyPassExpirationDate" :type="type" :notification-check="notificationCheck" :imc-data="imcData" :imc-time="imcTime"></mypage-top>
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
											</div> <div class="spacer"></div>
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
							
								<a href="/shop/mypage/mypage_qna_register.php?mode=add_qna" class="link_inquire"><span class="emph">도움이 필요하신가요 ?
									</span> 1:1 문의하기
								</a>
					</div>
					
					<div id="viewOrderList" class="page_section section_orderlist" v-cloak>
						<div class="head_aticle">
							<h2 class="tit">주문 내역 <span class="tit_sub">지난 3년간의 주문 내역 조회가 가능합니다</span></h2>
						</div>
							<div class="search_date">
								<h3 class="screen_out">기간 선택</h3>
									<a href="#none" v-html="checkYear" class="btn_layer">
										전체기간
									</a>
										<ul class="layer_search">
											<li><a href="#none" @click="searchResult" class="on">전체기간</a></li>
											<li><a href="#none" @click="searchResult" data-year="2021">2021 년</a></li>
											<li><a href="#none" @click="searchResult" data-year="2020">2020 년</a></li>
											<li><a href="#none" @click="searchResult" data-year="2019">2019 년</a></li>
										</ul>
							</div>
							
									<ul class="list_order">
										<order-itemlist-pc v-for="itemview in postsArray" :ref="itemview.no" :itemview="itemview" :key="itemview.no" :search-date-hash="searchDateHash" v-if="!noData"></order-itemlist-pc>
											<!-- <li v-if="noData" class="no_data">
											주문내역이 없습니다.
											</li>  -->
											<li>
												<div class="date">2021.10.05 (16시 13분)</div>
													<div class="order_goods">
														<div class="name">
															<a>[동원참치] 라이트 스탠다드 85g 8캔 외 2건</a>
														</div> 
														<div class="order_info">
															<div class="thumb">
																	<img src="https://img-cf.kurly.com/shop/data/goods/1575002815187s0.jpg" alt="해당 주문 대표 상품 이미지">
															</div>
																<div class="desc">
																	<dl><dt>주문번호</dt> <dd>1633417964220</dd></dl>
																	<dl><dt>결제금액</dt> <dd>19,490원</dd></dl>
																	<dl><dt>주문상태</dt> <dd class="status">입금확인</dd></dl>
																</div>
														</div>
															
															<div class="order_status" style="display: none;"><span class="inner_status">
																<!---->
																<!---->
																<a class="link ga_tracking_event">1:1 문의</a>
																</span></div>
													</div>
												</li>								
									</ul>
									<div class="layout-pagination">
										<div class="pagediv">
											<a href="#viewOrderList" class="layout-pagination-button layout-pagination-first-page">맨 처음 페이지로 가기</a>
											<a href="#viewOrderList" class="layout-pagination-button layout-pagination-prev-page">이전 페이지로 가기</a>
												<span>
												<!---->
												<strong class="layout-pagination-button layout-pagination-number __active">1</strong></span>
											<a href="#viewOrderList" class="layout-pagination-button layout-pagination-next-page">다음 페이지로 가기</a>
											<a href="#viewOrderList" class="layout-pagination-button layout-pagination-last-page">맨 끝 페이지로 가기</a>
										</div>
									</div>															
						
					</div>			
				</div>
				
				<div id="oftenList" style="display:none"></div>					
					<script>
					    $('.search_date .btn_layer').on('click',function(e){
					        e.preventDefault();
					        $(this).toggleClass('on');
					        $('.search_date .layer_search').slideToggle(100);
					    });
					
					    // KM-1483 Amplitude
					    KurlyTracker.setScreenName('order_history').setTabName('my_kurly');
					</script>
					
				
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




