<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>BucketKurly::Admin</title>

    <!-- Custom fonts for this template-->
    <link href="resources/bootstrap/vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
    <link href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet">

    <!-- Custom styles for this template-->
    <link href="resources/bootstrap/css/sb-admin-2.min.css" rel="stylesheet">

</head>

<body id="page-top">

    <!-- Sidebar -->
     <ul class="navbar-nav bg-gradient-primary sidebar sidebar-dark accordion" id="accordionSidebar">
         <!-- Sidebar - Brand -->
         <a class="sidebar-brand d-flex align-items-center justify-content-center" href="${pageContext.request.contextPath}/admin_main.mdo">
             <div class="sidebar-brand-icon rotate-n-15">
                 <i class="fas fa-laugh-wink"></i>
             </div>
             <div class="sidebar-brand-text mx-3">Kurly::Admin<sup></sup></div>
         </a>
         
         
          <!-- Nav Item - Dashboard -->
         <li class="nav-item active">
             <a class="nav-link" href="${pageContext.request.contextPath}/admin_main.mdo">
                 <i class="fas fa-fw fa-tachometer-alt"></i>
                 <span>대시보드</span></a>
         </li>
       
       
         <!-- Divider -->
         <hr class="sidebar-divider">
         <!-- Heading -->
         <div class="sidebar-heading">Member</div>
         <!-- Nav Item - Pages Collapse Menu -->
         <c:if test="${sessionScope.id eq 'admin'}">     
          	<li class="nav-item">
              <a class="nav-link collapsed" href="${pageContext.request.contextPath}/admin_management.mdo" >
                  <i class="fas fa-fw fa-cog"></i>
                  <span>매니저관리</span>
              </a>
          </li>   
     	 </c:if>
         <li class="nav-item">
             <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseMember" aria-expanded="true" aria-controls="collapseMember">
                 <i class="fas fa-fw fa-cog"></i>
                 <span>회원관리</span>
             </a>
             <div id="collapseMember" class="collapse" aria-labelledby="headingTwo" data-parent="#accordionSidebar">
                 <div class="bg-white py-2 collapse-inner rounded">
                     <h6 class="collapse-header">컬리 회원관리 :</h6>
                     <a class="collapse-item" href="buttons.html">회원관리</a>
                     <a class="collapse-item" href="buttons.html">비회원관리</a>
                     <a class="collapse-item" href="buttons.html">회원등급 관리</a>
                     <a class="collapse-item" href="${pageContext.request.contextPath}/admin_terms_getList.mdo">약관관리</a>
                 </div>
             </div>
         </li>
         
         <!-- Divider -->
        <hr class="sidebar-divider">
        <!-- Heading -->
         <div class="sidebar-heading">Goods</div>
        
        <li class="nav-item">
             <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseCategory" aria-expanded="true" aria-controls="collapseCategory">
                 <i class="fas fa-fw fa-cog"></i>
                 <span>카테고리</span>
             </a>
             <div id="collapseCategory" class="collapse" aria-labelledby="headingTwo" data-parent="#accordionSidebar">
                 <div class="bg-white py-2 collapse-inner rounded">
                     <h6 class="collapse-header">컬리 카테고리 :</h6>
                     <a class="collapse-item" href="${pageContext.request.contextPath}/admin_category_parent.mdo">상위 카테고리</a>
                     <a class="collapse-item" href="${pageContext.request.contextPath}/admin_category_sub.mdo">중위 카테고리</a>
                     <a class="collapse-item" href="${pageContext.request.contextPath}/admin_category_goodslist.mdo">하위 카테고리(상품)</a>
                 </div>
             </div>
         </li>
         
         <li class="nav-item">
             <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseGoods" aria-expanded="true" aria-controls="collapseGoods">
                 <i class="fas fa-fw fa-cog"></i>
                 <span>상품</span>
             </a>
             <div id="collapseGoods" class="collapse" aria-labelledby="headingTwo" data-parent="#accordionSidebar">
                 <div class="bg-white py-2 collapse-inner rounded">
                     <h6 class="collapse-header">컬리 상품관리 :</h6>
                    <a class="collapse-item" href="${pageContext.request.contextPath}/admin_goods_list.mdo">상품판매</a>
                 	<a class="collapse-item" href="${pageContext.request.contextPath}/admin_board_review.mdo">상품후기</a>
                 </div> 
             </div>
         </li>
         
         <li class="nav-item">
             <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseOrder" aria-expanded="true" aria-controls="collapseOrder">
                 <i class="fas fa-fw fa-cog"></i>
                 <span>주문/결제</span>
             </a>
             <div id="collapseOrder" class="collapse" aria-labelledby="headingTwo" data-parent="#accordionSidebar">
                 <div class="bg-white py-2 collapse-inner rounded">
                     <h6 class="collapse-header">주문 및 결제 관리 :</h6>
                     <a class="collapse-item" href="buttons.html">주문관리</a>
                     <a class="collapse-item" href="buttons.html">결제·배송관리 </a>
                 </div>
             </div>
         </li>
        
        
        <!-- Divider -->
        <hr class="sidebar-divider">
        <!-- Heading -->
         <div class="sidebar-heading">Marketing</div>
        
        <li class="nav-item">
             <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseMarketing" aria-expanded="true" aria-controls="collapseMarketing">
                 <i class="fas fa-fw fa-cog"></i>
                 <span>마케팅</span>
             </a>
             <div id="collapseMarketing" class="collapse" aria-labelledby="headingTwo" data-parent="#accordionSidebar">
                 <div class="bg-white py-2 collapse-inner rounded">
                     <h6 class="collapse-header">컬리 마케팅 및 프로모션관리 :</h6>
                     <a class="collapse-item" href="buttons.html">프로모션 관리</a>
                     <a class="collapse-item" href="${pageContext.request.contextPath}/admin_banner_getList.mdo">배너관리</a>
                     <a class="collapse-item" href="${pageContext.request.contextPath}/admin_coupon_getList.mdo">쿠폰관리</a>
                 </div>
             </div>
         </li>
        
        
         <!-- Divider -->
        <hr class="sidebar-divider">
        <!-- Heading -->
         <div class="sidebar-heading">Board</div>
		<li class="nav-item">
             <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseBoard" aria-expanded="true" aria-controls="collapseBoard">
                 <i class="fas fa-fw fa-cog"></i>
                 <span>게시글</span>
             </a>
             <div id="collapseBoard" class="collapse" aria-labelledby="headingTwo" data-parent="#accordionSidebar">
                 <div class="bg-white py-2 collapse-inner rounded">
                     <h6 class="collapse-header">컬리 게시글관리 :</h6>
                     <a class="collapse-item" href="${pageContext.request.contextPath}/admin_board_notice.mdo">공지사항</a>
                     <a class="collapse-item" href="${pageContext.request.contextPath}/admin_board_faq.mdo">자주하는 질문</a>
                     <a class="collapse-item" href="${pageContext.request.contextPath}/admin_board_qna.mdo">1:1문의</a>
                 </div>
             </div>
         </li>
         
         
         
         <!-- Divider -->
         <hr class="sidebar-divider d-none d-md-block">

         <!-- Sidebar Toggler (Sidebar) -->
         <div class="text-center d-none d-md-inline">
             <button class="rounded-circle border-0" id="sidebarToggle"></button>
         </div>

     </ul>
     <!-- End of Sidebar -->

</body>
</html>