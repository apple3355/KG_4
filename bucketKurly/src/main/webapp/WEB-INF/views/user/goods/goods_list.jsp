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
								<div class="lnb_menu" id="lnbMenu" v-cloak>
									<div id="bnrCategory" class="bnr_category" style="display: block;">
										<div class="thumb">
											<img src="	https://img-cf.kurly.com/category/banner/pc/ae744106-f596-4ca5-a940-7e86a0b8a9a3" alt="카테고리배너">
										</div>
									</div>
										<div class="inner_lnb">
											<h3 class="tit" v-html="categoryName">#페이지 타이틀#</h3>
												<ul class="list" v-bind:class="{ on: isLnbSubView }">
													<lnb-menu v-for="(menu, idx) in categoryMenu" :key="'menu'+idx" :item="menu" :idx="idx" :length-check="categoryMenu.length" :type="type" :exceptions-type="exceptionsType" :get-category-num="getCategoryNum" :original-category-name="originalCategoryName" @menu-scroll="menuScroll" @lnb-checked="lnbChecked" @tracker-action="trackerAction"></lnb-menu>
													<li data-start="172" data-end="188">
														<a class="on">전체보기</a>
													</li>
													<li class="bg"></li>
												</ul>
										</div>
								</div>
										<div id="goodsList" class="page_section section_goodslist" v-cloak>
											<div class="list_ability">
																					
															<div class="sort_menu">
																<view-sort :page-type="pageType" :sort-data="sortData" :sort-delivery="sortDelivery" :delivery-check="deliveryCheck" :sort-user-check="sortUserCheck" :type="type" :data-paging-total="dataPagingTotal" @sort-regist="sortRegist" @sort-layer-view="sortLayerView"></view-sort>
																<div class>
																	<p class="count">
																		<span class="inner_count">총 ${itemCnt}건</span>
																	</p>
																	<div class="select_type user_sort">
																		<a class="name_select">추천순</a>
																		<!---->
																		<!---->
																		<!---->
																		<!---->
																		<!---->
																			<ul class="list">
																				<li>
																					<a class="on">추천순</a>
																				</li>
																				<li>
																					<a class="on">신상품순</a>
																				</li>
																				<li>
																					<a class="on">인기상품순</a>
																				</li>
																				<li>
																					<a class="on">혜택순</a>
																				</li>
																				<li>
																					<a class="on">낮은 가격순</a>
																				</li>
																				<li>
																					<a class="on">높은 가격순</a>
																				</li>
																			</ul>
																	</div>
																</div>
															</div>
											</div>
											<div class="list_goods">
												<div class="inner_listgoods">
													<ul class="list">
													
														<!-- 상품 리스트 구분선 -->
														<c:forEach items="${selectgoods_list}" var="selectgoods_list"  >
														
														<li>
															<a href=/bucketkurly/goods_list_detail.do></a>																
															<div class="item">
																<div class="thumb"><img alt="${selectgoods_list.category_goods_name}" src="${selectgoods_list.category_goods_image_thumb}" />
																															
																	<a class="img" style="background-image: src="${selectgoods_list.category_goods_image_thumb}"></a>
																		<!---->
																		<!---->
																		<!---->
																			<!-- <img src="https://img-cf.kurly.com/shop/data/goods/1631506970541l0.jpg" alt="든든하게 즐기는 알찬 한 끼" onerror="this.src='https://res.kurly.com/mobile/img/1808/img_none_x2.png'"> -->
																
																		<!---->
																	<div class="group_btn">
																		<button type="button" class="btn.btn_cart">
																			<span class="screen_out"></span>
																		</button>
																		<!---->
																		<!---->
																	</div>
																</div>
																<a class="info">
																	<!-- span class="name">${selectgoods_list.category_goods_name}</span> -->
																	<span class="name"><c:out value="${selectgoods_list.category_goods_name}"/></span>
																	<span class="cost">
																		<!---->
																		<span class="price"><c:out value="${getGoods_sell.goods_sell_price }"/></span>
																		<!---->
																	</span>
																	<span class="desc"><c:out value="${selectgoods_list.category_goods_name_sub}"/></span>
																	<span class="tag">
																		<!---->
																	</span>
																</a>																 	
															</div>								
														</li>			
															
															<!-- <a onclick="javascript:menuDetail('${selectgoods_list.category_goods_no}');" class="btn_view" href="#"></a>  -->
															<!-- <a href="${path}/bucketkurly/goods.do?no=${board_noticeList.board_notice_no}">${board_noticeList.board_notice_title}&nbsp;</a> -->
															<!-- <a href="#" onclick="location.href='index.html'">text</a> -->														
														</c:forEach>									
														<!-- 상품 리스트 구분선 -->			
																			
														<list-goods v-for="(goods, idx) in goodsItem" v-if="!noData" :get-category-num="getCategoryNum" :key="'goods'+idx" :idx="idx" :item="goods" :tag-name="goods.tags.names" :tag-type="goods.tags.tagType" :sort-delivery="sortDelivery" :sort-user="sortUser" :type="type" :page-type="pageType" :login-check="loginCheck" :page-count="(pageCount-1)*pageLimit" :tracking="tracking"></list-goods>
													
													
													</ul>
												</div>
											</div>
											
											<div class="layout-pagination" v-if="!noData">
												<div class="pagediv">
													<a href="#main" @click="onMoveList(1)" class="layout-pagination-button layout-pagination-first-page">맨 처음 페이지로 가기</a>
													<a href="#main" @click="onMoveList(pageCount-1)" class="layout-pagination-button layout-pagination-prev-page">이전 페이지로 가기</a>
														<list-goods-paging v-for="(paging, idx) in pagingCountArray" :idx="idx+1" :key="idx" :page-count="pageCount" :total-page-count="totalPageCount" @on-move-list="onMoveList"></list-goods-paging>
														<span>
														<!---->
															<strong class="layout-pagination-button layout-pagination-number __active">1</strong>"
														</span>
														<span>
															<strong class="layout-pagination-button layout-pagination-number __active">2</strong>"
														<!---->
														</span>
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

