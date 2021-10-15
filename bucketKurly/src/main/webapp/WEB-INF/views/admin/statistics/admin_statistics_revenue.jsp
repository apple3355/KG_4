<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html lang="UTF-8">

<!-- 본 파일은 템플릿입니다.  -->

<head>
	<link rel="shortcut icon"
	href="https://bucketkurly.s3.ap-northeast-2.amazonaws.com/bucketKurly(main)/favicon_v2.webp"
	type="image/x-icon">
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
					<p class="mb-4">버켓컬리 매출 통계를 관리하는 페이지입니다.</p>
					
					<div class= "row" style="justify-content: center;">
						 <!-- 기간지정 -->
                        <div class="col-lg-6 mb-4">
                            <div class="card shadow mb-4">
                                <!-- Card Header - Dropdown -->
                                <div class="card-header py-3 d-flex flex-row align-items-center justify-content-between">
                                    <h6 class="m-0 font-weight-bold text-primary">일별 매출 기간 지정하기</h6>
                                </div>
                                <!-- Card Body -->
                                <div class="card-body" style="text-align:center; margin:20px; font-size:17px">
                                	<form id="dateSearchForm1" action="${pageContext.request.contextPath}/admin_statistics_revenue.mdo">
	                                      <span>시작&nbsp;&nbsp;&nbsp;:&nbsp;&nbsp;&nbsp;<input type="date" id="startdate_daliy" name="startdate_daliy" required></span> 
	                                       &nbsp;&nbsp;&nbsp;~&nbsp;&nbsp;&nbsp;
	                                      <span>종료&nbsp;&nbsp;&nbsp;:&nbsp;&nbsp;&nbsp;<input type="date" id="enddate_daliy" name="enddate_daliy" required></span>
	                                      <span>
	                                      	<a href="javascript:document.getElementById('dateSearchForm1').submit();" class="btn btn-primary btn-icon-split" id="addBtn" style="margin-left:25px;">
												<span class="icon text-white-50"><i class="fas fa-search"></i></span>
												<span class="text">검색하기</span>
											</a>
										  </span>
									 </form>	
                                </div>
                            </div>
                        </div>
                        
                         <!-- 기간지정 -->
                        <div class="col-lg-6 mb-4">
                            <div class="card shadow mb-4">
                                <!-- Card Header - Dropdown -->
                                <div class="card-header py-3 d-flex flex-row align-items-center justify-content-between">
                                    <h6 class="m-0 font-weight-bold text-primary">월별 매출 기간 지정하기</h6>
                                </div>
                                <!-- Card Body -->
                                <div class="card-body" style="text-align:center; margin:20px; font-size:17px">
                                	<form id="dateSearchForm2" action="${pageContext.request.contextPath}/admin_statistics_revenue.mdo">
	                                      <span>시작&nbsp;&nbsp;&nbsp;:&nbsp;&nbsp;&nbsp;<input type="date" id="startdate_monthly" name="startdate_monthly"required></span> 
	                                       &nbsp;&nbsp;&nbsp;~&nbsp;&nbsp;&nbsp;
	                                      <span>종료&nbsp;&nbsp;&nbsp;:&nbsp;&nbsp;&nbsp;<input type="date" id="enddate_monthly" name="enddate_monthly" required></span>
	                                      <span>
	                                      	<a href="javascript:document.getElementById('dateSearchForm2').submit();" class="btn btn-primary btn-icon-split" id="addBtn" style="margin-left:25px;">
												<span class="icon text-white-50"><i class="fas fa-search"></i></span>
												<span class="text">검색하기</span>
											</a>
										  </span>
									 </form>	
                                </div>
                            </div>
                        </div>
					</div>
					
					<!-- 일별 매출 순 -->
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
    
    $(document).ready(function(){
    	// 일별 차트
    	var ctx = document.getElementById("myAreaChart");
    	
    	var labels_daily = ${dailyList_json_label}; 
     	var data_daily = ${dailyList_json_data};
    	
    	var myLineChart = new Chart(ctx, {
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
    	
    });//document.ready()
    
 	
    
    </script>
    
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
    
    
    function fn_update() {
		var result = confirm("이 상품을 수정하시겠습니까? ");
		if(result){ 
			alert("수정 안으로 들어옴");
			var i = row.parentNode.parentNode.rowIndex;	//버튼이 눌러진 테이블의 로우넘버 저장
			
			var goods_sell_no = document.getElementById("dataTable").rows[i].cells[0].innerHTML;	//해당 로우넘버의 아이디가 있는 칼럼 값 저장
			//프로모션
			var selectbox_pro = document.getElementById("dataTable").rows[i].cells[11].childNodes[0];
			var promotion = selectbox_pro.options[selectbox_pro.selectedIndex].value;
			//상태
			var selectbox_sta = document.getElementById("dataTable").rows[i].cells[12].childNodes[0];
			var status = selectbox_sta.options[selectbox_sta.selectedIndex].value;
			//할인
			var selectbox_dis = document.getElementById("dataTable").rows[i].cells[13].childNodes[0];
			var discount = selectbox_dis.options[selectbox_dis.selectedIndex].value;
			
		
			var form = document.createElement("form");
			form.setAttribute("method", "Post");
			form.setAttribute("action", "${pageContext.request.contextPath}/admin_statistics_revenue.mdo");
			
			var goods_sell_noField = document.createElement("input");
			goods_sell_noField.setAttribute("type", "hidden");
			goods_sell_noField.setAttribute("name", "goods_sell_no");
			goods_sell_noField.setAttribute("value", goods_sell_no);
			
			var promotionField = document.createElement("input");
			promotionField.setAttribute("type", "hidden");
			promotionField.setAttribute("name", "goods_sell_promotion");
			promotionField.setAttribute("value", promotion);
			
			var statusField = document.createElement("input");
			statusField.setAttribute("type", "hidden");
			statusField.setAttribute("name", "goods_sell_status");
			statusField.setAttribute("value", status);
			
			var discountField = document.createElement("input");
			discountField.setAttribute("type", "hidden");
			discountField.setAttribute("name", "goods_sell_discount");
			discountField.setAttribute("value", discount);
			
			form.appendChild(goods_sell_noField);
			form.appendChild(promotionField);
			form.appendChild(statusField);
			form.appendChild(discountField);
			
			document.body.appendChild(form);
			form.submit();
		
	      }else{
		  	    location.href = "javascript:void(0);";
	      }
	}
    </script>
    
</body>
</html>