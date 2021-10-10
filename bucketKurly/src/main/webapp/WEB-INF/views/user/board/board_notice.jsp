<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" type="text/css" href="resources/css/board_notice.css">
<link rel="stylesheet" type="text/css" href="resources/css/common.css">
<style>
	.notice .layout-pagination{margin: 0}
	.eng2{color: #939393}
	.xans-board-listheader{font-size:12px}
</style>

<title>board_notice</title>

</head>
<body>
<div id="wrap" class="">
   <div id="pos_scroll"></div>
   <div id="container">
      <!-- header -->
      <%@ include file="/WEB-INF/views/layout/header.jsp"%>
   
    
			<div id="main">				
				<div id="content" >					
				
					<div class="page_aticle aticle_type2">
					
						<!--  왼쪽 메뉴  -->
					<div id="snb" class="snb_cc">
						<h2 class="tit_snb">고객센터</h2>
						<div class="inner_snb">
							<ul class="list_menu">	
									<li class="on"><a href="${pageContext.request.contextPath}/board_notice.do" class="board_notice">공지사항</a></li>
									<li><a href="${pageContext.request.contextPath}/board_faq.do" class="faq">자주하는 질문</a></li>
									<li><a href="${pageContext.request.contextPath}/board_qna.do" class="board_qna">1:1 문의</a></li>								
								</ul>
							</div>
							<a href="/shop/mypage/mypage_qna_register.php?mode=add_qna" class="link_inquire"><span class="emph">도움이 필요하신가요 ?</span>1:1 문의하기</a>
						</div>
						
						<div class="page_section">
							<div class="head_aticle">
								<h2 class="tit"> 공지사항 <span class="tit_sub">컬리의 새로운 소식들과 유용한 정보들을 한곳에서 확인하세요.</span></h2>
							</div>
							
							<form name="frmList" action="/shop/board/list.php?&" onsubmit="return chkFormList(this)">
								<input type=hidden name=id value="notice">
								<table width="100%" align="center" cellpadding=0 cellspacing=0>
									<tr>
										<td>
											<div class="xans-element- xans-myshop xans-myshop-couponserial ">
											
												<table width="100%" class="xans-board-listheader jh" cellpadding=0 cellspacing=0>
												
													<thead>
														<tr>
															<th>번호</th>
															<th>제목</th>
															<th>작성자</th>
															<th>작성일</th>
															<th>조회</th>
														</tr>
													</thead>
												
													 <c:forEach items="${board_noticeList}" var="board_noticeList" varStatus="status">
																							
													<tbody>													
														<tr>
															<td width="5%" align="center">${pagination.listCnt- ((pagination.page-1) * pagination.rangeSize + status.index) }</td>
															<td width="65%" style="padding-left: 40px; color: #999"><a href="${pageContext.request.contextPath}/board_notice_no.do?no=${board_noticeList.board_notice_no}">${board_noticeList.board_notice_title}&nbsp;</a></td>	
															<td width="10%" align="center"><c:out value="${board_noticeList.board_notice_writer}"/></td>
															<td width="15%" align="center" class="eng2"><fmt:formatDate value="${board_noticeList.board_notice_date}" pattern="yyyy-MM-dd" />
															<td width="5%" align="center" class="eng2"><c:out value="${board_noticeList.board_notice_hits}"/></td>
														</tr>
													</tbody>
													</c:forEach>
												</table>
											</div>
										</td>
									</tr>
								</table>
								
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
				                  
								<table class="xans-board-search xans-board-search2">
									<tr>
										<td class=input_txt><img
											src="https://bucketkurly.s3.ap-northeast-2.amazonaws.com/bucketKurly(main)/ico_function+(1).gif">검색어</td>
										<td class=stxt><input type=checkbox name="search[name]">이름
											<input type=checkbox name="search[subject]">제목 <input
											type=checkbox name="search[contents]">내용&nbsp;</td>
										<td class=input_txt>&nbsp;</td>
										<td>
											<div class="search_bt">
												<a href="javascript:document.frmList.submit()"><img src="https://bucketkurly.s3.ap-northeast-2.amazonaws.com/bucketKurly(main)/search.png" align=absmiddle></a> <input type="text"
													name="search[word]" value="" required>
											</div>
										</td>
									</tr>
								</table>
								
							</form>
						</div>
					</div>
					<script type="text/javascript">
		               //맨 앞 페이지 버튼 이벤트
		                function fn_first() {
		                  var page = 1;
		                  var range = 1;
		                  var url = "${pageContext.request.contextPath}/board_notice.do";
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
		                   var url = "${pageContext.request.contextPath}/board_notice.do";
		                  url = url + "?page=" + page;
		                  url = url + "&range=" + range;
		                  location.href = url;
		               }

		                //페이지 번호 클릭
		               function fn_pagination(page, range, rangeSize) {
		                  var url = "${pageContext.request.contextPath}/board_notice.do";
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
		                  var url = "${pageContext.request.contextPath}/board_notice.do";
		                  url = url + "?page=" + page;
		                  url = url + "&range=" + range;
		                  location.href = url;
		               }
		               
		               //맨 끝 페이지 버튼 이벤트 (page=계산된 끝 페이지 수 / range=계산된 끝 페이지수의 range 구하는 식)
		               function fn_last(pageCnt, rangeSize) {
		                  var page = parseInt(pageCnt);
		                  var range = parseInt((pageCnt-1)/rangeSize+1);         
		                  var url = "${pageContext.request.contextPath}/board_notice.do";
		                  url = url + "?page=" + page;
		                  url = url + "&range=" + range;
		                  location.href = url;
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
