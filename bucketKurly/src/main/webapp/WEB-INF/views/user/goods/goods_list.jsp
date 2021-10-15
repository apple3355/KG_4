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
	<link rel="shortcut icon"
	href="https://bucketkurly.s3.ap-northeast-2.amazonaws.com/bucketKurly(main)/favicon_v2.webp"
	type="image/x-icon">
	<title>goods_list</title>
	<style>
		#goodsList .list_goods .cost .original {display: block;font-size: 16px;color: #999;text-decoration: line-through;}
		#goodsList .list_goods .cost .dc {padding-right: 2px;font-weight: 600;color: #fa622f;}
	</style>
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
							<div class="inner_lnb">
								<h3 class="tit">${select_type}</h3>
							</div>
						</div>
						
						<c:if test="${empty goods_sell_list}">
							
							<div id="goodsList" class="page_section section_goodslist">
								<div class="list_ability">
									<div class="sort_menu">
										<div class="">
											<p class="count"><span class="inner_count">총 <b>${itemCnt}</b> 건</span></p>
											<div class="select_type user_sort">
												<a class="name_select">신상품순</a>												
												<ul class="list">
													<li><a class="">낮은 가격순</a></li>
													<li><a class="">높은 가격순</a></li>
												</ul>
											</div>
										</div>
									</div>
								</div>
							</div>
							<div style="margin:100px; text-align: center;">
							 	<img id = "sorryimg" src="https://bucketkurly.s3.ap-northeast-2.amazonaws.com/bucketKurly(main)/sorry_ready.png" style="width:200px; height:200px;"><br>
							 	<p style="margin-top:50px; text-align: center; font-size: 25px;">죄송합니다.</p>
									  	<p style="margin-bottom:50px; text-align: center; font-size: 25px;">해당 항목의 상품을 준비중입니다.</p>
									 </div>
						</c:if>
						
						<c:if test="${not empty goods_sell_list}"> 
							<div id="goodsList" class="page_section section_goodslist">
								<div class="list_ability">
									<div class="sort_menu">
										<div class="">
											<p class="count"><span class="inner_count">총 ${itemCnt} 건</span></p>
											<div class="select_type user_sort">
												<a class="name_select">신상품순</a>												
												<ul class="list">
													<li><a class="" onClick="fn_priceLow()">낮은 가격순</a></li>
													<li><a class="" onClick="fn_priceHigh()">높은 가격순</a></li>
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
																<a class="img"
																	href="javascript:void(0);" onClick="fn_goods_detail(${goods_sell_list.goods_sell_no})">
																	<img src="${goods_sell_list.goodsvo.category_goods_image_thumb}" >
																</a>
																
															
																<div class="group_btn">
																	<a href="${pageContext.request.contextPath}/insertGoods_cart.do?goods_sell_no=${goods_sell_list.goods_sell_no}&count=1">
																		<button type="button" class="btn btn_cart" >
																			<span class="screen_out"></span>
																		</button>
																	</a>
																</div>
															</div>
														
															<a class="info" onClick="fn_goods_detail(${goods_sell_list.goods_sell_no})">
																<span class="name"><c:out value="${goods_sell_list.goodsvo.category_goods_name}"/></span>
																<span class="cost">
																<c:set var="discount" value="${goods_sell_list.goods_sell_discount}" />
																	<c:if test="${discount == 0}">
																	    <span class="price"><fmt:formatNumber type="number" maxFractionDigits="0" value="${goods_sell_list.goods_sell_price}"/><span class="won">원</span></span>
																	</c:if>
																	
																	<c:if test="${discount != 0}">
																		<span class="dc">${goods_sell_list.goods_sell_discount}<span class="per">%</span></span> 
																		<span class="price"><fmt:formatNumber type="number" maxFractionDigits="0" value="${goods_sell_list.goods_sell_price - (goods_sell_list.goods_sell_price * goods_sell_list.goods_sell_discount) / 100}" /><span class="won">원</span></span> 
																		<span class="original"><fmt:formatNumber type="number" maxFractionDigits="0" value="${goods_sell_list.goods_sell_price}"/><span class="won">원</span></span>
																	</c:if>
																</span>
																<span class="desc"><c:out value="${goods_sell_list.goodsvo.category_goods_name_sub}"/></span>
															</a>	
														</div>								
													</li>			
												</c:forEach>
											</ul>	
									</div>
								</div>
							
							   <!--페이징 -->
								<div class="layout-pagination">
				                     <div class="pagediv">
				                        <!-- 맨 처음으로 이동 -->
				                        <a class="layout-pagination-button layout-pagination-first-page" href="javascript:void(0);" 
				                           onClick="fn_first()">맨 처음 페이지로 가기</a>
				                        
				                     
				                        <!-- 이전 페이지로 이동 -->
				                        <a class="layout-pagination-button layout-pagination-prev-page" href="javascript:void(0);" 
				                           onClick="fn_prev('${dto.page}','${dto.range}','${dto.rangeSize}')">이전 페이지로 가기</a>
				                     
				                        
				                        <!-- 페이지 목록 -->
				                        <c:forEach begin="${dto.startPage}" end="${dto.endPage}" var="idx">
				                           <c:out value="${dto.page == idx ? 'active' : ''}"/>
				                           <a class="page-link" href="#" onClick="fn_pagination('${idx}', '${dto.range}', '${dto.rangeSize}')"> 
				                           <strong class="layout-pagination-button layout-pagination-number __active">${idx}</strong></a>
				                        </c:forEach>
				      
				                        <!-- 다음 페이지로 이동 -->
				                        <a class="layout-pagination-button layout-pagination-next-page" href="javascript:void(0);" 
				                           onClick="fn_next('${dto.page}','${dto.range}','${dto.rangeSize}','${dto.pageCnt}')">다음 페이지로 가기</a>
				                     
				                        
				                        <!-- 맨 끝 페이지로 이동 -->
				                        <a class="layout-pagination-button layout-pagination-last-page" href="javascript:void(0);" 
				                           onClick="fn_last('${dto.pageCnt}','${dto.rangeSize}')">맨 끝 페이지로 가기</a>
				                     </div>
				                  </div>
							</div>
						</c:if>
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
					    
					   //현재 파라미터 값 얻어오기
						function getParameter(strParamName) {
						    var arrResult = null;
						    if (strParamName) {
						        arrResult = location.search.match(new RegExp("[&?]" + strParamName+"=(.*?)(&|$)"));
						        return arrResult && arrResult[1] ? arrResult[1] : null;
						    }
						}
					   
						//낮은 가격순으로 이동
		                function fn_priceLow() {
		                  var type = getParameter("type");
		                  var parent_no = getParameter("parent_no");
		                  var sub_no = getParameter("sub_no");
			              var type_sub = "price_low";
			              
			              if (type!=null){
			            	  var url = "${pageContext.request.contextPath}/goods_list.do";
			            	  url = url + "?type=" + type;
		                  }else if(parent_no!=null){
		                	  var url = "${pageContext.request.contextPath}/goods_list_parent_no.do";
		                	  url = url + "?parent_no=" + parent_no;
		                  }else if(sub_no!=null){
		                	  var url = "${pageContext.request.contextPath}/goods_list_sub_no.do";
		                	  url = url + "?sub_no=" + sub_no;
		                  }
			              url = url + "&type_sub=" + type_sub;
			              location.href = url;
		                }
						
		               //높은 가격순으로 이동
		                function fn_priceHigh() {
		                  var type = getParameter("type");
				          var parent_no = getParameter("parent_no");
				          var sub_no = getParameter("sub_no");
				          var type_sub = "price_high";
				          
		                  if (type!=null){
			            	  var url = "${pageContext.request.contextPath}/goods_list.do";
			            	  url = url + "?type=" + type;
		                  }else if(parent_no!=null){
		                	  var url = "${pageContext.request.contextPath}/goods_list_parent_no.do";
		                	  url = url + "?parent_no=" + parent_no;
		                  }else if(sub_no!=null){
		                	  var url = "${pageContext.request.contextPath}/goods_list_sub_no.do";
		                	  url = url + "?sub_no=" + sub_no;
		                  }
			              url = url + "&type_sub=" + type_sub;
		                  location.href = url;
		                }
						
					
		               //맨 앞 페이지 버튼 이벤트
		                function fn_first() {
		                  var type = getParameter("type");
				          var parent_no = getParameter("parent_no");
				          var sub_no = getParameter("sub_no");
		                  var type_sub = getParameter("type_sub");
		                  var page = 1;
		                  var range = 1;
		                 
		                  if (type!=null){
			            	  var url = "${pageContext.request.contextPath}/goods_list.do";
			            	  url = url + "?type=" + type;
		                  }else if(parent_no!=null){
		                	  var url = "${pageContext.request.contextPath}/goods_list_parent_no.do";
		                	  url = url + "?parent_no=" + parent_no;
		                  }else if(sub_no!=null){
		                	  var url = "${pageContext.request.contextPath}/goods_list_sub_no.do";
		                	  url = url + "?sub_no=" + sub_no;
		                  }
		                  
		                  if (type_sub!=null){
		                	  url = url + "&type_sub=" + type_sub;
		                  }
		                  url = url + "&page=" + page;
		                  url = url + "&range=" + range;
		                  location.href = url;
		               }
		            
		                //이전 버튼 이벤트
		                function fn_prev(page, range, rangeSize) {
		                   var type = getParameter("type");
					       var parent_no = getParameter("parent_no");
					       var sub_no = getParameter("sub_no");
			               var type_sub = getParameter("type_sub");
			               
		                   if(page > 1){ // 첫 범위가 아닐경우 
		                      var page = parseInt(page - 1);
		                      var range = parseInt((page - 1)/rangeSize+1);
		                   }
		                   
		                   if (type!=null){
			            	   var url = "${pageContext.request.contextPath}/goods_list.do";
			            	   url = url + "?type=" + type;
		                   }else if(parent_no!=null){
		                	   var url = "${pageContext.request.contextPath}//goods_list_parent_no.do";
		                	   url = url + "?parent_no=" + parent_no;
		                   }else if(sub_no!=null){
		                	   var url = "${pageContext.request.contextPath}/goods_list_sub_no.do";
		                	   url = url + "?sub_no=" + sub_no;
		                   }
		                   
		                   if (type_sub!=null){
		                	   url = url + "&type_sub=" + type_sub;
		                   }
		                   url = url + "&page=" + page;
		                   url = url + "&range=" + range;
		                  location.href = url;
		               }

		                //페이지 번호 클릭
		               function fn_pagination(page, range, rangeSize) {
		                  var type = getParameter("type");
					      var parent_no = getParameter("parent_no");
					      var sub_no = getParameter("sub_no");
			              var type_sub = getParameter("type_sub");
		                 
			              if (type!=null){
			            	  var url = "${pageContext.request.contextPath}/goods_list.do";
			            	  url = url + "?type=" + type;
		                  }else if(parent_no!=null){
		                	  var url = "${pageContext.request.contextPath}//goods_list_parent_no.do";
		                	  url = url + "?parent_no=" + parent_no;
		                  }else if(sub_no!=null){
		                	  var url = "${pageContext.request.contextPath}/goods_list_sub_no.do";
		                	  url = url + "?sub_no=" + sub_no;
		                  }
			              
		                  if (type_sub!=null){
		                	   url = url + "&type_sub=" + type_sub;
		                  }
		                  url = url + "&page=" + page;
		                  url = url + "&range=" + range;
		                  location.href = url;   
		                }

		               //다음 버튼 이벤트
		               function fn_next(page, range, rangeSize, pageCnt) {
		                  var type = getParameter("type");
					      var parent_no = getParameter("parent_no");
					      var sub_no = getParameter("sub_no");
			              var type_sub = getParameter("type_sub");
		                  if(page < pageCnt){ // 마지막 페이지가 아닐경우 
		                      var page = parseInt(page)+1;
		                      var range = parseInt((page-1)/rangeSize+1);
		                  }
		                  
		                  if (type!=null){
			            	  var url = "${pageContext.request.contextPath}/goods_list.do";
			            	  url = url + "?type=" + type;
		                  }else if(parent_no!=null){
		                	  var url = "${pageContext.request.contextPath}//goods_list_parent_no.do";
		                	  url = url + "?parent_no=" + parent_no;
		                  }else if(sub_no!=null){
		                	  var url = "${pageContext.request.contextPath}/goods_list_sub_no.do";
		                	  url = url + "?sub_no=" + sub_no;
		                  }
		                  
		                  if (type_sub!=null){
		                	  url = url + "&type_sub=" + type_sub;
		                  }
		                  url = url + "&page=" + page;
		                  url = url + "&range=" + range;
		                  location.href = url;
		               }
		               
		               //맨 끝 페이지 버튼 이벤트 (page=계산된 끝 페이지 수 / range=계산된 끝 페이지수의 range 구하는 식)
		               function fn_last(pageCnt, rangeSize) {
		                  var type = getParameter("type");
					      var parent_no = getParameter("parent_no");
					      var sub_no = getParameter("sub_no");
			              var type_sub = getParameter("type_sub");
		                  var page = parseInt(pageCnt);
		                  var range = parseInt((pageCnt-1)/rangeSize+1);         
		                  
		                  if (type!=null){
			            	  var url = "${pageContext.request.contextPath}/goods_list.do";
			            	  url = url + "?type=" + type;
		                  }else if(parent_no!=null){
		                	  var url = "${pageContext.request.contextPath}//goods_list_parent_no.do";
		                	  url = url + "?parent_no=" + parent_no;
		                  }else if(sub_no!=null){
		                	  var url = "${pageContext.request.contextPath}/goods_list_sub_no.do";
		                	  url = url + "?sub_no=" + sub_no;
		                  }
		                  
		                  if (type_sub!=null){
		                	  url = url + "&type_sub=" + type_sub;
		                  }
		                  url = url + "&page=" + page;
		                  url = url + "&range=" + range;
		                  location.href = url;
		               }
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

