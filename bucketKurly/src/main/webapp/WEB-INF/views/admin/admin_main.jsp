<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html lang="UTF-8">

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>BucketKurly::Admin - Dashboard</title>

    <!-- Custom fonts for this template-->
    <link href="resources/bootstrap/vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
    <link
        href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
        rel="stylesheet">

    <!-- Custom styles for this template-->
    
    <link href="resources/bootstrap/css/sb-admin-2.min.css" rel="stylesheet">

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
                    <div class="d-sm-flex align-items-center justify-content-between mb-4">
                        <h1 class="h3 mb-0 text-gray-800">Dashboard</h1>
                    </div>

                    <!-- Content Row -->
                    <div class="row">

                        <!-- 누적 매출 -->
                        <div class="col-xl-3 col-md-6 mb-4">
                            <div class="card border-left-primary shadow h-100 py-2">
                                <div class="card-body">
                                    <div class="row no-gutters align-items-center">
                                        <div class="col mr-2">
                                            <div class="text-xs font-weight-bold text-primary text-uppercase mb-1" style="color: #4e73df!important;">
                                                누적 매출</div>
                                            <div class="h5 mb-0 font-weight-bold text-gray-800">${revenue_total}</div>
                                        </div>
                                        <div class="col-auto">
                                            <i class="fas fa-dollar-sign fa-2x text-gray-300"></i>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <!-- 총 회원 수 -->
                        <div class="col-xl-3 col-md-6 mb-4">
                            <div class="card border-left-success shadow h-100 py-2">
                                <div class="card-body">
                                    <div class="row no-gutters align-items-center">
                                        <div class="col mr-2">
                                            <div class="text-xs font-weight-bold text-success text-uppercase mb-1" style="color: #1cc88a!important;">
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

                        <!-- 업무 진행율 -->
                        <div class="col-xl-3 col-md-6 mb-4">
                            <div class="card border-left-info shadow h-100 py-2">
                                <div class="card-body">
                                    <div class="row no-gutters align-items-center">
                                        <div class="col mr-2">
                                            <div class="text-xs font-weight-bold text-info text-uppercase mb-1" style="color: #36b9cc!important;">업무 진행율
                                            </div>
                                            <div class="row no-gutters align-items-center">
                                                <div class="col-auto">
                                                    <div class="h5 mb-0 mr-3 font-weight-bold text-gray-800">68%</div>
                                                </div>
                                                <div class="col">
                                                    <div class="progress progress-sm mr-2">
                                                        <div class="progress-bar bg-info" role="progressbar"
                                                            style="width: 68%" aria-valuenow="68" aria-valuemin="0"
                                                            aria-valuemax="100"></div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-auto">
                                            <i class="fas fa-clipboard-list fa-2x text-gray-300"></i>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <!-- 1:1문의 답변 대기글 -->
                        <div class="col-xl-3 col-md-6 mb-4">
                            <div class="card border-left-warning shadow h-100 py-2">
                                <div class="card-body">
                                    <div class="row no-gutters align-items-center">
                                        <div class="col mr-2">
                                            <div class="text-xs font-weight-bold text-warning text-uppercase mb-1">
                                                1:1문의 답변 대기글</div>
                                            <div class="h5 mb-0 font-weight-bold text-gray-800">${board_qnaList_answait}</div>
                                        </div>
                                        <div class="col-auto">
                                            <i class="fas fa-comments fa-2x text-gray-300"></i>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                    <!-- Content Row -->
                    <div class="row">
                        <!-- 등급별 회원 차트 -->
                        <div class="col-xl-4 col-lg-5">
                            <div class="card shadow mb-4">
                                <!-- Card Header - Dropdown -->
                                <div
                                    class="card-header py-3 d-flex flex-row align-items-center justify-content-between">
                                    <h6 class="m-0 font-weight-bold text-primary">등급별 회원 수</h6>
                                    
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
                                 
                                     <div class="dropdown no-arrow">
                                        <a class="dropdown-toggle" href="#" role="button" id="dropdownMenuLink"
                                            data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                            <i class="fas fa-download fa-sm fa-fw text-gray-400"></i>
                                        </a>
                                           
                                        <div class="dropdown-menu dropdown-menu-right shadow animated--fade-in"
                                            aria-labelledby="dropdownMenuLink">
                                            <div class="dropdown-header">Dropdown Header:</div>
                                            <a class="dropdown-item" href="${pageContext.request.contextPath}/admin_getRankPDF.mdo">등급별 회원 다운로드(PDF)</a>
                                             <div class="dropdown-divider"></div>
                                            <a class="dropdown-item" href="${pageContext.request.contextPath}/admin_getRankEXCEL.mdo">등급별 회원 다운로드(EXCEL)</a>
                                        </div>
                                    </div>
                                </div>
                                <!-- Card Body -->
                                <div class="card-body">
                                    <div class="chart-pie pt-4 pb-2">
                                        <canvas id="myPieChart"></canvas>
                                    </div>
                                    <div class="mt-4 text-center small">
                                        <span class="mr-2">
                                            <i class="fas fa-circle text-primary"></i> 퍼플
                                        </span>
                                        <span class="mr-2">
                                            <i class="fas fa-circle text-success"></i> 라벤더
                                        </span>
                                         <span class="mr-2">
                                            <i class="fas fa-circle text-defalut"></i> 화이트
                                        </span>
                                        <span class="mr-2">
                                            <i class="fas fa-circle text-info"></i> 일반
                                        </span>
                                    </div>
                                </div>
                            </div>
                        </div>
                         <!-- 베스트 상품 - TOP 5 -->
                        <div class="col-xl-4 col-lg-5">
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
                                <div class="card-body" style="text-align:center;">
									<c:forEach items="${Admin_StatisticsBestVO}" var="Admin_StatisticsBestVO" varStatus="status">
										<c:if test="${status.count <= 5}">
		                                    <div class="text-xs font-weight-bold .text-gray-900 text-uppercase mb-1" style="padding:8px;" >
			                                        <span style="font-size:18px;"><b>${status.count}.&nbsp;&nbsp;&nbsp; ${Admin_StatisticsBestVO.category_goods_name}</b></span><br>
			                                 		<div class="text-gray-70"><b>&nbsp;&nbsp;&nbsp;&nbsp;누적 판매 횟수 :  ${Admin_StatisticsBestVO.count_total}</b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;/&nbsp;&nbsp;&nbsp;&nbsp;
			                                 		누적 판매 금액 : ${Admin_StatisticsBestVO.goods_sell_price}</div>
			                                 </div>
                                    	</c:if>
	                                </c:forEach>
                                </div>
                            </div>
                        </div>
                        <!-- 관리자 공지사항 -->
                        <div class="col-xl-4 col-lg-5">
                            <div class="card shadow mb-4">
                                <!-- Card Header - Dropdown -->
                                <div class="card-header py-3 d-flex flex-row align-items-center justify-content-between">
                                    <h6 class="m-0 font-weight-bold text-primary">관리자 공지사항</h6>
                                </div>
                                <!-- Card Body -->
                                <div class="card-body" style="margin-left:15px">
                                    <p>1. 관리자 공지사항을 숙지 후 업무를 진행해주시기 바랍니다.</p>
                                    <p>2. 1:1문의 답변은 문의 등록 순대로 진행해주시기 바랍니다.</p>
                                    <p>3. 배송상태 수동 변경은 주문일자 순으로 진행해주시기 바랍니다.</p>
                                    <p>4. 1:1문의 답변은 문의 등록 순대로 진행해주시기 바랍니다.</p>
                                </div>
                            </div>
                        </div>
                    </div>
                    
                    <!-- 매출 차트 -->
                    <div class="row">
						<!-- Area Chart -->
                        <div class="col-lg-6 mb-4">
                            <div class="card shadow mb-4">
                                <!-- Card Header - Dropdown -->
                                <div class="card-header py-3 d-flex flex-row align-items-center justify-content-between">
                                    <h6 class="m-0 font-weight-bold text-primary">일별 매출 차트</h6>
                                    <div class="dropdown no-arrow">
                                        <a class="dropdown-toggle" href="#" role="button" id="dropdownMenuLink"
                                            data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                            <i class="fas fa-download fa-sm fa-fw text-gray-400"></i>
                                        </a>
                                           
                                        <div class="dropdown-menu dropdown-menu-right shadow animated--fade-in"
                                            aria-labelledby="dropdownMenuLink">
                                            <div class="dropdown-header">파일 다운로드:</div>
                                            <a class="dropdown-item" href="${pageContext.request.contextPath}/admin_getRevenuePDF_daily.mdo">일별 매출 다운로드(PDF)</a>
                                             <div class="dropdown-divider"></div>
                                            <a class="dropdown-item" href="${pageContext.request.contextPath}/admin_getRevenueEXCEL_daily.mdo">일별 매출 다운로드(EXCEL)</a>
                                        </div>
                                    </div>
                                </div>
                                <!-- Card Body -->
                                <div class="card-body">
                                    <div class="chart-area">
                                        <canvas id="myAreaChart"></canvas>
                                    </div>
                                </div>
                            </div>
                        </div>
					
						<!-- Area Chart -->
                       <div class="col-lg-6 mb-4">
                            <div class="card shadow mb-4">
                                <!-- Card Header - Dropdown -->
                                 <div
                                    class="card-header py-3 d-flex flex-row align-items-center justify-content-between">
                                    <h6 class="m-0 font-weight-bold text-primary">월별 매출 차트</h6>
                                    <div class="dropdown no-arrow">
                                        <a class="dropdown-toggle" href="#" role="button" id="dropdownMenuLink"
                                            data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                            <i class="fas fa-download fa-sm fa-fw text-gray-400"></i>
                                        </a>
                                           
                                        <div class="dropdown-menu dropdown-menu-right shadow animated--fade-in"
                                            aria-labelledby="dropdownMenuLink">
                                            <div class="dropdown-header">파일 다운로드:</div>
                                            <a class="dropdown-item" href="${pageContext.request.contextPath}/admin_getRevenuePDF_monthly.mdo">월별 매출 다운로드(PDF)</a>
                                             <div class="dropdown-divider"></div>
                                            <a class="dropdown-item" href="${pageContext.request.contextPath}/admin_getRevenueEXCEL_monthly.mdo">월별 매출 다운로드(EXCEL)</a>
                                        </div>
                                    </div>
                                </div>
                                <!-- Card Body -->
                                <div class="card-body">
                                    <div class="chart-area">
                                        <canvas id="myBarChart"></canvas>
                                    </div>
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

    <!-- Scroll to Top Button-->
    <a class="scroll-to-top rounded" href="#page-top">
        <i class="fas fa-angle-up"></i>
    </a>
  
    <!-- Bootstrap core JavaScript-->
    <script src="resources/bootstrap/vendor/jquery/jquery.min.js"></script>
    <script src="resources/bootstrap/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

    <!-- Core plugin JavaScript-->
    <script src="resources/bootstrap/vendor/jquery-easing/jquery.easing.min.js"></script>

    <!-- Custom scripts for all pages-->
    <script src="resources/bootstrap/js/sb-admin-2.min.js"></script>

    <!-- Page level plugins -->
    <script src="resources/bootstrap/vendor/chart.js/Chart.min.js"></script>

    <!-- Page level custom scripts -->
    <script src="https://code.jquery.com/jquery-3.5.0.js"></script>

	 <script type="text/javascript">
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

    <script type="text/javascript">
    
    $(document).ready(function(){
    	
    	// Pie Chart Example
        var ctx = document.getElementById("myPieChart");
     	var purple = document.getElementById("purple");
     	var laven = document.getElementById("laven");
     	var white = document.getElementById("white");
        var normal = document.getElementById("normal");
        
        var myPieChart = new Chart(ctx, {
          type: 'doughnut',
          data: {
            labels: ["퍼플", "라벤더", "화이트", "일반"],
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
        
     // 일별 차트
    	var ctx1 = document.getElementById("myAreaChart");
    	
    	var labels_daily = ${dailyList_json_label}; 
     	var data_daily = ${dailyList_json_data};

    	console.log(${dailyList_json_label}); 
    	console.log(${dailyList_json_data});
    	
    	var myLineChart = new Chart(ctx1, {
    	  type: 'line',
    	  data: {
    	    labels: labels_daily,
    	    datasets: [{
    	      label: "일별 매출",
    	      lineTension: 0.3,
    	      backgroundColor: "rgba(78, 115, 223, 0.05)",
    	      borderColor: "rgba(78, 115, 223, 1)",
    	      pointRadius: 3,
    	      pointBackgroundColor: "rgba(78, 115, 223, 1)",
    	      pointBorderColor: "rgba(78, 115, 223, 1)",
    	      pointHoverRadius: 3,
    	      pointHoverBackgroundColor: "rgba(78, 115, 223, 1)",
    	      pointHoverBorderColor: "rgba(78, 115, 223, 1)",
    	      pointHitRadius: 10,
    	      pointBorderWidth: 2,
    	      data: data_daily,
    	    }],
    	  },
    	  options: {
    	    maintainAspectRatio: false,
    	    layout: {
    	      padding: {
    	        left: 10,
    	        right: 25,
    	        top: 25,
    	        bottom: 0
    	      }
    	    },
    	    scales: {
    	      xAxes: [{
    	        time: {
    	          unit: 'date'
    	        },
    	        gridLines: {
    	          display: false,
    	          drawBorder: false
    	        },
    	        ticks: {
    	          maxTicksLimit: 7
    	        }
    	      }],
    	      yAxes: [{
    	        ticks: {
    	          maxTicksLimit: 5,
    	          padding: 10,
    	          // Include a dollar sign in the ticks
    	          callback: function(value, index, values) {
    	            return number_format(value) + '원';
    	          }
    	        },
    	        gridLines: {
    	          color: "rgb(234, 236, 244)",
    	          zeroLineColor: "rgb(234, 236, 244)",
    	          drawBorder: false,
    	          borderDash: [2],
    	          zeroLineBorderDash: [2]
    	        }
    	      }],
    	    },
    	    legend: {
    	      display: false
    	    },
    	    tooltips: {
    	      backgroundColor: "rgb(255,255,255)",
    	      bodyFontColor: "#858796",
    	      titleMarginBottom: 10,
    	      titleFontColor: '#6e707e',
    	      titleFontSize: 14,
    	      borderColor: '#dddfeb',
    	      borderWidth: 1,
    	      xPadding: 15,
    	      yPadding: 15,
    	      displayColors: false,
    	      intersect: false,
    	      mode: 'index',
    	      caretPadding: 10,
    	      callbacks: {
    	        label: function(tooltipItem, chart) {
    	          var datasetLabel = chart.datasets[tooltipItem.datasetIndex].label || '';
    	          return datasetLabel + ': 원' + number_format(tooltipItem.yLabel);
    	        }
    	      }
    	    }
    	  }
    	});
    		
    	// 월별 차트
    	// Bar Chart Example
    	var ctx2 = document.getElementById("myBarChart");
     	
     	var labels_monthly = ${monthlyList_json_label}; 
     	var data_monthly = ${monthlyList_json_data};
     	

    	console.log(${monthlyList_json_label}); 
    	console.log(${monthlyList_json_data});
    	var myBarChart = new Chart(ctx2, {
    	  type: 'bar',
    	  data: {
    	    labels: labels_monthly,
    	    datasets: [{
    	      label: "월별 매출",
    	      backgroundColor: "#4e73df",
    	      hoverBackgroundColor: "#2e59d9",
    	      borderColor: "#4e73df",
    	      data: data_monthly,
    	    }],
    	  },
    	  options: {
    	    maintainAspectRatio: false,
    	    layout: {
    	      padding: {
    	        left: 10,
    	        right: 25,
    	        top: 25,
    	        bottom: 0
    	      }
    	    },
    	    scales: {
    	      xAxes: [{
    	        time: {
    	          unit: 'month'
    	        },
    	        gridLines: {
    	          display: false,
    	          drawBorder: false
    	        },
    	        ticks: {
    	          maxTicksLimit: 6
    	        },
    	        maxBarThickness: 25,
    	      }],
    	      yAxes: [{
    	        ticks: {
    	          min: 0,
    	          max: 15000,
    	          maxTicksLimit: 5,
    	          padding: 10,
    	          // Include a dollar sign in the ticks
    	          callback: function(value, index, values) {
    	            return  number_format(value) + '원';
    	          }
    	        },
    	        gridLines: {
    	          color: "rgb(234, 236, 244)",
    	          zeroLineColor: "rgb(234, 236, 244)",
    	          drawBorder: false,
    	          borderDash: [2],
    	          zeroLineBorderDash: [2]
    	        }
    	      }],
    	    },
    	    legend: {
    	      display: false
    	    },
    	    tooltips: {
    	      titleMarginBottom: 10,
    	      titleFontColor: '#6e707e',
    	      titleFontSize: 14,
    	      backgroundColor: "rgb(255,255,255)",
    	      bodyFontColor: "#858796",
    	      borderColor: '#dddfeb',
    	      borderWidth: 1,
    	      xPadding: 15,
    	      yPadding: 15,
    	      displayColors: false,
    	      caretPadding: 10,
    	      callbacks: {
    	        label: function(tooltipItem, chart) {
    	          var datasetLabel = chart.datasets[tooltipItem.datasetIndex].label || '';
    	          return datasetLabel + ': 원' + number_format(tooltipItem.yLabel);
    	        }
    	      }
    	    },
    	  }
    	});
    	

    });
    </script>
    

</body>

</html>