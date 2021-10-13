<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="ko" lang="ko">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=euc-kr">
<title>++ GODOMALL ++</title>
<link rel="styleSheet" href="resources/css/board_qna.css">
<link rel="styleSheet" href="resources/css/common.css">
<style>
</style>
</head>
<body style="position: absolute; inset: 0px;">
	<table id="orderList" width="100%" height="100%" cellpadding="0" cellspacing="0" border="0">
		<tbody>
			<tr>
				<td style="border: 10px solid #fff" valign="top">
					<table height="100%" width="100%" cellpadding="0" cellspacing="0"
						border="0" align="center">
						<tbody>
							<tr>
								<td height="100%" valign="top">
									<table cellpadding="3" cellspacing="0" border="0">
										<tbody>
											<tr>
												<td class="stxt" style="padding-top: 10">문의하실 주문번호를 선택하세요.</td>
											</tr>
										</tbody>
									</table>
									<table width="100%" cellpadding="0" cellspacing="0" border="0" style="margin-top: 10px;">
										<colgroup>
											<col width="20%">
											<col width="12%">
											<col width="36%">
											<col width="10%">
											<col width="15%">
											<col width="7%">
										</colgroup>
										<tbody>
											<tr height="19" bgcolor="#A8A8A8">
												<th style="font: bold 8pt 돋움; color: #FFFFFF">주문번호</th>
												<th style="font: bold 8pt 돋움; color: #FFFFFF">주문일자</th>
												<th style="font: bold 8pt 돋움; color: #FFFFFF">상품명</th>
												<th style="font: bold 8pt 돋움; color: #FFFFFF">수량</th>
												<th style="font: bold 8pt 돋움; color: #FFFFFF">주문금액</th>
												<th style="font: bold 8pt 돋움; color: #FFFFFF">선택</th>
											</tr>

											<c:forEach items="${orderlist}" var="orderlist" varStatus="status">
												<tr height="25" align="center">
													<td><c:out value="${orderlist.order_no}"/></td>
													<td><c:out value="${orderlist.order_date}"/></td>
													<td><c:out value="${orderlist.category_goods_name}"/></td>
													<td align="right"><c:out value="${orderlist.order_goods_count}"/></td>
													<td align="right"><c:out value="${orderlist.order_goods_price}"/></td>
													<td><input type="radio" name="ordernoSelect" onclick="parent.order_put('${orderlist.order_no}')"></td>
												</tr>
											</c:forEach>
											<tr>
												<td colspan="6" height="1" bgcolor="E5E5E5"></td>
											</tr>
										</tbody>
									</table>
									<div class="layout-pagination">
										<div class="pagediv">
											<a href="/shop/mypage/mypage_qna_order.php?&amp;page=1"
												class="layout-pagination-button layout-pagination-first-page">맨
												처음 페이지로 가기</a><a
												href="/shop/mypage/mypage_qna_order.php?&amp;page=1"
												class="layout-pagination-button layout-pagination-prev-page">이전
												페이지로 가기</a><strong
												class="layout-pagination-button layout-pagination-number __active">1</strong><a
												href="/shop/mypage/mypage_qna_order.php?&amp;page=1"
												class="layout-pagination-button layout-pagination-next-page">다음
												페이지로 가기</a><a
												href="/shop/mypage/mypage_qna_order.php?&amp;page=1"
												class="layout-pagination-button layout-pagination-last-page">맨
												끝 페이지로 가기</a>
										</div>
									</div>
								</td>
							</tr>
							<tr>
								<td height="19" align="right"><a
									href="javascript:parent.order_close()" onfocus="blur()"><img
										src="https://bucketkurly.s3.ap-northeast-2.amazonaws.com/bucketKurly(main)/popup_close.gif"></a></td>
							</tr>
						</tbody>
					</table>
				</td>
			</tr>
		</tbody>
	</table>
	<script>
	parent.$('#ifm_order').height($('#orderList').outerHeight());
</script>
</body>
</html>