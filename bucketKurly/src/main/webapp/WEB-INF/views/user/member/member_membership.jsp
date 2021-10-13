<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<c:set var="path" value="${pageContext.request.contextPath}" />

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<!-- 외부 스타일 시트 삽입 -->
<link rel="stylesheet" type="text/css" href="resources/css/common.css">

<title>kurly</title>

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
					
					<div class="layout-wrapper" style="text-align:center; margin: 60px;">
						<div class="xans-element- xans-myshop xans-myshop-couponserial ">
							<img src="https://bucketkurly.s3.ap-northeast-2.amazonaws.com/membership.png">
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

