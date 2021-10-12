<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html lang="UTF-8">

<!-- 본 파일은 템플릿입니다.  -->

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>BucketKurly::Admin-Statistics</title>

    <!-- Custom fonts for this template -->
    <link href="resources/bootstrap/vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
    <link href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="resources/bootstrap/css/sb-admin-2.min.css" rel="stylesheet">

    <!-- Custom styles for this page -->
    <link href="resources/bootstrap/vendor/datatables/dataTables.bootstrap4.min.css" rel="stylesheet">
	
</head>

<body id="page-top">
	<!-- Page Wrapper -->
    <div id="wrapper">

  	<!-- header -->
	<%@ include file="/WEB-INF/views/admin_layout/admin_sidebar.jsp"%>  		

        <!-- Content Wrapper -->
        <div id="content-wrapper" class="d-flex flex-column">
            <!-- Main Content -->
            <div id="content">
  				
  				<!-- topbar -->
      			<%@ include file="/WEB-INF/views/admin_layout/admin_topbar.jsp"%>  		

                <!-- Begin Page Content -->
                <div class="container-fluid">
                
                	<!-- Page Heading -->
			    	<h1 class="h3 mb-2 text-gray-800">통계 관리</h1>
					<p class="mb-4">버켓컬리 회원,상품 통계를 관리하는 페이지입니다.</p>
					
				
					<!-- 베스트 상품순 -->
					<div class="row" style="justify-content: center;">
					
                    	 <!-- Pie Chart -->
                        <div class="col-xl-4 col-lg-5">
                            <div class="card shadow mb-4">
                            
                                <!-- Card Header - Dropdown -->
                                <div class="card-header py-3 d-flex flex-row align-items-center justify-content-between">
                                    <h6 class="m-0 font-weight-bold text-primary">등급별 회원 수</h6>
                                 	
                                    <div class="dropdown no-arrow">
                                        <a class="dropdown-toggle" href="#" role="button" id="dropdownMenuLink"
                                            data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                            <i class="fas fa-download fa-sm fa-fw text-gray-400"></i>
                                        </a>
                                           
                                        <div class="dropdown-menu dropdown-menu-right shadow animated--fade-in"
                                            aria-labelledby="dropdownMenuLink">
                                            <div class="dropdown-header">파일 다운로드:</div>
                                            <a class="dropdown-item" href="${pageContext.request.contextPath}/admin_getRankPDF.mdo">등급별 회원 다운로드(PDF)</a>
                                             <div class="dropdown-divider"></div>
                                            <a class="dropdown-item" href="${pageContext.request.contextPath}/admin_getRankEXCEL.mdo">등급별 회원 다운로드(EXCEL)</a>
                                        </div>
                                    </div>
                                </div>
                                
                                <!-- Card Body -->
                                <div class="card-body">
                                	<c:forEach items="${Admin_StatisticsVO}" var="Admin_StatisticsVO">
	                                    <c:set var="rank" value="${Admin_StatisticsVO.member_rank }" scope="session"/>
	                                 	 <c:choose>
									        <c:when test='${rank eq "퍼플"}'>
									            <input type="hidden" id= "purple" data-purple="${Admin_StatisticsVO.member_rank_total }" >
									        </c:when> 
									        <c:when test='${rank eq "라벤더"}'>
									              <input type="hidden" id= "laven" data-laven="${Admin_StatisticsVO.member_rank_total }">
									        </c:when>  
									        <c:when test='${rank eq "화이트"}'>
									            <input type="hidden" id= "white" data-white="${Admin_StatisticsVO.member_rank_total }">
									        </c:when>  
									        <c:when test='${rank eq "일반"}'>
									            <input type="hidden" id= "normal" data-normal="${Admin_StatisticsVO.member_rank_total }">
									        </c:when>          
								   		 </c:choose>
                                 	</c:forEach>
                                
                                    <div class="chart-pie pt-4 pb-2">
                                        <canvas id="myPieChart"></canvas>
                                    </div>
                                    <div class="mt-4 text-center small">
                                        <span class="mr-2"><i class="fas fa-circle text-primary"></i> 퍼플</span>
                                        <span class="mr-2"><i class="fas fa-circle text-success"></i> 라벤더</span>
                                        <span class="mr-2"><i class="fas fa-circle text-defalut"></i> 화이트 </span>
                                        <span class="mr-2"><i class="fas fa-circle text-info"></i> 일반</span>
                                    </div>
                                </div>
                            </div>
                            
                            
	                            <div class="card border-left-success shadow h-15 py-2">
	                                <div class="card-body">
	                                    <div class="row no-gutters align-items-center">
	                                        <div class="col mr-2">
	                                            <div class="text-xs font-weight-bold text-success text-uppercase mb-1">
	                                                총 회원 수</div>
	                                            <div class="h5 mb-0 font-weight-bold text-gray-800">${member_num}</div>
	                                        </div>
	                                        <div class="col-auto">
	                                            <i class="fas fa-user fa-2x text-gray-300"></i>
	                                        </div>
	                                    </div>
	                                </div>
	                            </div>
	                            
                        </div>
                        
                        
                             <!-- Area Chart -->
                        <div class="col-xl-5 col-lg-6" >
                            <div class="card shadow mb-4">
                            
                                <!-- Card Header - Dropdown -->
                                <div class="card-header py-3 d-flex flex-row align-items-center justify-content-between">
                                    <h6 class="m-0 font-weight-bold text-primary">베스트 상품 - TOP 5</h6>
                                    
                                    <div class="dropdown no-arrow">
                                        <a class="dropdown-toggle" href="#" role="button" id="dropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                            <i class="fas fa-download fa-sm fa-fw text-gray-400"></i>
                                        </a>
                                        <div class="dropdown-menu dropdown-menu-right shadow animated--fade-in"
                                            aria-labelledby="dropdownMenuLink">
                                            <div class="dropdown-header">파일 다운로드:</div>
                                            <a class="dropdown-item" href="${pageContext.request.contextPath}/admin_getBestItemPDF.mdo">베스트 상품 다운로드(PDF)</a>
                                             <div class="dropdown-divider"></div>
                                            <a class="dropdown-item" href="${pageContext.request.contextPath}/admin_getBestItemEXCEL.mdo">베스트 상품 다운로드(EXCEL)</a>
                                        </div>
                                    </div>
                                </div>
                                
                                <!-- Card Body -->
                                <div class="card-body">
									<c:forEach items="${Admin_StatisticsBestVO}" var="Admin_StatisticsBestVO" varStatus="status">
										<c:if test="${status.count <= 5}">
		                                    <div class="card bg-primary text-white shadow" style="margin:20px;">
		                                        <div class="card-body">
			                                        <span style="font-size:15px;margin:7px;"><b>${status.count}. ${Admin_StatisticsBestVO.category_goods_name}</b></span><br>
			                                        <div class="text-white-50 small"><b>누적 판매 횟수 :  ${Admin_StatisticsBestVO.count_total}</b></div>
			                                        <div class="text-white-50 small">누적 판매 금액 : ${Admin_StatisticsBestVO.goods_sell_price}</div>
		                                        </div>
	                                    	</div>
                                    	</c:if>
	                                </c:forEach>
                                </div>
                            </div>
                        </div>
                     </div>

						
                 </div>
                <!-- /.container-fluid -->

            </div>
            <!-- End of Main Content -->


        <!-- Footer -->
     		 <%@ include file="/WEB-INF/views/admin_layout/admin_footer.jsp"%>  
        <!-- End of Footer -->

        </div>
        <!-- End of Content Wrapper -->

    </div>
    <!-- End of Page Wrapper -->
	<!-- Bootstrap core JavaScript-->
    <script src="resources/bootstrap/vendor/jquery/jquery.min.js"></script>
    <script src="resources/bootstrap/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

    <!-- Core plugin JavaScript-->
    <script src="resources/bootstrap/vendor/jquery-easing/jquery.easing.min.js"></script>

    <!-- Custom scripts for all pages-->
    <script src="resources/bootstrap/js/sb-admin-2.min.js"></script>

    <!-- Page level plugins -->
    <script src="resources/bootstrap/vendor/chart.js/Chart.min.js"></script>

    
    <script>
 
   	// Pie Chart Example
       var ctx = document.getElementById("myPieChart");
    	var purple = document.getElementById("purple");
    	var laven = document.getElementById("laven");
    	var white = document.getElementById("white");
       var normal = document.getElementById("normal");
       var myPieChart = new Chart(ctx, {
         type: 'doughnut',
         data: {
           labels: ["퍼플", "라벤더", "화이트", "테스트"],
           datasets: [{
             data: [purple.dataset.purple, laven.dataset.laven, white.dataset.white, normal.dataset.normal],
             backgroundColor: ['#9933ff', '#d9b3ff', '#FFCCFF','#cccccc'],
             hoverBackgroundColor: ['#8000ff', '#bf80ff', '#f2f2f2','#a6a6a6'],
             hoverBorderColor: "rgba(234, 236, 244, 1)",
           }],
         },
         options: {
           maintainAspectRatio: false,
           tooltips: {
             backgroundColor: "rgb(255,255,255)",
             bodyFontColor: "#858796",
             borderColor: '#dddfeb',
             borderWidth: 1,
             xPadding: 15,
             yPadding: 15,
             displayColors: false,
             caretPadding: 10,
           },
           legend: {
             display: false
           },
           cutoutPercentage: 80,
         },
       });
   
    function number_format(number, decimals, dec_point, thousands_sep) {
    	  // *     example: number_format(1234.56, 2, ',', ' ');
    	  // *     return: '1 234,56'
    	  number = (number + '').replace(',', '').replace(' ', '');
    	  var n = !isFinite(+number) ? 0 : +number,
    	    prec = !isFinite(+decimals) ? 0 : Math.abs(decimals),
    	    sep = (typeof thousands_sep === 'undefined') ? ',' : thousands_sep,
    	    dec = (typeof dec_point === 'undefined') ? '.' : dec_point,
    	    s = '',
    	    toFixedFix = function(n, prec) {
    	      var k = Math.pow(10, prec);
    	      return '' + Math.round(n * k) / k;
    	    };
    	  // Fix for IE parseFloat(0.55).toFixed(0) = 0;
    	  s = (prec ? toFixedFix(n, prec) : '' + Math.round(n)).split('.');
    	  if (s[0].length > 3) {
    	    s[0] = s[0].replace(/\B(?=(?:\d{3})+(?!\d))/g, sep);
    	  }
    	  if ((s[1] || '').length < prec) {
    	    s[1] = s[1] || '';
    	    s[1] += new Array(prec - s[1].length + 1).join('0');
    	  }
    	  return s.join(dec);
    	}
    </script>
</body>

</html>