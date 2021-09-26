<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<c:set var="path" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<link rel="stylesheet" type="text/css" href="resources/css/goods_list.css">
	<link rel="stylesheet" type="text/css" href="resources/css/common.css">
	<title>layout</title>
</head>
<body>
	<div id="wrap" class="">
		<div id="pos_scroll"></div>
		<div id="container">
		
			<!-- header -->
			<jsp:include page="/WEB-INF/views/layout/header.jsp"/>
			
			<!-- main-->
			<div id="main">
				<div id="content">
		
					<div class="page_aticle">
						<div id="lnbMenu" class="lnb_menu">
							<div id="bnrCategory" class="bnr_category" style="">
								<div class="thumb">
									<img src="	https://img-cf.kurly.com/category/banner/pc/ae744106-f596-4ca5-a940-7e86a0b8a9a3" alt="카테고리배너">
								</div>
							</div>
							
							<div class="inner_lnb">
								<h3 class="tit">${select_type}</h3>
								<ul class="list" style="">
									<li data-start="172" data-end="188">
										<a class="on">전체보기</a>
									</li> 
									<li class="bg"></li>
								</ul>
							</div>
						</div>
						
						<div id="goodsList" class="page_section section_goodslist">
							<div class="list_ability">
								<div class="sort_menu">
									<div class="">
										<p class="count"><span class="inner_count">총 ${itemCnt} 건</span></p>
										<div class="select_type user_sort">
											<a class="name_select">신상품순</a>												
											<ul class="list">
												<li><a class="">추천순</a></li>
												<li><a class="">신상품순</a></li>
												<li><a class="">인기상품순</a></li>
												<li><a class="">혜택순</a></li>
												<li><a class="">낮은 가격순</a></li>
												<li><a class="">높은 가격순</a></li>
											</ul>
										</div>
									</div>
								</div>
							</div>
							<div class="list_goods">
								<div class="inner_listgoods">
									<ul class="list">
								
										<!-- 상품 리스트 구분선 -->
										<c:forEach items="${goods_sell_list}" var="goods_sell_list">
											<li>																
												<div class="item">
													<div class="thumb">
														<a class="img" style="background-image: url(&quot;https://img-cf.kurly.com/shop/data/goods/1632445842263l0.jpg&quot;);" 
															href="javascript:void(0);" onClick="fn_goods_detail(${goods_sell_list.goods_sell_no})">
															<img src="${goods_sell_list.goodsvo.category_goods_image_thumb}" >
														</a>
														
													
														<div class="group_btn">
															<button type="button" class="btn btn_cart">
																<span class="screen_out"></span>
															</button>
														</div>
													</div>
												
													<a class="info" onClick="fn_goods_detail(${goods_sell_list.goods_sell_no})">
														<span class="name"><c:out value="${goods_sell_list.goodsvo.category_goods_name}"/></span>
														<span class="cost">
															<span class="price"><c:out value="${goods_sell_list.goods_sell_price}"/></span>
														</span>
														<span class="desc"><c:out value="${goods_sell_list.goodsvo.category_goods_name_sub}"/></span>
														<span class="tag"></span>
													</a>																 	
												</div>								
											</li>			
																								
										</c:forEach>	
																	
									</ul>
								</div>
							</div>
						
						
							<!-- 페이징 처리 -->
							<div class="layout-pagination" v-if="!noData">
								<div class="pagediv">
									<a href="#main" @click="onMoveList(1)" class="layout-pagination-button layout-pagination-first-page">맨 처음 페이지로 가기</a>
									<a href="#main" @click="onMoveList(pageCount-1)" class="layout-pagination-button layout-pagination-prev-page">이전 페이지로 가기</a>
										<list-goods-paging v-for="(paging, idx) in pagingCountArray" :idx="idx+1" :key="idx" :page-count="pageCount" :total-page-count="totalPageCount" @on-move-list="onMoveList"></list-goods-paging>
										<span><strong class="layout-pagination-button layout-pagination-number __active">1</strong>"</span>
										<span><strong class="layout-pagination-button layout-pagination-number __active">2</strong>"</span>
										<a href="#main" @click="onMoveList(pageCount+1)" class="layout-pagination-button layout-pagination-next-page">다음 페이지로 가기</a>
										<a href="#main" @click="onMoveList(totalPaging)" class="layout-pagination-button layout-pagination-last-page">맨 끝 페이지로 가기</a>
								</div>
							</div>
						</div>
					</div>

					<div class="bg_loading" id="bgLoading" style="display:block">
						<div class="loading_show"></div>
					</div>
					
					
					<script src="/common_js/common_filter.js?ver=1.39.10"></script>
					<script src="/common_js/goodslist_v1.js?ver=1.39.10"></script>
					<script type="text/javascript">
					
					//상품 상세 페이지로 이동
				    function fn_goods_detail(goods_sell_no){
						var url = "${pageContext.request.contextPath}/goods_list_detail.do";
						url = url + "?goods_sell_no=" + goods_sell_no;
						location.href = url;
					}			
						
					  $(document).ready(function(){
					    var categoryNo = null;
					    if(sessionStorage.getItem('goodsListReferrer') && sessionStorage.getItem('goodsListReferrer') === 'goodsView'){
					      // 이전페이지가 상품상세일경우
					      lnbMenu.referrer = true;
					      goodsList.referrer = true;
					      if(sessionStorage.getItem('gListCategoryNo') && '038' != '029' && '038' != '038'){
					        categoryNo = sessionStorage.getItem('gListCategoryNo');
					      }else{
					        categoryNo = "038";
					      }
					    }else{
					      lnbMenu.referrer = false;
					      goodsList.referrer = false;
					      categoryNo = "038";
					    }
					
					    // 카테고리호출
					    lnbMenu.getCategoryNum = categoryNo;
					
					    // 상품목록노출
					 // 신상품
					    goodsList.pageType='new';
					    goodsList.type = "pc";
					
					    lnbMenu.update();
					  });
						</script>
				</div>
			</div>
			<!-- layerDSR -->
			<jsp:include page="/WEB-INF/views/layout/layerDSR.jsp"/>
		
			<!-- footer -->
			<jsp:include page="/WEB-INF/views/layout/footer.jsp"/>
		</div>
	</div>
	
	<a href="#top" id="pageTop">맨 위로가기</a>
</body>
</html>

