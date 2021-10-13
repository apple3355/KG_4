<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

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
							<ul class="list_menu">						
								<li><a href="${pageContext.request.contextPath}/board_notice.do" class="board_notice">공지사항</a></li>
								<li><a href="${pageContext.request.contextPath}/board_faq.do" class="faq">자주하는 질문</a></li>
								<li class="on"><a href="${pageContext.request.contextPath}/board_qna.do" class="board_qna">1:1 문의</a></li>						
							</ul>
							<a href="/shop/mypage/mypage_qna_register.php?mode=add_qna" class="link_inquire"><span class="emph">도움이 필요하신가요 ?</span> 1:1 문의하기</a>
						</div>
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
						
						
						<c:forEach items="${board_qnaList}" var="board_qnaList" varStatus="status">
							<div class="mypage_wrap" style="float: none; width: 100%">
							
								<!-- 고객 질문 글 -->
								<c:if test="${board_qnaList.board_qna_gstep == 0}">
									<table class="table_faq" width="100%" onclick="view_content(this, event)">
										<tbody>
											<tr>
												<td width="8%" align="center">	${pagination.listCnt- ((pagination.page-1) * pagination.rangeSize + status.index) }</td>
												<td width="15%" align="center" class="stxt"><b>[ <c:out value="${board_qnaList.board_qna_type}"/> ]</b></td>
												<td style="padding-top: 5px; padding-bottom: 5px;"><c:out value="${board_qnaList.board_qna_title}"/> <span style="color: #007FC8;" class="stxt">[ <c:out value="${board_qnaList.board_qna_no}"/> ]</span></td>
												<td width="12%" align="center"><c:out value="${board_qnaList.board_qna_writer}"/></td>
												<td width="12%" align="center"><c:out value="${board_qnaList.board_qna_regdate}"/></td>
											</tr>
										</tbody>
									</table>
									
									<div style="display: none; padding: 30px; border-top: 1px solid rgb(230, 230, 230);">
										<div width="100%" style="padding-left: 55px; padding-bottom: 20px;">[ 주문번호 <c:out value="${board_qnaList.board_qna_order_no}"/> 문의 ]</div>
										<div width="100%" style="padding-left: 55px;">
											<c:forEach items="${board_fileList}" var="board_fileList">
												<c:if test="${board_qnaList.board_qna_no == board_fileList.board_file_qna_no}">
													<img class="thumb" src="${board_fileList.board_file_resource}" alt="${board_fileList.board_file_name}"><br>
												</c:if>
											</c:forEach>
											<c:out value="${board_qnaList.board_qna_content}"/>
										</div>
									</div>
								
								</c:if>
						
								<!-- 관리자 답변글 -->
								<c:if test="${board_qnaList.board_qna_gstep == 1}">
									<table width="100%" class="replayD" onclick="view_content(this, event)">
										<tbody>
											<tr>
												<td width="8%" align="center">${pagination.listCnt- ((pagination.page-1) * pagination.rangeSize + status.index) }</td>
												<td width="15%" align="right"><img src="https://bucketkurly.s3.ap-northeast-2.amazonaws.com/bucketKurly(main)/myqna_answer.gif"></td>
												<td style="padding-top: 5px; padding-bottom: 5px;" class="stxt"><c:out value="${board_qnaList.board_qna_title}"/></td>
												<td width="12%" align="center"><c:out value="${board_qnaList.board_qna_writer}"/></td>
												<td width="12%" align="center"><fmt:formatDate value="${board_qnaList.board_qna_regdate}" pattern="yyyy-MM-dd" /></td>
											</tr>
										</tbody>
									</table>
								
									<div style="display: none; padding: 30px; border-top: 1px solid rgb(230, 230, 230);">
										<div width="100%" style="padding-left: 55px;">
											<c:out value="${board_qnaList.board_qna_content}"/>
										</div>
										<div class="goods-review-grp-btn" style="text-align: right;">
										</div>
									</div>
								
								</c:if>
							</div>
							
						</c:forEach>
						
					
						<!-- 글쓰기 버튼 -->
						<div style="position: relative">
							<div style="position: absolute; right: 0; top: 60px;">
								<a href="${pageContext.request.contextPath}/board_qna_insert.do"><span class="bhs_buttonsm yb" style="float: none;">글쓰기</span></a>
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
				
					var preContent;
					
					//해당 게시글 클릭 시 display
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