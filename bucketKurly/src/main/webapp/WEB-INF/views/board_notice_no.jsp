<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<c:set var="path" value="${pageContext.request.contextPath}" />

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" type="text/css" href="resources/css/notice_no.css">
<link rel="stylesheet" type="text/css" href="resources/css/common.css">

<title>board_no</title>

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
																<td>${getnotice_no.board_notice_title}</td>
															</tr>
															<tr>
																<th scope="row">작성자</th>
																<td>${getnotice_no.board_notice_writer}</td>
															</tr>
															<tr class="etcArea">
																<td colspan="2">
																	<ul>
																		<li class="date ">
																			<strong class="th">작성일</strong>
																			<span class="td"><fmt:formatDate value="${getnotice_no.board_notice_date}" pattern="yyyy-MM-dd" /></span> 															
																		</li>
																		<li class="hit ">
																			<strong class="th">조회수</strong>
																			<span class="td">${getnotice_no.board_notice_hits}</span>
																		</li>
																	</ul>
																</td>
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
																	<p>${getnotice_no.board_notice_content}"</p>
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
																<td align="right"> <a href=/bucketkurly/board_notice.do><span class="bhs_button yb" style="float: none;">목록</span></a></td>
															</tr>
														</table>
													</td>
												</tr>
											</table>
											<div
												class="xans-element- xans-board xans-board-movement-1002 xans-board-movement xans-board-1002 ">
												<ul>
													<li class="prev "><strong>이전글</strong><a href="${path}/bucketkurly/notice_no.do?no=${board_noticeList.board_notice_no}">${getPrev.board_notice_title}</a></li>
													<li class="next "><strong>다음글</strong><a href="${path}/bucketkurly/notice_no.do?no=${board_noticeList.board_notice_no}">${getNext.board_notice_title}</a></li>
												</ul>
											</div><br>
											<table width=100% cellpadding=5 cellspacing=0>
												<col width=100 align=right bgcolor=#f7f7f7 style="padding-right: 10px">
												<col style="padding-left: 10px">
											</table>
											<p>
												<br>
												<textarea id=examC_1038	style="display: none; width: 100%; height: 300px">&lt;p style=&quot;margin-top: 0px; margin-bottom: 0px; font-stretch: normal; font-size: 12px; line-height: normal; font-family: &amp;quot;Helvetica Neue&amp;quot;;&quot;&gt;&lt;br&gt;&lt;/p&gt;&lt;p style=&quot;margin-top: 0px; margin-bottom: 0px; font-stretch: normal; font-size: 12px; line-height: normal; font-family: &amp;quot;Helvetica Neue&amp;quot;;&quot;&gt;안녕하세요 고객님, 마켓컬리입니다.&lt;/p&gt;&lt;p style=&quot;margin-top: 0px; margin-bottom: 0px; font-stretch: normal; font-size: 12px; line-height: normal; font-family: &amp;quot;Helvetica Neue&amp;quot;; min-height: 14px;&quot;&gt;&lt;br&gt;&lt;/p&gt;&lt;p style=&quot;margin-top: 0px; margin-bottom: 0px; font-stretch: normal; line-height: normal; min-height: 14px;&quot;&gt;&lt;font face=&quot;Helvetica Neue&quot;&gt;&lt;span style=&quot;font-size: 12px;&quot;&gt;[마켓컬리] 갤럭시 Z폴드/플립3 사전예약 &amp;amp; 찜하기 이벤트에 참여해주신 모든 고객님들께 감사의 말씀 전하며, 아래와 같이 당첨자와 당첨 제공품 안내 드립니다.&lt;/span&gt;&lt;/font&gt;&lt;/p&gt;&lt;p style=&quot;margin-top: 0px; margin-bottom: 0px; font-stretch: normal; line-height: normal; min-height: 14px;&quot;&gt;&lt;br&gt;&lt;/p&gt;&lt;p style=&quot;margin-top: 0px; margin-bottom: 0px; font-stretch: normal; line-height: normal; min-height: 14px;&quot;&gt;&lt;br&gt;&lt;/p&gt;&lt;p style=&quot;margin-top: 0px; margin-bottom: 0px; font-stretch: normal; line-height: normal; min-height: 14px;&quot;&gt;&lt;span style=&quot;font-size: 12px; font-stretch: normal; line-height: normal; font-family: &amp;quot;Helvetica Neue&amp;quot;;&quot;&gt;■&amp;nbsp;&lt;/span&gt;&lt;b&gt;&lt;span style=&quot;font-family: &amp;quot;Apple SD Gothic Neo&amp;quot;; font-size: 12px;&quot;&gt;당첨자&lt;/span&gt;&lt;span style=&quot;font-size: 12px; font-stretch: normal; line-height: normal; font-family: &amp;quot;Helvetica Neue&amp;quot;;&quot;&gt;&amp;nbsp;&lt;/span&gt;&lt;span style=&quot;font-family: &amp;quot;Apple SD Gothic Neo&amp;quot;; font-size: 12px;&quot;&gt;명단&lt;/span&gt;&lt;/b&gt;&lt;/p&gt;&lt;p style=&quot;margin-top: 0px; margin-bottom: 0px; font-stretch: normal; line-height: normal; min-height: 14px;&quot;&gt;&lt;b&gt;&lt;span style=&quot;font-family: &amp;quot;Apple SD Gothic Neo&amp;quot;; font-size: 12px;&quot;&gt;&lt;br&gt;&lt;/span&gt;&lt;/b&gt;&lt;/p&gt;&lt;p style=&quot;margin-top: 0px; margin-bottom: 0px; font-stretch: normal; line-height: normal; min-height: 14px;&quot;&gt;&lt;b&gt;&lt;span style=&quot;font-family: &amp;quot;Apple SD Gothic Neo&amp;quot;; font-size: 12px;&quot;&gt;&lt;img src=&quot;//img-cf.kurly.com/shop/data/editor/9a4a81774406d22d.png&quot;&gt;&lt;br&gt;&lt;/span&gt;&lt;/b&gt;&lt;/p&gt;&lt;p style=&quot;margin-top: 0px; margin-bottom: 0px; font-stretch: normal; line-height: normal; min-height: 14px;&quot;&gt;&lt;b&gt;&lt;span style=&quot;font-family: &amp;quot;Apple SD Gothic Neo&amp;quot;; font-size: 12px;&quot;&gt;&lt;br&gt;&lt;/span&gt;&lt;/b&gt;&lt;/p&gt;&lt;p style=&quot;margin-top: 0px; margin-bottom: 0px; font-stretch: normal; font-size: 12px; line-height: normal; font-family: &amp;quot;Apple SD Gothic Neo&amp;quot;;&quot;&gt;&lt;span style=&quot;font-stretch: normal; line-height: normal; font-family: &amp;quot;Helvetica Neue&amp;quot;;&quot;&gt;&lt;br&gt;&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;margin-top: 0px; margin-bottom: 0px; font-stretch: normal; font-size: 12px; line-height: normal; font-family: &amp;quot;Apple SD Gothic Neo&amp;quot;;&quot;&gt;&lt;span style=&quot;font-stretch: normal; line-height: normal; font-family: &amp;quot;Helvetica Neue&amp;quot;;&quot;&gt;■&amp;nbsp;&lt;/span&gt;&lt;b&gt;상품&lt;span style=&quot;font-stretch: normal; line-height: normal; font-family: &amp;quot;Helvetica Neue&amp;quot;;&quot;&gt;&amp;nbsp;&lt;/span&gt;안내&lt;/b&gt;&lt;/p&gt;&lt;p style=&quot;margin-top: 0px; margin-bottom: 0px; font-stretch: normal; font-size: 12px; line-height: normal; font-family: &amp;quot;Apple SD Gothic Neo&amp;quot;;&quot;&gt;&lt;br&gt;&lt;/p&gt;&lt;p style=&quot;margin-top: 0px; margin-bottom: 0px; font-stretch: normal; line-height: normal; min-height: 14px;&quot;&gt;&lt;font face=&quot;Helvetica Neue&quot;&gt;&lt;span style=&quot;font-size: 12px;&quot;&gt;상품 당첨자께는 금주(~9/3) 중 개별 연락으로 경품 발송 관련 내용을 안내해 드리겠습니다.&lt;/span&gt;&lt;/font&gt;&lt;/p&gt;&lt;p style=&quot;margin-top: 0px; margin-bottom: 0px; font-stretch: normal; line-height: normal; min-height: 14px;&quot;&gt;&lt;font face=&quot;Helvetica Neue&quot;&gt;&lt;span style=&quot;font-size: 12px;&quot;&gt;적립금 당첨자께는 익일(9/1) 내로 적립금 별도 지급 예정입니다.&lt;/span&gt;&lt;/font&gt;&lt;/p&gt;&lt;p style=&quot;margin-top: 0px; margin-bottom: 0px; font-stretch: normal; line-height: normal; min-height: 14px;&quot;&gt;&lt;font face=&quot;Helvetica Neue&quot;&gt;&lt;span style=&quot;font-size: 12px;&quot;&gt;&lt;br&gt;&lt;/span&gt;&lt;/font&gt;&lt;/p&gt;&lt;p style=&quot;margin-top: 0px; margin-bottom: 0px; font-stretch: normal; line-height: normal; min-height: 14px;&quot;&gt;&lt;span style=&quot;font-family: &amp;quot;Apple SD Gothic Neo&amp;quot;; font-size: 12px;&quot;&gt;다시&lt;/span&gt;&lt;span style=&quot;font-size: 12px; font-stretch: normal; line-height: normal; font-family: &amp;quot;Helvetica Neue&amp;quot;;&quot;&gt;&amp;nbsp;&lt;/span&gt;&lt;span style=&quot;font-family: &amp;quot;Apple SD Gothic Neo&amp;quot;; font-size: 12px;&quot;&gt;한&lt;/span&gt;&lt;span style=&quot;font-size: 12px; font-stretch: normal; line-height: normal; font-family: &amp;quot;Helvetica Neue&amp;quot;;&quot;&gt;&amp;nbsp;&lt;/span&gt;&lt;span style=&quot;font-family: &amp;quot;Apple SD Gothic Neo&amp;quot;; font-size: 12px;&quot;&gt;번&amp;nbsp;&lt;/span&gt;&lt;font face=&quot;Apple SD Gothic Neo&quot;&gt;&lt;span style=&quot;font-size: 12px;&quot;&gt;[마켓컬리] 갤럭시 Z폴드/플립3 사전예약 &amp;amp; 찜하기 이벤트&lt;/span&gt;&lt;/font&gt;&lt;span style=&quot;font-family: &amp;quot;Apple SD Gothic Neo&amp;quot;; font-size: 12px;&quot;&gt;에&lt;/span&gt;&lt;span style=&quot;font-size: 12px; font-stretch: normal; line-height: normal; font-family: &amp;quot;Helvetica Neue&amp;quot;;&quot;&gt;&amp;nbsp;&lt;/span&gt;&lt;span style=&quot;font-family: &amp;quot;Apple SD Gothic Neo&amp;quot;; font-size: 12px;&quot;&gt;참여해주신&lt;/span&gt;&lt;span style=&quot;font-size: 12px; font-stretch: normal; line-height: normal; font-family: &amp;quot;Helvetica Neue&amp;quot;;&quot;&gt;&amp;nbsp;&lt;/span&gt;&lt;span style=&quot;font-family: &amp;quot;Apple SD Gothic Neo&amp;quot;; font-size: 12px;&quot;&gt;모든&lt;/span&gt;&lt;span style=&quot;font-size: 12px; font-stretch: normal; line-height: normal; font-family: &amp;quot;Helvetica Neue&amp;quot;;&quot;&gt;&amp;nbsp;&lt;/span&gt;&lt;span style=&quot;font-family: &amp;quot;Apple SD Gothic Neo&amp;quot;; font-size: 12px;&quot;&gt;고객님들께&lt;/span&gt;&lt;span style=&quot;font-size: 12px; font-stretch: normal; line-height: normal; font-family: &amp;quot;Helvetica Neue&amp;quot;;&quot;&gt;&amp;nbsp;&lt;/span&gt;&lt;span style=&quot;font-family: &amp;quot;Apple SD Gothic Neo&amp;quot;; font-size: 12px;&quot;&gt;감사드립니다&lt;/span&gt;&lt;span style=&quot;font-size: 12px; font-stretch: normal; line-height: normal; font-family: &amp;quot;Helvetica Neue&amp;quot;;&quot;&gt;.&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;margin-top: 0px; margin-bottom: 0px; font-stretch: normal; font-size: 12px; line-height: normal; font-family: &amp;quot;Apple SD Gothic Neo&amp;quot;;&quot;&gt;&lt;span style=&quot;font-stretch: normal; line-height: normal; font-family: &amp;quot;Helvetica Neue&amp;quot;;&quot;&gt;&lt;br&gt;&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;margin-top: 0px; margin-bottom: 0px; font-stretch: normal; font-size: 12px; line-height: normal; font-family: &amp;quot;Apple SD Gothic Neo&amp;quot;;&quot;&gt;&lt;span style=&quot;font-stretch: normal; line-height: normal; font-family: &amp;quot;Helvetica Neue&amp;quot;;&quot;&gt;&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;margin-top: 0px; margin-bottom: 0px; font-stretch: normal; font-size: 12px; line-height: normal; font-family: &amp;quot;Apple SD Gothic Neo&amp;quot;;&quot;&gt;마켓컬리&lt;span style=&quot;font-stretch: normal; line-height: normal; font-family: &amp;quot;Helvetica Neue&amp;quot;;&quot;&gt;&amp;nbsp;&lt;/span&gt;드림&lt;/p&gt;&lt;p style=&quot;margin-top: 0px; margin-bottom: 0px; font-stretch: normal; line-height: normal; min-height: 14px;&quot;&gt;&lt;span style=&quot;font-family: &amp;quot;Apple SD Gothic Neo&amp;quot;; font-size: 12px;&quot;&gt;&lt;br&gt;&lt;/span&gt;&lt;/p&gt;&lt;br&gt;</textarea>
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

