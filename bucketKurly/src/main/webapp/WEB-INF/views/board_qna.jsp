<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" type="text/css" href="resources/css/board_qna.css">
<link rel="stylesheet" type="text/css" href="resources/css/common.css">

<title>board_qna</title>
</head>
<body>
<div id="wrap" class="">
	<div id="pos_scroll"></div>
	<div id="container">
		<!-- header -->
		<%@ include file="/WEB-INF/views/layout/header.jsp"%>
	
		<!-- content -->
		<div id="main">
			<div id="content">
				<!--  사이드 샛별배송택배안내 내용 및 스크립트 들어냄 -->
				
				<!-- 실제 내용 부분 -->
				<div class="page_aticle aticle_type2">
				
					<!--  왼쪽 메뉴  -->
					<div id="snb" class="snb_cc">
						<h2 class="tit_snb">고객센터</h2>
						<div class="inner_snb">
							<ul class="list_menu" style="float: left;">
								<li><a href="#############" onclick="KurlyTrackerLink('/shop/board/list.php?id=notice', 'select_service_notice_list')">공지사항</a></li>
								<li><a href="#############" onclick="KurlyTrackerLink('/shop/service/faq.php', 'select_service_frequently_qna')">자주하는 질문</a></li>
								<li class="on"><a href="#############" onclick="KurlyTrackerLink('/shop/mypage/mypage_qna.php', 'select_service_personal_inquiry_history')">1:1문의</a></li>
								<li><a href="#############" onclick="KurlyTrackerLink('/shop/main/html.php?htmid=mypage/bulk_order.htm', 'select_service_bulk_order')">대량주문 문의</a></li>
								<li><a href="#############" onclick="KurlyTrackerLink('/shop/mypage/offer.php', 'select_service_product_offer')">상품 제안</a></li>
								<li><a href="#############" onclick="KurlyTrackerLink('/shop/mypage/echo_packing.php', 'select_service_eco_packing_feedback')">에코포장 피드백</a></li>
							</ul>
						</div>
						
						<a href="/shop/mypage/mypage_qna_register.php?mode=add_qna" class="link_inquire"><span class="emph">도움이 필요하신가요 ?</span> 1:1 문의하기</a>
					</div>
					
					<!--  오른쪽 컨텐츠  -->
					<div class="page_section section_qna">
						<div class="head_aticle">
							<h2 class="tit">1:1 문의</h2>
						</div>
	
						<table class="xans-board-listheader" width="100%">
							<tbody>
								<tr class="input_txt">
									<th width="8%">번호</th>
									<th width="15%">카테고리</th>
									<th>제목</th>
									<th width="12%">작성자</th>
									<th width="12%">작성일</th>
								</tr>
							</tbody>
						</table>
						
						<!-- 고객 질문 글 -->
						<c:forEach items="${board_qnaList}" var="board_qnaList">
							<div class="mypage_wrap" style="float: none; width: 100%">
						
								<table class="table_faq" width="100%" onclick="view_content(this, event)">
									<tbody>
										<tr>
											<td width="8%" align="center">${board_qnaList.board_qna_no}</td>
											<td width="15%" align="center" class="stxt"><b>[ <c:out value="${board_qnaList.board_qna_type}"/> ]</b></td>
											<td style="padding-top: 5px; padding-bottom: 5px;"><c:out value="${board_qnaList.board_qna_title}"/> <span style="color: #007FC8;" class="stxt">[ <c:out value="${board_qnaList.board_qna_no}"/> ]</span></td>
											<td width="12%" align="center">juykim98</td>
											<td width="12%" align="center"><c:out value="${board_qnaList.board_qna_regdate}"/></td>
										</tr>
									</tbody>
								</table>
								
								<div style="display: none; padding: 30px; border-top: 1px solid rgb(230, 230, 230);">
									<div width="100%" style="padding-left: 55px; padding-bottom: 20px;">[ 주문번호 <c:out value="${board_qnaList.board_qna_order_no}"/> 문의 ]</div>
									<div width="100%" style="padding-left: 55px;"><c:out value="${board_qnaList.board_qna_content}"/></div>
									<div class="goods-review-grp-btn" style="text-align: right;">
										<button type="button" class="styled-button" onclick="popup_register( 'mod_qna', '4779684' );">수정</button>
									</div>
								</div>
							
							</div>
						</c:forEach>
						
						<!-- 관리자 답변글 -->
						<div class="mypage_wrap" style="float: none; width: 100%">
							<table width="100%" class="replayD" onclick="view_content(this, event)">
								<tbody>
									<tr>
										<td width="8%" align="center">1</td>
										<td width="15%" align="right"><img src="/shop/data/skin/designgj/img/common/myqna_answer.gif"></td>
										<td style="padding-top: 5px; padding-bottom: 5px;" class="stxt">안녕하세요 고객님, 답변드립니다.</td>
										<td width="12%" align="center">marketkurly</td>
										<td width="12%" align="center">2021-09-08</td>
									</tr>
								</tbody>
							</table>
						
							<div style="display: none; padding: 30px; border-top: 1px solid rgb(230, 230, 230);">
								<div width="100%" style="padding-left: 55px;">
									Love food, Love life!<br> <br> 안녕하세요. 마켓컬리입니다.<br>
									순차적인 문의 확인으로 답변에 지연이 발생 된 점 깊이 사과드립니다. <br> <br>
									문의남겨주신 내용만으로는 상담이 어려워<br> 번거로우시겠지만 컬리 이용하심에 상품으로 불편을 겪으시거나
									다른 어려움이 있으실 경우<br> 컬리 고객센터(1644-1107) 및 카카오톡, 1:1게시판으로
									문의주시면 확인후 성실하게 조치드리겠습니다.<br> <br> 감사합니다. 마켓컬리 드림.
								</div>
								<div class="goods-review-grp-btn" style="text-align: right;">
								</div>
							</div>
						</div>
						
						
						<!-- 글쓰기 버튼 -->
						<div style="position: relative">
							<div style="position: absolute; right: 0; top: 60px;">
								<a href="/test/board_qna_insert.do"><span class="bhs_buttonsm yb" style="float: none;">글쓰기</span></a>
							</div>
						</div>
						
						<!-- 페이징 처리 -->
						<div class="layout-pagination">
							<div class="pagediv">
								<!-- 맨 처음으로 이동 -->
								<a class="layout-pagination-button layout-pagination-first-page" href="javascript:void(0);" 
								   onClick="fn_first()">맨 처음 페이지로 가기</a>
								
							
								<!-- 이전 페이지로 이동 -->
								<a class="layout-pagination-button layout-pagination-prev-page" href="javascript:void(0);" 
								   onClick="fn_prev('${pagination.page}','${pagination.range}','${pagination.rangeSize}')">이전 페이지로 가기</a>
							
								
								<!-- 페이지 목록 -->
								<c:forEach begin="${pagination.startPage}" end="${pagination.endPage}" var="idx">
									<c:out value="${pagination.page == idx ? 'active' : ''}"/>
									<a class="page-link" href="#" onClick="fn_pagination('${idx}', '${pagination.range}', '${pagination.rangeSize}')"> 
									<strong class="layout-pagination-button layout-pagination-number __active">${idx}</strong></a>
								</c:forEach>
		
								<!-- 다음 페이지로 이동 -->
								<a class="layout-pagination-button layout-pagination-next-page" href="javascript:void(0);" 
								   onClick="fn_next('${pagination.page}','${pagination.range}','${pagination.rangeSize}','${pagination.pageCnt}')">다음 페이지로 가기</a>
							
								
								<!-- 맨 끝 페이지로 이동 -->
								<a class="layout-pagination-button layout-pagination-last-page" href="javascript:void(0);" 
								   onClick="fn_last('${pagination.pageCnt}','${pagination.rangeSize}')">맨 끝 페이지로 가기</a>
							</div>
						</div>
	
					</div>
				</div>
				
				<!-- 글쓰기 버튼 스크립트 -->
				<script type="text/javascript">
					//맨 앞 페이지 버튼 이벤트
				    function fn_first() {
						var page = 1;
						var range = 1;
						var url = "${pageContext.request.contextPath}/board_qna.do";
						url = url + "?page=" + page;
						url = url + "&range=" + range;
						location.href = url;
					}
				
				    //이전 버튼 이벤트
				    function fn_prev(page, range, rangeSize) {
				    	if(page > 1){ // 첫 범위가 아닐경우 
				    		var page = parseInt(page - 1);
				    		var range = parseInt((page - 1)/rangeSize+1);
				    	}
				    	var url = "${pageContext.request.contextPath}/board_qna.do";
						url = url + "?page=" + page;
						url = url + "&range=" + range;
						location.href = url;
					}

				    //페이지 번호 클릭
					function fn_pagination(page, range, rangeSize) {
						var url = "${pageContext.request.contextPath}/board_qna.do";
						url = url + "?page=" + page;
						url = url + "&range=" + range;
						location.href = url;	
				    }

					//다음 버튼 이벤트
					function fn_next(page, range, rangeSize, pageCnt) {
						if(page < pageCnt){ // 마지막 페이지가 아닐경우 
				    		var page = parseInt(page)+1;
				    		var range = parseInt((page-1)/rangeSize+1);
				    	}
						var url = "${pageContext.request.contextPath}/board_qna.do";
						url = url + "?page=" + page;
						url = url + "&range=" + range;
						location.href = url;
					}
					
					//맨 끝 페이지 버튼 이벤트 (page=계산된 끝 페이지 수 / range=계산된 끝 페이지수의 range 구하는 식)
					function fn_last(pageCnt, rangeSize) {
						var page = parseInt(pageCnt);
						var range = parseInt((pageCnt-1)/rangeSize+1);			
						var url = "${pageContext.request.contextPath}/board_qna.do";
						url = url + "?page=" + page;
						url = url + "&range=" + range;
						location.href = url;
					}
				
					
				//수정버튼 스크립트
					function popup_register(mode, sno) {
						parent.location.href = ("../mypage/mypage_qna_register.php?mode="+ mode + "&sno=" + sno);
					}
	
					var preContent;
	
					function view_content(obj) {
						var div = obj.parentNode;
	
						for (var i = 1, m = div.childNodes.length; i < m; i++) {
							if (div.childNodes[i].nodeType != 1)
								continue; // text node.
							else if (obj == div.childNodes[i])
								continue;
	
							obj = div.childNodes[i];
							break;
						}
	
						if (preContent && obj != preContent) {
							obj.style.display = "block";
							preContent.style.display = "none";
							preCheck = false
						} else if (preContent && obj == preContent) {
							preContent.style.display = (preContent.style.display == "none" ? "block": "none");
						} else if (preContent == null) {
							obj.style.display = "block";
						}
	
						preContent = obj;
	
						if (preContent.style.display === 'block') {
							KurlyTracker.setScreenName('personal_inquiry_detail');
						} else {
							KurlyTracker.setScreenName('personal_inquiry_history');
						}
					}
				</script>
			</div>
		</div>
	
	
		<!-- layerDSR -->
		<%@ include file="/WEB-INF/views/layout/layerDSR.jsp"%>
		
		
		<!-- footer -->
		<%@ include file="/WEB-INF/views/layout/footer.jsp"%>
				
		</div>
	
	</div>
	<a href="#top" id="pageTop">맨 위로가기</a>
</body>
</html>