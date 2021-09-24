<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="UTF-8">
<head>
<meta charset="UTF-8" />
<meta name="title" content="버켓컬리 :: 내일의 장보기, 버켓컬리" />
<meta name="description"
	content="Love Food, Love Life. 버켓컬리! 당일 수확 채소, 과일, 맛집 음식까지 내일 아침 문 앞에서 만나요!" />
<meta property="og:title" content="버켓컬리 :: 내일의 장보기, 버켓컬리" />
<meta property="og:description"
	content="Love Food, Love Life. 버켓컬리! 당일 수확 채소, 과일, 맛집 음식까지 내일 아침 문 앞에서 만나요!" />
<meta property="og:image"
	content="https://res.kurly.com/images/marketkurly/logo/logo_sns_marketkurly.jpg" />
<meta property="og:url"
	content="https://www.kurly.com/shop/member/login.php?" />
<meta property="og:type" content="website" />
<meta property="og:site_name" content="www.kurly.com" />
<meta name="keywords"
	content="다이어트, 식단, 닭가슴살, 요리, 치아바타, 레시피, 요리, 상차림, 다이어트음식, 이유식, 건강이유식" />
<title>버켓컬리 :: 내일의 장보기, 버켓컬리</title>
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<link rel="stylesheet" type="text/css" href="resources/css/login_find_ID.css">

<link rel="shortcut icon"
	href="https://bucketkurly.s3.ap-northeast-2.amazonaws.com/bucketKurly(main)/favicon_v2.webp"
	type="image/x-icon">
</head>
<body>
	<div id="wrap" class="">
		<div id="pos_scroll"></div>
		<div id="container">
			<!-- header -->
			<%@ include file="/WEB-INF/views/layout/header.jsp"%>
			<div id="main">
				<div id="content">
					<div class="section_login">
						<h3 class="tit_login">아이디 찾기</h3>
						<div class="write_form find_view">
							<form id="form" name="fm" method="post" action="/chkfind_ID.do"
								onsubmit="return chkForm( this );">
								<input type="hidden" name="act" value="Y"> <input
									type="hidden" name=rncheck value="none"> <input
									type="hidden" name=dupeinfo value=""> <strong
									class="tit_label">이름</strong> <input type="text"
									name="member_name" tabindex=2 size="29" required="required"
									placeholder="고객님의 이름을 입력해주세요"> <strong
									class="tit_label">이메일</strong> <input type="text"
									name="member_email" size="29" tabindex=5 required="required"
									placeholder="가입 시 등록하신 이메일 주소를 입력해주세요">
								<button type="submit" class="btn_type1">
									<span class="txt_type">확인</span>
								</button>
							</form>
						</div>
					</div>
				</div>
			</div>

			<!-- 화면 위로가기 버튼 -->
			<script>
				$(document).ready(function(){
					var pageTop = {
						$target : $('#pageTop'),
						$targetDefault : 0,
						$scrollTop : 0,
						$window : $(window),
						$windowHeight : 0,
						setTime : 500,
						saveHeight : 0,
						init:function(){
						},
						action:function(){
							var $self = this;
							$self.$windowHeight = parseInt($self.$window.height());
							$self.$window.on('scroll', function(){
								$self.$scrollTop = parseInt($self.$window.scrollTop());
								if($self.$scrollTop >= $self.$windowHeight){
									if(!$self.$target.hasClass('on')){
										$self.position();
										$self.$target.addClass('on');
										$self.showAction();
									}
								}else{
									if($self.$target.hasClass('on')){
										$self.position();
										$self.$target.removeClass('on');
										$self.hideAction();
									}
								}
							});
			
							$self.$target.on('click', function(e){
								e.preventDefault();
								$self.topAction();
							});
						},
						showAction:function(){
							var $self = this;
							$self.$target.stop().animate({
								opacity:1,
								bottom:$self.saveHeight
							}, $self.setTime);
						},
						hideAction:function(){
							var $self = this;
							$self.$target.stop().animate({
								opacity:0,
								bottom:-$self.$target.height()
							}, $self.setTime);
						},
						topAction:function(){
							var $self = this;
							$self.hideAction();
							$('html,body').animate({
								scrollTop:0
							}, $self.setTime);
						},
						position:function(){
							var $self = this;
							$self.saveHeight = 15;
							if($('#sectionView').length > 0){
								$self.saveHeight = 25;
							}
							if($('#branch-banner-iframe').length > 0 && parseInt( $('#branch-banner-iframe').css('bottom') ) > 0){
								$('#footer').addClass('bnr_app');
								$self.saveHeight += $('#branch-banner-iframe').height();
							}
						}
					}
					pageTop.action();
				});
			</script>



			<!-- layerDSR -->
			<%@ include file="/WEB-INF/views/layout/layerDSR.jsp"%>
			<!-- footer -->
			<%@ include file="/WEB-INF/views/layout/footer.jsp"%>
		</div>
	</div>
	<a href="#top" id="pageTop">맨 위로가기</a>
</body>
</html>