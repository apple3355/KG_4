<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<c:set var="path" value="${pageContext.request.contextPath}" />

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" type="text/css" href="resources/css/board_notice_no.css">
<link rel="stylesheet" type="text/css" href="resources/css/common.css">

<title>board_faq</title>

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
					<div class="tit_page">
						<h2 class="tit">자주하는 질문</h2>
						<p style="text-align:center; font-size:16px;">컬리의 고객들이 자주하는 질문의 답변을 이곳에서 확인하세요.</p>
					</div>
					
					<div class="layout-wrapper">
						<div class="xans-element- xans-myshop xans-myshop-couponserial ">
							<table width="100%" align="center" cellpadding="0" cellspacing="0">
								<tbody>
									<tr>
										<td>
											<table width="100%">
												<tr>
													<td>
														<table class="boardView" width=100%>
															<tr>
																<th scope="row" style="border: none;">제목</th>
																<td>${faqVo.board_faq_title}</td>
															</tr>
															<tr>
																<th scope="row">문의종류</th>
																<td>${faqVo.board_faq_type}</td>
															</tr>
															<tr>
																<th scope="row">작성자</th>
																<td>bucketkurly</td>
															</tr>
															
														</table>
													</td>
												</tr>
												<tr>
													<td align=right class=eng style="padding: 5px;"></td>
												</tr>
												<tr>
													<td style="padding: 10px;" height=200 valign=top id=contents>
														<table width=100% style="table-layout: fixed">
															<tr>
																<td class="board_view_content"
																	style="word-wrap: break-word; word-break: break-all"
																	valign=top>
																	<p>${faqVo.board_faq_content}"</p>
																</td>
															</tr>
														</table>
													</td>
												</tr>
												<tr>
													<td height=1 bgcolor="#f4f4f4"></td>
												</tr>
											</table> <br>
											<table width=100% style="table-layout: fixed" cellpadding=0 cellspacing=0>
												<tr>
													<td align=center style="padding-top: 10px;">
														<table width=100%>
															<tr>
																<td align="right"> <a href="${pageContext.request.contextPath}/board_faq.do"><span class="bhs_button yb" style="float: none;">목록</span></a></td>
															</tr>
														</table>
													</td>
												</tr>
											</table>
											<br>
										</td>
									</tr>
									</tbody>
								</table>
							
						
						</div>
					</div>
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

