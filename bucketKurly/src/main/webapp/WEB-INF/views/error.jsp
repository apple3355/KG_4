<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="path" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" type="text/css" href="resources/css/common.css">
<style>
#error{width:160px; height:160px}
p{font-size: 25px}
</style>
<title>bucketKurly</title>
</head>
<body>
<%@ include file="/WEB-INF/views/layout/header.jsp"%>
	<div id="container">
		<div id="content" style="margin:150px; text-align: center;">
		   
		    <img id = "error" src="https://bucketkurly.s3.ap-northeast-2.amazonaws.com/bucketKurly(main)/error.png"><br>
		    <p>죄송합니다.</p>
			<!-- 에러 페이지-->
			<c:if test="${requestScope['javax.servlet.error.status_code'] == 400}">
				<p>잘못 된 요청입니다.(400)</p>    
			</c:if>	
			
			<c:if test="${requestScope['javax.servlet.error.status_code'] == 404}">
				<p>요청하신 페이지를 찾을 수 없습니다.(404)</p>    
			</c:if>
			
			<c:if test="${requestScope['javax.servlet.error.status_code'] == 405}">
				<p>요청된 메소드가 허용되지 않습니다.(405)</p>    
			</c:if>
			
			<c:if test="${requestScope['javax.servlet.error.status_code'] == 500}">
				<p>서버에 오류가 발생하여 요청을 수행할 수 없습니다.(500)</p>
			</c:if>
			
			<c:if test="${requestScope['javax.servlet.error.status_code'] == 503}">
				<p>서비스를 사용할 수 없습니다.(503)</p>
			</c:if>
			<!--// 에러 페이지-->
		</div>
	</div>
<%@ include file="/WEB-INF/views/layout/footer.jsp"%>
</body>
</html>