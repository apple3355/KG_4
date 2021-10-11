<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<c:set var="path" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>버켓컬리 :: 내일의 장보기, 버켓컬리</title>
<!-- 1. 제이쿼리 라이브러리 파일을 먼저 연동하고,  -->
<script src="http://code.jquery.com/jquery-latest.js"></script>
<!-- 2. 이어서 bxSlider 플러그인 파일을 연동시켜야 한다. -->
<script src="resources/js/jquery.bxslider.min.js"></script>

<!-- Swiper -->
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/Swiper/4.5.1/css/swiper.min.css">
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/Swiper/4.5.1/js/swiper.min.js"></script>

<link rel="shortcut icon"
	href="https://bucketkurly.s3.ap-northeast-2.amazonaws.com/bucketKurly(main)/favicon_v2.webp"
	type="image/x-icon">

<link rel="stylesheet" type="text/css"
	href="resources/css/goods_list_detail.css">
<link rel="stylesheet" type="text/css" href="resources/css/main.css">
<link rel="stylesheet" type="text/css" href="resources/css/common.css">

<script src="resources/js/goods_list_detail.js"></script>



<style>
#mainEvent li {
	padding-bottom: 10px
	
}

#mainEvent a {
	display: block;
	overflow: hidden;
	position: relative
}


</style>

	<body>
		<div id="wrap" class="">
			<div id="pos_scroll"></div>
				<div id="container">
				
					<!-- header -->
					<%@ include file="/WEB-INF/views/layout/header.jsp"%>
					
					<div id="main">
						<div id="content">

							<div class="page_aticle">
								<div id="mainEvent" class="page_section section_event" style="position: relative;">
														
									<ul class="list">
																	
										<c:forEach items="${banner}" var="banner" >
											<div style="list-style: none; position: relative;" class="bx-clone" data-name="main_banner">
												<img class="thumb_goods" alt="${banner.banner_title}" src="${banner.banner_filepath}" style="padding-left:200px; padding-right:200px; padding-bottom: 10px;" />
											</div>
										</c:forEach>
										<!-- 배너 끝 -->
									</ul>
								
								</div>
							</div>

						</div>
					</div>
			
								
								<!--
									<ul class="list">
										<li>
											<a href="https://www.kurly.com/shop/goods/goods_list.php?category=632" data-git=""> 
											<img src="//img-cf.kurly.com/shop/data/event/010cb447fde03de73c0e5ea7f7744145.jpg" alt="">
											</a>
										</li>
										
										<li><a
											href="https://www.kurly.com/shop/goods/goods_list.php?category=634"
											data-git=""> <img
												src="//img-cf.kurly.com/shop/data/event/b246166370a3bf9913eb4d348359e8c1.jpg"
												alt="">
										</a></li>
										<li><a
											href="https://www.kurly.com/shop/goods/goods_list.php?category=633"
											data-git=""> <img
												src="//img-cf.kurly.com/shop/data/event/5684d4c3ea9f8df3a5fcaf247b7defb1.jpg"
												alt="">
										</a></li>
										<li><a
											href="https://www.kurly.com/shop/goods/goods_list.php?category=609"
											data-git=""> <img
												src="//img-cf.kurly.com/shop/data/event/9df67079bb603896d51917d1832c601b.jpg"
												alt="">
										</a></li>
										<li><a
											href="https://www.kurly.com/shop/goods/goods_list.php?category=695"
											data-git=""> <img
												src="//img-cf.kurly.com/shop/data/event/20b8a26ba812efe49cf1f6ba1491d67f.jpg"
												alt="">
										</a></li>
										
										
									
									</ul>
									-->
		
					<a href="#top" id="pageTop">맨 위로가기</a>
					<script>
						$(document)
								.ready(
										function() {
											var pageTop = {
												$target : $('#pageTop'),
												$targetDefault : 0,
												$scrollTop : 0,
												$window : $(window),
												$windowHeight : 0,
												setTime : 500,
												saveHeight : 0,
												init : function() {
												},
												action : function() {
													var $self = this;
													$self.$windowHeight = parseInt($self.$window
															.height());
													$self.$window
															.on(
																	'scroll',
																	function() {
																		$self.$scrollTop = parseInt($self.$window
																				.scrollTop());
																		if ($self.$scrollTop >= $self.$windowHeight) {
																			if (!$self.$target
																					.hasClass('on')) {
																				$self
																						.position();
																				$self.$target
																						.addClass('on');
																				$self
																						.showAction();
																			}
																		} else {
																			if ($self.$target
																					.hasClass('on')) {
																				$self
																						.position();
																				$self.$target
																						.removeClass('on');
																				$self
																						.hideAction();
																			}
																		}
																	});

													$self.$target
															.on(
																	'click',
																	function(e) {
																		e
																				.preventDefault();
																		$self
																				.topAction();
																	});
												},
												showAction : function() {
													var $self = this;
													$self.$target
															.stop()
															.animate(
																	{
																		opacity : 1,
																		bottom : $self.saveHeight
																	},
																	$self.setTime);
												},
												hideAction : function() {
													var $self = this;
													$self.$target
															.stop()
															.animate(
																	{
																		opacity : 0,
																		bottom : -$self.$target
																				.height()
																	},
																	$self.setTime);
												},
												topAction : function() {
													var $self = this;
													$self.hideAction();
													$('html,body').animate({
														scrollTop : 0
													}, $self.setTime);
												},
												position : function() {
													var $self = this;
													$self.saveHeight = 15;
													if ($('#sectionView').length > 0) {
														$self.saveHeight = 25;
													}
													if ($('#branch-banner-iframe').length > 0
															&& parseInt($(
																	'#branch-banner-iframe')
																	.css(
																			'bottom')) > 0) {
														$('#footer').addClass(
																'bnr_app');
														$self.saveHeight += $(
																'#branch-banner-iframe')
																.height();
													}
												}
											}
											pageTop.action();
										});
					</script>
			
    
		<!-- layerDSR -->
    	<%@ include file="/WEB-INF/views/layout/layerDSR.jsp"%>   
      <!-- footer -->
      <%@ include file="/WEB-INF/views/layout/footer.jsp"%>            
 	</div>
</div>
   
   <a href="#top" id="pageTop">맨 위로가기</a>

		</body>
</html>