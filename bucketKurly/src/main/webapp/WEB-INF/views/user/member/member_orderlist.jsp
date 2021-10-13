<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
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
										<a href="#################">상품 후기</a>
									</li>
									<li>
										<a href="${pageContext.request.contextPath}/board_qna_insert.do">상품 문의</a>
									</li>
									<li>
										<a href="################">적립금</a>
									</li>
									<li>
										<a href="################">쿠폰</a>
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
						
						<div id="viewOrderList" class="page_section section_orderlist" v-cloak>
							<div class="head_aticle">
								<h2 class="tit">주문 내역 <span class="tit_sub"> 지난 주문 내역 조회가 가능합니다</span></h2>
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
									<c:if test="${ empty  orderlist}">
										<li v-if="noData" class="no_data">주문내역이 없습니다.</li>
									</c:if>
									
									<c:if test="${ not empty  orderlist}">
										<c:forEach items="${orderlist}" var="orderlist" varStatus="status">
											<li>
												<div class="date">${orderlist.order_date}</div>
												<div class="order_goods">
													<div class="name">
														<input type="hidden" value="${orderlist.order_no}">
														<a>${orderlist.category_goods_name} 외 ${orderlist.order_goods_count} 건</a>
													</div> 
													<div class="order_info">
														<input type="hidden" value="${orderlist.order_no}">
														<div class="thumb" style="margin-top:20px;">
															<img src="${orderlist.category_goods_image_thumb}" alt="해당 주문 대표 상품 이미지">
														</div>
														<div class="desc">
															<dl><dt>주문번호</dt> <dd>${orderlist.order_no}</dd></dl>
															<dl><dt>결제금액</dt> <dd>${orderlist.order_goods_price}</dd></dl>
															<dl><dt>주문상태</dt> <dd class="status">${orderlist.order_delivery_status}</dd></dl>
														</div>
													</div>
														
													<div class="order_status" style="display: none;">
														<span class="inner_status">
															<a href="${pageContext.request.contextPath}/board_qna_insert.do" class="link ga_tracking_event">1:1 문의</a>
														</span>
													</div>
												</div>
											</li>
										</c:forEach>
									</c:if>
								</ul>
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
	<script>
		//상품 상세 페이지 이동
		$(".list_order li").on("click", ".name", function() {
		    var order_no = $(this).find('input').val();
		    
		    var url = "${pageContext.request.contextPath}/member_orderlist_detail.do";
			url = url + "?order_no=" + order_no;
			location.href = url;
		});
		
		//상품 상세 페이지 이동
		$(".list_order li").on("click", ".order_info", function() {
		    var order_no = $(this).find('input').val();
		    
		    var url = "${pageContext.request.contextPath}/member_orderlist_detail.do";
			url = url + "?order_no=" + order_no;
			location.href = url;
		});
	
	</script>	
</body>
</html>




