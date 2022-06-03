<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	request.setCharacterEncoding("UTF-8");
	String cp = request.getContextPath();
	
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>홈술닷컴</title>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    
    <meta name="author" content="">
    <meta name="description" content="">
    <meta name="keywords" content="">
    <meta name="csrf-token" content="MTY0NjE4ODgxNDg3MDk2ODAwNDYyNTI1NzkyNDA0OTUwNzIzNTgzODU4">


    <meta property="og:type" content="website">
    <meta property="og:title" content="홈술닷컴">
    <meta property="og:url" content="https://www.homesool.com/mypage/my_page.php">
    <meta property="og:description" content="홈술닷컴">
    <meta property="og:locale" content="ko_KR">
    <meta name="twitter:card" content="summary">
    <meta name="twitter:title" content="홈술닷컴">
    <meta name="twitter:description" content="홈술닷컴">

    <link rel="icon" href="https://www.homesool.com/data/common/favicon.ico" type="image/x-icon">
    
	<link rel="apple-touch-icon" sizes="114x114" href="https://www.homesool.com/data/commonimg/defaultShopIcon144.png">
	<link rel="apple-touch-icon" href="https://www.homesool.com/data/commonimg/defaultShopIcon72.png">

    <link type="text/css" rel="stylesheet" href="<%=cp%>/sool/update_files/reset.css">
    <link type="text/css" rel="stylesheet" href="<%=cp%>/sool/update_files/common.css">
    <link type="text/css" rel="stylesheet" href="<%=cp%>/sool/update_files/layer.css">
    <link type="text/css" rel="stylesheet" href="<%=cp%>/sool/update_files/layout.css">
    <link type="text/css" rel="stylesheet" href="<%=cp%>/sool/update_files/list.css">
	<link type="text/css" rel="stylesheet" href="<%=cp%>/sool/update_files/button.css">
    <link type="text/css" rel="stylesheet" href="<%=cp%>/sool/update_files/mypage.css">
    <link type="text/css" rel="stylesheet" href="<%=cp%>/sool/update_files/chosen.css">	
	<link type="text/css" rel="stylesheet" href="<%=cp%>/sool/update_files/swiper-bundle.min.css">
    <link type="text/css" rel="stylesheet" href="<%=cp%>/sool/update_files/custom.css">
	<link type="text/css" rel="stylesheet" href="<%=cp%>/sool/update_files/member.css">
    <!-- Add style : start -->
    <link type="text/css" rel="stylesheet" href="<%=cp%>/sool/update_files/bootstrap-datetimepicker.min.css">
    <link type="text/css" rel="stylesheet" href="<%=cp%>/sool/update_files/bootstrap-datetimepicker-standalone.css">
    <!-- Add style : end -->

    <script src="<%=cp%>/sool/update_files/AceCounter_AW.js.다운로드"></script><script src="<%=cp%>/sool/update_files/1135465033646646" async=""></script><script src="<%=cp%>/sool/update_files/identity.js.다운로드" async=""></script><script async="" src="<%=cp%>/sool/update_files/fbevents.js.다운로드"></script><script type="text/javascript">
        var json_locale_data = {"domain":"messages","locale_data":{"messages":{"":{"lang":"ATF","plural-forms":"nplurals=1; plural=0"}}}}
    </script>
    <script type="text/javascript" src="<%=cp%>/sool/update_files/gd_gettext.js.다운로드"></script>
    <script type="text/javascript" src="<%=cp%>/sool/update_files/jquery.min.js.다운로드"></script>
    <script type="text/javascript" src="<%=cp%>/sool/update_files/underscore-min.js.다운로드"></script>
    <script type="text/javascript" src="<%=cp%>/sool/update_files/jquery.validate.min.js.다운로드"></script>
    <script type="text/javascript" src="<%=cp%>/sool/update_files/additional-methods.min.js.다운로드"></script>
    <script type="text/javascript" src="<%=cp%>/sool/update_files/numeral.min.js.다운로드"></script>
    <script type="text/javascript" src="<%=cp%>/sool/update_files/accounting.min.js.다운로드"></script>
    <script type="text/javascript" src="<%=cp%>/sool/update_files/money.min.js.다운로드"></script>
    <script type="text/javascript" src="<%=cp%>/sool/update_files/chosen.jquery.min.js.다운로드"></script>
    <script type="text/javascript" src="<%=cp%>/sool/update_files/placeholders.jquery.min.js.다운로드"></script>
    <!--[if gt IE 8]-->
    <script type="text/javascript" src="<%=cp%>/sool/update_files/clipboard.min.js.다운로드"></script>
    <!--[endif]-->
    <script type="text/javascript" src="<%=cp%>/sool/update_files/jquery.vticker.js.다운로드"></script>
    <script type="text/javascript" src="<%=cp%>/sool/update_files/gd_ui.js.다운로드"></script>


	<!-- 함수 추가 ^^ -->
   	<script type="text/javascript">

	function sendIt() {
		 var f = document.myForm;
		 
		 f.action = "<%=cp %>/homesool/update_ok.com";
		 f.submit();
	}
	</script>

    <script type="text/javascript" src="<%=cp%>/sool/update_files/gd_common.js.다운로드"></script>

    <!-- Add script : start -->
    <script type="text/javascript" src="<%=cp%>/sool/update_files/moment.js.다운로드"></script>
    <script type="text/javascript" src="<%=cp%>/sool/update_files/ko.js.다운로드"></script>
    <script type="text/javascript" src="<%=cp%>/sool/update_files/bootstrap-datetimepicker.js.다운로드"></script>
    <script type="text/javascript" src="<%=cp%>/sool/update_files/gd_member2.js.다운로드"></script>
    <script type="text/javascript" src="<%=cp%>/sool/update_files/gd_payco.js.다운로드"></script>
    <script type="text/javascript" src="<%=cp%>/sool/update_files/gd_naver.js.다운로드"></script>
    <script type="text/javascript" src="<%=cp%>/sool/update_files/gd_kakao.js.다운로드"></script>
    <script type="text/javascript" src="<%=cp%>/sool/update_files/gd_wonder.js.다운로드"></script>
    <script type="text/javascript" src="<%=cp%>/sool/update_files/gd_apple.js.다운로드"></script>
    <!-- Add script : end -->
	
    

    <style type="text/css">
        body {
        }

        /* body > #wrap > #header_warp : 상단 영역 */
        #header_warp {
        }

        /* body > #wrap > #container : 메인 영역 */
        #container {
        }

        /* body > #wrap > #footer_wrap : 하단 영역 */
        #footer_wrap {
        }
    </style>

    <script type="text/javascript" src="<%=cp%>/sool/update_files/wcslog.js.다운로드"></script>
<script type="text/javascript" src="<%=cp%>/sool/update_files/naverCommonInflowScript.js.다운로드" id="naver-common-inflow-script"></script>
<!-- Facebook Pixel Code -->
        <script>
        !function(f,b,e,v,n,t,s){if(f.fbq)return;n=f.fbq=function(){n.callMethod?
        n.callMethod.apply(n,arguments):n.queue.push(arguments)};if(!f._fbq)f._fbq=n;
        n.push=n;n.loaded=!0;n.version='2.0';n.queue=[];t=b.createElement(e);t.async=!0;
        t.src=v;s=b.getElementsByTagName(e)[0];s.parentNode.insertBefore(t,s)}(window,
        document,'script','https://connect.facebook.net/en_US/fbevents.js');
        fbq('init', '1135465033646646', {}, {'agent':'plgodo'});
        fbq('track', 'PageView');
        </script>
        <noscript><img height="1" width="1" style="display:none" src="https://www.facebook.com/tr?id=1135465033646646&ev=PageView&noscript=1"/></noscript>
        <!-- DO NOT MODIFY -->
        <!-- End Facebook Pixel Code --><script type="text/javascript" charset="UTF-8" src="<%=cp%>/sool/update_files/kp.js.다운로드"></script>
        <script type="text/javascript">
            kakaoPixel('8600996210486851034').pageView();
        </script>
        <!-- This script is for AceCounter START --> 
        <!-- <script language="javascript"> 이거 뭐야 ^^ 
            var _ag   = '26';            
            var _id   = 'namsang6452';  
            var _mr = 'single';       // ( 'single' , 'married') 
            var _gd = 'woman';            //  ('man' , 'woman')  --> 
        </script>
        <!-- AceCounter END --><!-- AceCounter Log Gathering Script V.8.0.2019080601 -->
        <script language="javascript">
	        var _AceGID=(function(){var Inf=['gtc3.acecounter.com','8080','BS4A45352888202','AW','0','NaPm,Ncisy','ALL','0'];
	        var _CI=(!_AceGID)?[]:_AceGID.val;var _N=0;var _T=new Image(0,0);if(_CI.join('.').indexOf(Inf[3])<0){ _T.src ='https://'+Inf[0]+'/?cookie'; _CI.push(Inf);  _N=_CI.length; } return {o: _N,val:_CI}; })();
	        var _AceCounter=(function(){var G=_AceGID;var _sc=document.createElement('script');var _sm=document.getElementsByTagName('script')[0];if(G.o!=0){var _A=G.val[G.o-1];var _G=(_A[0]).substr(0,_A[0].indexOf('.'));var _C=(_A[7]!='0')?(_A[2]):_A[3];var _U=(_A[5]).replace(/\,/g,'_');_sc.src='https:'+'//cr.acecounter.com/Web/AceCounter_'+_C+'.js?gc='+_A[2]+'&py='+_A[4]+'&gd='+_G+'&gp='+_A[1]+'&up='+_U+'&rd='+(new Date().getTime());_sm.parentNode.insertBefore(_sc,_sm);return _sc.src;}})();
        </script>
        <!-- AceCounter Log Gathering Script End -->

</head>

<body class="body-mypage body-my-page pc" style="zoom: 1;">
<div class="top_area"></div>
<div id="wrap">

    <div id="header_warp">
<div id="header">

    <div class="header_top">
        <div class="header_top_cont">
			
			<div class="h1_logo"><!--——--><a href="https://www.homesool.com/main/index.php"><img src="<%=cp%>/sool/update_files/701de34a823ef71ad6950510de136ece_23946.png" alt="상단 로고" title="상단 로고"></a><!--——--></div>
			<a href="https://www.homesool.com/mypage/my_page.php#;" class="n_btn_all_menu_open">전체카테고리</a>
			<div class="n_gnb_allmenu_wrap dn">
				<div class="menu_wrap">
					<div class="menu01">
						<p><a href="https://www.homesool.com/mypage/index.php"><img src="<%=cp%>/sool/update_files/allmenu_mypage.png" alt="">마이페이지</a></p> 
						<p><a href="https://www.homesool.com/mypage/shipping.php"><img src="<%=cp%>/sool/update_files/allmenu_addr.png" alt="">배송지관리</a></p>
						<p><a href="https://www.homesool.com/service/index.php"><img src="<%=cp%>/sool/update_files/allmenu_cscenter.png" alt="">고객센터</a></p>
					</div>
					<div class="menu02">
						<dl>
							<dt><a href="https://www.homesool.com/goods/choice.php">홈술제안</a></dt>
							<dd><a href="https://www.homesool.com/goods/choice.php">홈술골라담기</a></dd>  
							<dd><a href="https://www.homesool.com/goods/collection.php">홈술컬렉션</a></dd> 
							<dd><a href="https://www.homesool.com/board/list.php?bdId=event">이벤트</a></dd> 
							<dd><a href="https://www.homesool.com/goods/promotion_list.php">추천 홈술</a></dd>
							<dd><a href="https://www.homesool.com/service/benefit.php">이달의 혜택</a></dd>
							<dd><a href="https://www.homesool.com/goods/secret_main.php">비밀의 홈술</a></dd>
						</dl>
							<dl>

									<dt><a href="https://www.homesool.com/goods/goods_list.php?cateCd=001">홈술카테고리</a></dt>

									<dd><a href="https://www.homesool.com/goods/hs_today.php">오늘홈술</a></dd>
									<dd><a href="https://www.homesool.com/goods/hs_subscribe.php">구독홈술</a></dd>

										<dd><a href="https://www.homesool.com/goods/goods_list.php?cateCd=001004">막걸리</a></dd>
										<dd><a href="https://www.homesool.com/goods/goods_list.php?cateCd=001010">증류주/소주/리큐르</a></dd>
										<dd><a href="https://www.homesool.com/goods/goods_list.php?cateCd=001006">약주/청주</a></dd>
										<dd><a href="https://www.homesool.com/goods/goods_list.php?cateCd=001007">와인/과실주</a></dd>
										<dd><a href="https://www.homesool.com/goods/goods_list.php?cateCd=001008">홈닷푸드</a></dd>
										<dd><a href="https://www.homesool.com/goods/goods_list.php?cateCd=001009">홈닷굿즈</a></dd>

							</dl> 
						<dl>
							<dt><a href="https://www.homesool.com/goods/special_price.php">홈술특가</a></dt>
							<dd><a href="https://www.homesool.com/goods/special_price.php?type=time">시간한정특가</a></dd>
							<dd><a href="https://www.homesool.com/goods/special_price.php?type=stock">수량한정특가</a></dd>
						</dl> 
						<dl>
							<dt><a href="https://www.homesool.com/goods/new.php">신제품 + 베스트</a></dt>
							<dd><a href="https://www.homesool.com/goods/new.php">신제품</a></dd>
							<dd><a href="https://www.homesool.com/goods/best.php">베스트</a></dd>
						</dl>  
						<dl>
							<dt><a href="https://www.homesool.com/service/membership_lounge.php">홈술가이드</a></dt>
							<dd><a href="https://www.homesool.com/service/membership_lounge.php">홈술 멤버십</a></dd>
							<dd><a href="https://www.homesool.com/service/subscribe_guide.php">구독 홈술 가이드	</a></dd>
							<dd><a href="https://www.homesool.com/service/delivery_type.php">배송유형별 안내</a></dd>
						</dl>   
						<dl>
							<dt><a href="https://www.homesool.com/board/list.php?bdId=behindStory">매거진</a></dt>
							<dd><a href="https://www.homesool.com/board/list.php?bdId=behindStory">MD 비하인드스토리</a></dd>
							<dd><a href="https://www.homesool.com/board/list.php?bdId=breweryStory">양조장 스토리</a></dd>
							<dd><a href="https://www.homesool.com/board/list.php?bdId=hsLife">홈술 라이프</a></dd>
						</dl>	  
						<dl>
							<dt><a href="https://www.homesool.com/service/index.php">고객센터</a></dt>
							<dd><a href="https://www.homesool.com/board/list.php?&amp;bdId=notice">공지사항</a></dd>
							<dd><a href="https://www.homesool.com/service/qa.php">1:1문의하기</a></dd>
							<dd><a href="https://www.homesool.com/service/faq.php">FAQ</a></dd>
						</dl>
					</div>
				</div>
			</div>
			    
			<ul class="gnb_new"> 
				<li><a href="<%=cp%>/homesool/list_p.com">홈술고르기</a></li>
				<li><a href="<%=cp%>/homesool/guide.com">홈술가이드</a></li>
				
							 
				<!-- <li><a href="#">라이브 홈술</a></li> -->
				<li><a href="<%=cp%>/csCenter.com">고객센터</a></li>	
		
			</ul>
			 
            <div class="hd_right">
				<ul class="top_member_box">
            	    <li><a href="https://www.homesool.com/member/logout.php?returnUrl=">Logout</a></li>
            	    
            	    <li><a href="https://www.homesool.com/service/index.php">CS Center</a></li>
            	</ul>
				<!-- 검색 폼 -->
				<div class="top_search_btn">
                    <span>&nbsp;</span>
                    <img src="<%=cp%>/sool/update_files/btn_top_search.png" alt="">
                </div>
                <!-- //top_text_cont -->

				<div class="top_search" style="display:none;">
    <form name="frmSearchTop" id="frmSearchTop" action="https://www.homesool.com/goods/goods_search.php" method="get" novalidate="novalidate">
        <fieldset>
            <legend>검색폼</legend> 
            <div class="top_search_cont">
				<div class="top_search_tit">궁금하신 내용을 검색해주세요.</div>
                <div class="top_text_cont">
                    <input type="text" id="search_form" name="keyword" class="top_srarch_text" title="오늘 드시고 싶은 술은 무엇인가요" placeholder="오늘 드시고 싶은 술은 무엇인가요" autocomplete="off">
                    <input type="image" src="<%=cp%>/sool/update_files/btn_search35.png" id="btnSearchTop" class="btn_top_srarch" title="검색" value="검색" alt="검색">
                </div>
                <!-- //top_text_cont -->
                <div class="search_cont">
                    <input type="hidden" name="recentCount" value="10">

                    <!-- //recom_box -->

                    <div class="recent_box_wrap">
                    	<div class="recent_box">
                    	    <dl class="js_recent_area">
                    	        <dt>최근검색어</dt>
                    	        <dd>최근 검색어가 없습니다.</dd>
                    	    </dl>
                    	</div>
                    	<!-- //recent_box -->
                    	<div class="seach_top_all">
                    	    <!-- <button type="button" class="btn_top_search_close"><strong>닫기</strong></button> -->
                    	</div>
                    	<!-- //seach_top_all -->
					</div>
					
					
					<div class="recent_box_wrap mt40"> 
						<div class="recent_box">
                    	    <dl class="js_recent_area">
                    	        <dt>인기검색어</dt> 
                    	        <dd>
                    	            <ul class="js_recent_list"> 
                    	                <li><a href="https://www.homesool.com/goods/goods_search.php?keyword=%EB%8A%90%EB%A6%B0%EB%A7%88%EC%9D%84%EB%A7%89%EA%B1%B8%EB%A6%AC"># 느린마을막걸리</a></li> 	
                    	                <li><a href="https://www.homesool.com/goods/goods_search.php?keyword=%EC%8B%AC%EC%88%A0"># 심술</a></li> 	
                    	                <li><a href="https://www.homesool.com/goods/goods_search.php?keyword=%EB%AC%B4%EC%95%84%EC%8A%A4%ED%8C%8C%ED%83%90"># 무아스파탐</a></li> 	
                    	                <li><a href="https://www.homesool.com/goods/goods_search.php?keyword=%EB%B9%99%ED%83%84%EB%B3%B5"># 빙탄복</a></li> 	
                    	                <li><a href="https://www.homesool.com/goods/goods_search.php?keyword=%EC%A6%9D%EB%A5%98%EC%A3%BC"># 증류주</a></li> 	
                    	                <li><a href="https://www.homesool.com/goods/goods_search.php?keyword=%ED%95%B4%EC%B0%BD%EB%A7%89%EA%B1%B8%EB%A6%AC"># 해창막걸리</a></li> 	
                    	            </ul>
                    	        </dd> 
                    	    </dl>
                    	</div>  
			 
					</div>
                </div>
                <!-- //search_cont -->
            </div>
            <!-- //top_search_cont -->
        </fieldset>
    </form>
	<div class=""><a href="https://www.homesool.com/mypage/my_page.php#;" class="close"><img src="<%=cp%>/sool/update_files/btn_close38.png" alt="닫기"></a></div>
</div>
<!-- //top_search -->
				<!-- 검색 폼 -->
            	<ul class="icon_util">	   
					<li><a href="https://www.homesool.com/mypage/my_page.php#;" class="icon_location">배송지역가능조회</a></li>
            		<li>
            	        <a href="https://www.homesool.com/mypage/index.php" class="icon_mypage">MYPAGE</a>
            	    </li>
            	    <li><a href="https://www.homesool.com/order/cart.php" class="icon_cart">장바구니 <strong>0</strong> </a> </li>	
            	</ul>
				<div class="right_coupon">
					<a href="https://www.homesool.com/mypage/coupon.php"><em>01</em><span>홈술쿠폰</span></a>
				</div>
			</div> 
        </div>
        <!-- //header_top_cont -->
    </div>
    <!-- //header_top --> 
</div>
<!-- //header -->


<!-- 튜닝 : 당일 배송 지역 검색 2021-08-11 -->
<div class="ly_delivery_possible dn">	 
	<div class="ly_bg"></div>
	<div class="ly_content">
		<h1>당일배송 가능지역 조회 </h1>
		<div>
			<div class="search_area">
				<a href="javascript:void(0)" id="btnPostcodeHeader">우편번호로 검색</a>
				<p id="mesh_delivery_possible_message">[우편번호로 검색] 버튼을 눌러 당일배송 가능 지역을 조회할 수 있습니다.</p>
				
				<input type="hidden" name="meshZonecode" readonly="readonly" value="">
				<input type="hidden" name="meshZipcode" readonly="readonly" value="">

			</div>
			<div class="center mt20 fc_red">* 관공서/학교/병원/시장/공단지역/산간지역/백화점/군부대 등 배송불가</div>
			
		</div>
		<button class="close ">닫기</button>
	</div>
</div>

<script>
	$(document).ready(function () {
		$('.icon_location').click(function(){
			$('.ly_delivery_possible').removeClass('dn');  
		});
		$('.ly_delivery_possible .close').click(function(){
			$('input[name="meshZonecode"]').val('');
			$('input[name="meshZipcode"]').val('');
			$('#mesh_delivery_possible_message').text('[우편번호로 검색] 버튼을 눌러 배송 가능 지역을 조회할 수 있습니다.');
			$('.ly_delivery_possible').addClass('dn');  
		});

		$('.mesh_delivery_possible_ly_close').click(function(){
			$('input[name="meshZonecode"]').val('');
			$('input[name="meshZipcode"]').val('');
			$('#mesh_delivery_possible_message').text('[우편번호로 검색] 버튼을 눌러 배송 가능 지역을 조회할 수 있습니다.');
			$('.ly_delivery_possible').addClass('dn');
		});

		$('#btnPostcodeHeader').click(function (e) {
            e.preventDefault();
            gd_postcode_search2('meshZonecode', 'meshAddress', 'meshZipcode');
        });


	});

	// 우편번호 팝업에서 콜백받는 함수
    function postcode_callback() {
		var zonecode = $('input[name="meshZonecode"]').val();
		var zipcode = $('input[name="meshZipcode"]').val();

		if(zonecode == '' && zipcode) {
			zonecode = zipcode.replace('-', '');
		}
		zonecode = zonecode.replace('-', '');
				
		var params = {
            mode: 'check_area_delivery_possible',
			newZipCode: zonecode,
			roundNumber: '1',
			transportServiceType: 'ONE_DAY_DELIVERY',
        };
		
		$.ajax({
			method: "POST",
			cache: false,
			url: ".<%=cp%>/sool/share/mesh_ps.php",
			data: params,
			success: function (data) {

				// 당일배송 가능 지역
				if(data.delivery_possible_data.errorFl === false && data.delivery_possible_data.statusCode == '000'){
					$('#mesh_delivery_possible_message').html('조회하신 지역은 <span class="fc_blue">당일배송 가능지역</span>입니다.');
				// 당일배송 불가능 지역
				}else{
					$('#mesh_delivery_possible_message').html('조회하신 지역은 <span class="fc_red">당일배송 불가지역</span>입니다.');
				}
			}
		});
		

	}
</script>
    </div>
    <!-- //header_warp -->

    <div id="container">
        <div id="contents">
        <!-- 본문 시작 -->

            <div class="location_wrap">
                <div class="location_cont">
                    <em><a href="https://www.homesool.com/mypage/my_page.php#" class="local_home">HOME</a> &gt; 마이페이지 &gt; 내정보수정</em>
                </div>
            </div>
            <!-- //location_wrap -->

	
	 
  	 
    	 
 	 

            <div class="sub_content">
				<div class="tit_mypage">마이페이지</div> 

                <div class="side_cont">

<div class="sub_menu_box">
    <ul class="sub_menu_mypage">
      
    </ul>
</div>
<!-- //sub_menu_box -->
<script type="text/javascript">
    // 메뉴 선택
    $('.sub_menu_mypage li > a[href*="' + document.location.pathname + '"]').addClass('active');
</script>
                </div>
                <!-- //side_cont -->
<form action="" method="post" name="myForm">
<div class="content">

    <div class="mypage_cont">  

		<!-- 마이페이지 회원 요약정보 삭제  -->




        <!-- 마이페이지 회원 요약정보 -->

        <div class="my_page mt80">

            <div>
                <h2 class="tit_28">회원정보 변경</h2>
            </div>

            <div class="join_base_wrap">

                <div class="member_cont">
                    <!-- <form id="formJoin" name="formJoin" action="https://www.homesool.com/mypage/my_page_ps.php" method="post" novalidate="novalidate"> -->
                        

                        <!-- 회원가입/정보 기본정보 --><div class="base_info_box mt40">
    <div class="base_info_top">
    	<h3 class="tit_28">기본정보</h3>
    	<span class="important">표시는 반드시 입력하셔야 하는 항목입니다.</span>
    </div>
    <div class="base_info_sec mt25">
        <table border="0" cellpadding="0" cellspacing="0">
            <colgroup>
                <col width="220px">
                <col>
            </colgroup>
            
            <!-- 개인 정보 입력 화면 ^^ -->
            <tbody>
            <tr>
                <th><span class="important">아이디</span></th>
                <td>
                    ${dto.user_id }
                </td>

            </tr>
            <tr class="">
                <th><span class="important">비밀번호</span></th>
                <td class="member_password">
                    <input type="password" name="user_pwd" value="${dto.user_pwd }">
                    

                   <!--  <div id="lyMemberPw" class="layer_area" style="display:none;">
                        <div class="ly_wrap pw_advice_layer"> -->
                            
                            
                            <!-- //ly_cont -->
                     <%--        <a href="https://www.homesool.com/mypage/my_page.php#close" class="ly_close"><img src="<%=cp%>/sool/update_files/btn_layer_close.png" alt="닫기"></a>
                        </div>
                        <!-- //ly_wrap -->
                    </div> --%>
                    <!-- //layer_area -->

                    <!-- <div id="memberNewPw" class="member_pw_change" style="display:none;">
                        <dl class="">
                            <dt>현재 비밀번호</dt>
                            <dd>
                                <div class="member_warning">
                                    <input type="password" id="currentPassword" name="oldMemPw">
                                </div>
                            </dd>
                        </dl>
                        <dl>
                            <dt>새 비밀번호</dt>
                            <dd>
                                <div class="member_warning">
                                    <input type="password" id="newPassword" name="memPw">
                                </div>
                            </dd>
                        </dl>
                        <dl>
                            <dt>새 비밀번호 확인</dt>
                            <dd>
                                <div class="member_warning">
                                    <input type="password" id="newPasswordCheck" name="memPwRe">
                                </div>
                            </dd>
                        </dl>
                    </div> -->
                    <!-- //member_pw_change -->
                   
                </td>
            </tr>
            <tr>
                <th><span class="important">이름</span></th>
                <td>
                    <div class="member_warning">
                                              <!-- 데이타 패턴은 뭘까? ^^ -->
                        ${dto.user_name }
                    </div>
                </td>
            </tr>
            <tr>
                <th><span class="important">이메일</span></th>
                <td class="member_email">
                    <div class="member_warning">                                 <!-- tabindex이 뭐지 ^^ -->
                        <input type="text" name="user_email" id="email" value="${dto.user_email }" tabindex="-1">
                        <select id="emailDomain" name="emailDomain" class="chosen-select" style="display: none;">
                            <option value="self">직접입력</option>
                            <option value="naver.com">naver.com</option>
                            <option value="hanmail.net">hanmail.net</option>
                            <option value="daum.net">daum.net</option>
                            <option value="nate.com">nate.com</option>
                            <option value="hotmail.com">hotmail.com</option>
                            <option value="gmail.com">gmail.com</option>
                            <option value="icloud.com">icloud.com</option>
                        </select><div class="chosen-container chosen-container-single chosen-container-single-nosearch" style="width: 120px;" title="" id="emailDomain_chosen"><a class="chosen-single"><span>직접입력</span><div><b></b></div></a><div class="chosen-drop"><div class="chosen-search"><input type="text" autocomplete="off" readonly=""></div><ul class="chosen-results"></ul></div></div>
                    </div>
					<div class="member_warning js_email"></div>
                    <div class="form_element">
                        <!-- <input type="checkbox" id="maillingFl" name="maillingFl" value="y" checked="checked"> -->
                        <!-- <label for="maillingFl" class="check on">정보/이벤트 메일 수신에 동의합니다.</label> -->
                    </div>
                </td>
            </tr>
            <tr>
                <th><span class="important">휴대폰번호</span></th>
                <td class="member_address">
                    <div class="address_postcode">
                        <input type="text" id="cellPhone" name="user_tel" maxlength="12" placeholder="- 없이 입력하세요." data-pattern="gdNum" value="${dto.user_tel }">
                    </div>
                    <div class="form_element">
                        <input type="checkbox" id="smsFl" name="smsFl" value="y" checked="checked">
                        <!-- <label for="smsFl" class="check  on">정보/이벤트 SMS 수신에 동의합니다.</label> -->
                    </div>
                </td>
            </tr>
            <tr>
                <th><span>전화번호</span></th>
                <td>
                    <div class="member_warning">
                        <input type="text" id="phone" name="user_tel" maxlength="12" placeholder="- 없이 입력하세요." data-pattern="gdNum" value="${dto.user_tel }">
                    </div>
                </td>
            </tr>
            <tr>
                <th><span class="important">주소</span></th>
                <td class="member_address">
                    <div class="address_postcode">
                        <input type="text" >
                        <button type="button" id="btnPostcode" class="btn_post_search">우편번호검색</button>
                        <input type="hidden" name="zipcode" value="">
                    </div>
                    <div class="address_input">
                        <div class="member_warning">
                            <input type="text" name="user_addr1" readonly="readonly" value="${dto.user_addr1 }">
                        </div>
                        <div class="member_warning js_address_sub">
                            <input type="text" name="user_addr2" value="${dto.user_addr2 }">
                        </div>
                    </div>
                </td>
            </tr>
            </tbody>
        </table>
    </div>
    <!-- //base_info_sec -->
</div>
<!-- //base_info_box --><!-- 회원가입/정보 기본정보 -->
                        <!-- 회원가입/정보 사업자정보 --><!-- 회원가입/정보 사업자정보 -->
                        <!-- 회원가입/정보 부가정보 --><div class="addition_info_box mt40">
    <h3 class="tit_28">부가 정보</h3>
    <div class="addition_info_sec mt25">
        <table border="0" cellpadding="0" cellspacing="0">
            <colgroup>
                <col width="220px">
                <col>
            </colgroup>
            <tbody>
            <tr>
                <th><span>성별</span></th>
                <td>
                    <div class="member_warning">
                        <div class="form_element">
                            <ul>
                                <li>
                                    <!-- <input type="radio" id="sexFlMan" name="sexFl" value="m">
                                    <label for="sexFlMan" class="choice_s ">남자</label>
                                </li>
                                <li>
                                    <input type="radio" id="sexFlWoman" name="sexFl" value="w" checked="checked">
                                    <label for="sexFlWoman" class="choice_s on">여자</label> -->
                               		${dto.user_gender }
                                </li>
                            </ul>
                        </div>
                    </div>
                </td>
            </tr>
            <tr>
                <th><span>생일</span></th>
                <td class="member_birthday">
                    <!-- <div class="member_warning">
                    </div>
                    <div class="member_warning"><select class=" chosen-select" id="birthYear" name="birthYear" style="width: 100px; display: none;"><option value="">년</option><option value="2003">2003</option><option value="2002">2002</option><option value="2001">2001</option><option value="2000">2000</option><option value="1999">1999</option><option value="1998">1998</option><option value="1997" selected="selected">1997</option><option value="1996">1996</option><option value="1995">1995</option><option value="1994">1994</option><option value="1993">1993</option><option value="1992">1992</option><option value="1991">1991</option><option value="1990">1990</option><option value="1989">1989</option><option value="1988">1988</option><option value="1987">1987</option><option value="1986">1986</option><option value="1985">1985</option><option value="1984">1984</option><option value="1983">1983</option><option value="1982">1982</option><option value="1981">1981</option><option value="1980">1980</option><option value="1979">1979</option><option value="1978">1978</option><option value="1977">1977</option><option value="1976">1976</option><option value="1975">1975</option><option value="1974">1974</option><option value="1973">1973</option><option value="1972">1972</option><option value="1971">1971</option><option value="1970">1970</option><option value="1969">1969</option><option value="1968">1968</option><option value="1967">1967</option><option value="1966">1966</option><option value="1965">1965</option><option value="1964">1964</option><option value="1963">1963</option><option value="1962">1962</option><option value="1961">1961</option><option value="1960">1960</option><option value="1959">1959</option><option value="1958">1958</option><option value="1957">1957</option><option value="1956">1956</option><option value="1955">1955</option><option value="1954">1954</option><option value="1953">1953</option><option value="1952">1952</option><option value="1951">1951</option><option value="1950">1950</option><option value="1949">1949</option><option value="1948">1948</option><option value="1947">1947</option><option value="1946">1946</option><option value="1945">1945</option><option value="1944">1944</option><option value="1943">1943</option><option value="1942">1942</option><option value="1941">1941</option><option value="1940">1940</option><option value="1939">1939</option><option value="1938">1938</option><option value="1937">1937</option><option value="1936">1936</option><option value="1935">1935</option><option value="1934">1934</option><option value="1933">1933</option><option value="1932">1932</option><option value="1931">1931</option><option value="1930">1930</option><option value="1929">1929</option><option value="1928">1928</option><option value="1927">1927</option><option value="1926">1926</option><option value="1925">1925</option><option value="1924">1924</option><option value="1923">1923</option><option value="1922">1922</option><option value="1921">1921</option><option value="1920">1920</option><option value="1919">1919</option><option value="1918">1918</option><option value="1917">1917</option><option value="1916">1916</option><option value="1915">1915</option><option value="1914">1914</option><option value="1913">1913</option><option value="1912">1912</option><option value="1911">1911</option><option value="1910">1910</option><option value="1909">1909</option><option value="1908">1908</option><option value="1907">1907</option><option value="1906">1906</option><option value="1905">1905</option><option value="1904">1904</option><option value="1903">1903</option><option value="1902">1902</option><option value="1901">1901</option><option value="1900">1900</option></select><div class="chosen-container chosen-container-single chosen-container-single-nosearch" style="width: 100px;" title="" id="birthYear_chosen"><a class="chosen-single"><span>1997</span><div><b></b></div></a><div class="chosen-drop"><div class="chosen-search"><input type="text" autocomplete="off" readonly=""></div><ul class="chosen-results"></ul></div></div></div>
                    <div class="member_warning"><select class=" chosen-select" id="birthMonth" name="birthMonth" style="width: 80px; display: none;"><option value="">월</option><option value="01">01</option><option value="02">02</option><option value="03" selected="selected">03</option><option value="04">04</option><option value="05">05</option><option value="06">06</option><option value="07">07</option><option value="08">08</option><option value="09">09</option><option value="10">10</option><option value="11">11</option><option value="12">12</option></select><div class="chosen-container chosen-container-single chosen-container-single-nosearch" style="width: 80px;" title="" id="birthMonth_chosen"><a class="chosen-single"><span>03</span><div><b></b></div></a><div class="chosen-drop"><div class="chosen-search"><input type="text" autocomplete="off" readonly=""></div><ul class="chosen-results"></ul></div></div></div>
                    <div class="member_warning"><select class=" chosen-select" id="birthDay" name="birthDay" style="width: 80px; display: none;"><option value="">일</option><option value="01">01</option><option value="02">02</option><option value="03">03</option><option value="04">04</option><option value="05">05</option><option value="06">06</option><option value="07">07</option><option value="08">08</option><option value="09">09</option><option value="10">10</option><option value="11">11</option><option value="12">12</option><option value="13">13</option><option value="14" selected="selected">14</option><option value="15">15</option><option value="16">16</option><option value="17">17</option><option value="18">18</option><option value="19">19</option><option value="20">20</option><option value="21">21</option><option value="22">22</option><option value="23">23</option><option value="24">24</option><option value="25">25</option><option value="26">26</option><option value="27">27</option><option value="28">28</option><option value="29">29</option><option value="30">30</option><option value="31">31</option></select><div class="chosen-container chosen-container-single chosen-container-single-nosearch" style="width: 80px;" title="" id="birthDay_chosen"><a class="chosen-single"><span>14</span><div><b></b></div></a><div class="chosen-drop"><div class="chosen-search"><input type="text" autocomplete="off" readonly=""></div><ul class="chosen-results"></ul></div></div></div>
               --> 
               		${dto.user_bir1 }
               		${dto.user_bir2 }
               		${dto.user_bir3 }
               
               
                </td>
            </tr>
            <!-- <tr>
                <th><span>추천인 아이디</span></th>
                <td>
                    <input type="hidden" name="recommId" value="">
                    <span></span>
                </td>
            </tr> -->
            </tbody>
        </table>
    </div>
    <!-- //addition_info_sec -->
</div>
<!-- //addition_info_box -->




<!-- N : 약관동의 시작 -->
<!-- N : 약관동의 끝 -->
<!-- 회원가입/정보 부가정보 -->
						<!-- 정보 수정 버튼 ^^ -->
                        <div class="btn_center_box mt50">
	                        <input type="hidden" name="user_id" value="${dto.user_id }">
	                        <input type="hidden" name="user_name" value="${dto.user_name }">
	                        <input type="hidden" name="user_gender" value="${dto.user_gender }">
	                        <input type="hidden" name="user_bir1" value="${dto.user_bir1 }">
	                        <input type="hidden" name="user_bir2" value="${dto.user_bir2 }">
	                        <input type="hidden" name="user_bir3" value="${dto.user_bir3 }">
	                        <input type="hidden" name="user_rid" value="${dto.user_rid }">
	                        <input type="hidden" name="user_date" value="${dto.user_date }">
	                        <input type="hidden" name="user_nick" value="${dto.user_nick }">
	                        
	                        
	                        <input type="button" value="수정 취소" 
	                         onclick="javascript:location.href='<%=cp%>/homesool/mypage.com';" 
	                        style="width: 200px; height: 60px; background-color: #f4f3f1">
                            <button type="button" class="btn_comfirm js_btn_join" 
                             value="정보수정" onclick="sendIt();">정보수정</button>
                        </div>
                        <!-- //btn_center_box -->
                    </form>
                </div>
                <!-- //member_cont -->
            </div>
            <!-- //join_base_wrap -->

        </div>
        <!-- //my_page -->

    </div>
    <!-- //mypage_cont -->


<!-- //content -->


<script type="text/javascript">
    var snsConnection = {"snsJoinFl":null,"snsTypeFl":""};
    var $formJoin;

    $(document).ready(function () {
        $formJoin = $('#formJoin');

        $('.btn_member_cancel', $formJoin).click(function (e) {
            e.preventDefault();
            top.location.href = '/';
        });

        $('#btnAuthPhone').click(function (e) {
            e.preventDefault();
            var protocol = location.protocol;
            var callbackUrl = "https://www.homesool.com:443/member/authcellphone/dreamsecurity_result.php";
            window.open(protocol + "//hpauthdream.godo.co.kr/module/Mobile_hpauthDream_Main.php?callType=modifymember&shopUrl=" + callbackUrl + "&cpid=kcp_AFX7X", "auth_popup", "top=30, left=50, status=0, width=425, height=650");
        });

        $('#btnPostcode').click(function (e) {
            e.preventDefault();
            gd_postcode_search('zonecode', 'address', 'zipcode');
        });

        $('#btnCompanyPostcode').click(function (e) {
            e.preventDefault();
            gd_postcode_search('comZonecode', 'comAddress', 'comZipcode');
        });

        // 인풋박스 선택 이벤트
        var $datepicker = $('.js_datepicker');
        if ($datepicker.length) {
            $datepicker.datetimepicker({
                locale: 'ko',
                format: 'YYYY-MM-DD',
                dayViewHeaderFormat: 'YYYY MM',
                viewMode: 'days',
                ignoreReadonly: true,
                debug: false,
                keepOpen: false
            });
        }

        /**
         * 약관 체크박스 이벤트
         */
        $('.join_agreement_box :checkbox', $formJoin).change(function (e) {
            e.preventDefault();
            $('p.msg').addClass('dn');
            var $target = $(e.target), $label = $target.siblings('label'), $termsView = $target.closest('.join_agreement_box');
            var isTermsAgreeSelect = (e.target.id === 'termsAgree3') || (e.target.id === 'termsAgree4') || (e.target.id === 'termsAgree5');
            var isTargetChecked = $target.prop('checked') === true;

            if (isTargetChecked) {
                if (isTermsAgreeSelect) {
                    $termsView.find('.agreement_choice_box label').addClass('on');
                    $termsView.find('.agreement_choice_box :checkbox').attr({
                        value: "y", checked: "checked"
                    });
                } else {
                    $target.val('y');
                    $label.addClass('on');
                }
            } else {
                if (isTermsAgreeSelect) {
                    $termsView.find('.agreement_choice_box label').removeClass('on');
                    $termsView.find('.agreement_choice_box :checkbox').attr({
                        value: "n", checked: "checked"
                    });
                } else {
                    $target.val('n');
                    $label.removeClass('on');
                }
            }
        });

        gd_select_email_domain('email');

        function sendDateData(year, month, type) {
            var dayType = '';
            var params = {
                year: year,
                month: month,
            };
            $.ajax('.<%=cp%>/sool/share/date_select_json.php', {
                data: params,
                method: "POST",
                success: function (data) {
                    if (data !='' && data != null) {
                        if (type == 'marry') {
                            dayType = 'marriDay';
                        }else {
                            dayType = 'birthDay';
                        }
                        $('#'+dayType).empty();
                        $('#'+dayType).append(data);
                    }
                }
            });
        }


        $('#birthYear').change(function () {
            var birthMonthVal = $('#birthMonth').val();
            if ( birthMonthVal != '') {
                sendDateData($('#birthYear').val(), $('#birthMonth').val(), 'birth');
            }
        });
        $('#birthMonth').change(function () {
            var birthYearVal = $('#birthYear').val();
            if ( birthYearVal != '') {
                sendDateData($('#birthYear').val(), $('#birthMonth').val(), 'birth');
            }
        });

        gd_member2.set_my_page(my_page);
        gd_member2.init($formJoin);

        $('.btn_comfirm').click({form: $formJoin}, gd_member2.save);



    });

    var join_field = {"mode":"member_joinitem","email":{"use":"y","require":"y","data":{"self":"\uc9c1\uc811\uc785\ub825","naver.com":"naver.com","hanmail.net":"hanmail.net","daum.net":"daum.net","nate.com":"nate.com","hotmail.com":"hotmail.com","gmail.com":"gmail.com","icloud.com":"icloud.com"}},"memId":{"use":"y","maxlen":"50","minlen":"4","require":"y"},"memNm":{"use":"y","require":"y"},"memPw":{"use":"y","maxlen":"16","minlen":"10","require":"n"},"phone":{"use":"y"},"sexFl":{"use":"y"},"smsFl":{"use":"y"},"busiNo":{"overlapBusiNoFl":"y","charlen":10},"nickNm":{"use":"n","maxlen":"20","minlen":"2"},"address":{"use":"y","require":"y"},"birthDt":{"use":"y","require":"n"},"mallSno":"1","marriFl":{"use":"n"},"memberFl":{"use":"y","require":"y"},"recommFl":{"use":"y"},"recommId":{"use":"y"},"cellPhone":{"use":"y","require":"y"},"marriDate":{"use":"n"},"calendarFl":{"use":"n"},"maillingFl":{"use":"y"},"interest":{"data":{"01001001":"\ud654\uc7a5\ud488\/\ud5a5\uc218\/\ubbf8\uc6a9\ud488","01001002":"\ucef4\ud4e8\ud130\/SW","01001003":"\uc758\ub958\/\ud328\uc158\uc7a1\ud654","01001004":"\uc0dd\ud65c\/\uc8fc\ubc29\uc6a9\ud488","01001005":"\ubcf4\uc11d\/\uc2dc\uacc4\/\uc545\uc138\uc0ac\ub9ac","01001006":"\uac00\uc804\/\uce74\uba54\ub77c","01001007":"\uc11c\uc801\/\uc74c\ubc18\/\ube44\ub514\uc624"}},"job":{"data":{"01002001":"\ud559\uc0dd","01002002":"\ucef4\ud4e8\ud130\uc804\ubb38\uc9c1","01002003":"\ud68c\uc0ac\uc6d0","01002004":"\uc804\uc5c5\uc8fc\ubd80","01002005":"\uac74\ucd95\/\ud1a0\ubaa9","01002006":"\uae08\uc735\uc5c5","01002007":"\uad50\uc218\uc9c1","01002008":"\uacf5\ubb34\uc6d0","01002009":"\uc758\ub8cc\uacc4","01002010":"\ubc95\uc870\uacc4","01002011":"\uc5b8\ub860\/\ucd9c\ud310","01002012":"\uc790\uc601\uc5c5","01002013":"\ubc29\uc1a1\/\uc5f0\uc608\/\uc608\uc220","01002014":"\uae30\ud0c0"}},"groupSno":{"data":{"1":"\ube0c\ub860\uc988","2":"\uc2e4\ubc84","3":"\uace8\ub4dc","4":"\ud50c\ub798\ud2f0\ub118","5":"\ub2e4\uc774\uc544\ubaac\ub4dc"}},"ex":[],"ex1":null,"ex2":null,"ex3":null,"ex4":null,"ex5":null,"ex6":null,"options":{"use":"y"},"businessinfo":{"use":"n"}};
    var join_data = {"memNo":"23129","mallSno":"1","memId":"namsang6452","groupSno":"1","groupModDt":"0000-00-00 00:00:00","groupValidDt":"0000-00-00 00:00:00","memNm":"\ub0a8\uc2b9\uc740","pronounceName":null,"nickNm":"","memPw":"","changePasswordDt":null,"guidePasswordDt":"2022-02-26 17:09:08","appFl":"y","approvalDt":"2021-02-08 01:33:18","memberFl":"personal","entryBenefitOfferDt":"0000-00-00 00:00:00","sexFl":"w","birthDt":"19970314","calendarFl":"s","birthEventFl":"0000-00-00","email":"97314eun@naver.com","zipcode":"","zonecode":"04003","address":"\uc11c\uc6b8\ud2b9\ubcc4\uc2dc \ub9c8\ud3ec\uad6c \uc6d4\ub4dc\ucef5\ub85c14\uae38 36 (\uc11c\uad50\ub3d9)","addressSub":"\uc11c\uad50\ube4c\ub529 405\ud638","phoneCountryCode":"kr","phone":"","cellPhoneCountryCode":"kr","cellPhone":"01062686452","fax":"","company":"","service":"","item":"","busiNo":"","ceo":"","comZipcode":"","comZonecode":"","comAddress":"","comAddressSub":"","mileage":"2000.00","deposit":"0.00","maillingFl":"y","smsFl":"y","marriFl":"n","marriDate":"","job":"","interest":"","reEntryFl":"n","entryDt":"2021-02-08 01:33:18","entryPath":"pc","loginLimit":"null","lastLoginDt":"2022-03-02 11:17:14","lastLoginIp":"211.205.165.178","lastSaleDt":"0000-00-00 00:00:00","loginCnt":"4","saleCnt":0,"saleAmt":"0.00","memo":"","recommId":"","recommFl":"n","ex1":"","ex2":"","ex3":"","ex4":"","ex5":"","ex6":"","privateApprovalFl":"y","privateApprovalOptionFl":"","privateOfferFl":"","privateConsignFl":"","foreigner":"1","dupeinfo":"","adultFl":"n","adultConfirmDt":"0000-00-00 00:00:00","pakey":"","rncheck":"none","adminMemo":"","sleepFl":"n","sleepMailFl":"n","sleepSmsFl":"n","sleepWakeDt":"2022-02-26 14:42:31","expirationFl":"1","lifeMemberConversionDt":"0000-00-00 00:00:00","regDt":"2021-02-08 01:33:18","modDt":"2022-03-02 11:17:14","simpleJoinFl":"n","under14ConsentFl":"n","snsJoinFl":null,"snsTypeFl":"","connectFl":null,"birthYear":"1997","birthMonth":"03","birthDay":"14","marriYear":"","marriMonth":false,"marriDay":false};
    var my_page = true;
</script>


           
            <!-- //sub_content -->
        
        <!-- //본문 끝 contents -->
    
    <!-- //container -->

    <div id="footer_wrap">
<div class="ft_notice">
	<div class="ft_notice_inner">
		<div class="tit">NOTICE</div>
		<ul>
			<li><a href="https://www.homesool.com/board/view.php?bdId=notice&amp;sno=13">CJ대한통운 배송 출고 제한 안내</a></li>
		</ul>
		<a href="https://www.homesool.com/board/list.php?bdId=notice" class="more">더보기</a>
	</div>
</div>

<div id="footer">
    <div class="foot_list">
        <ul> 
            <li><a href="https://www.homesool.com/service/agreement.php">이용약관</a></li>
            <li><a href="https://www.homesool.com/service/private.php">개인정보처리방침</a></li>
            <li><a href="https://www.homesool.com/service/guide.php">이용안내</a></li>
        </ul>
		<select class="chosen-select" style="width: 180px; display: none;" onchange="if(this.value) window.open(this.value);">
			<option value="#;">Family Site</option>  
			<option value="https://www.soolsool.co.kr/" target="_blank">배상면주가</option>	 
			<option value="https://store.naver.com/attractions/detail?entry=plt&amp;id=12400953&amp;query=%EC%A0%84%ED%86%B5%EC%88%A0%EB%B0%95%EB%AC%BC%EA%B4%80%EC%82%B0%EC%82%AC%EC%9B%90 
">느린마을산사원박물관 </option>
		</select><div class="chosen-container chosen-container-single chosen-container-single-nosearch" style="width: 180px;" title=""><a class="chosen-single"><span>Family Site</span><div><b></b></div></a><div class="chosen-drop"><div class="chosen-search"><input type="text" autocomplete="off" readonly=""></div><ul class="chosen-results"></ul></div></div>
    </div>
    <!-- //foot_list -->
    <div class="foot_cont"> 
        <div class="foot_info">
			<div class="tit serif">농업회사법인 배상면주가 포천엘비 주식회사</div>
            <address>
                <strong></strong>
                <span></span>
            </address>
            <div class="foot_info_list">
				<div>
					<span>상호 :농업회사법인 배상면주가 포천엘비 주식회사 지점 </span>
					<span>대표 : 배영호</span>
					<span>전화 : 080-550-5500</span>
					<!-- <span>팩스 : </span> -->
				</div> 
				<div>
					<span>사업자등록번호 :  882-85-01179 </span>
					<span>통신판매업신고번호 : 제 2020-경기포천-0287 호 <a href="https://www.homesool.com/mypage/my_page.php#" class="btn_licensee_info" onclick="gd_popup_bizInfo(&#39;8828501179&#39;); return false;">[사업자정보확인] </a></span> 
				</div> 
				<div>
					<span> 주소 :  11123 경기도 포천시 화현면 화동로432번길 25 배상면주가 3층</span> 
				</div> 
				<div> 
					<span>개인정보관리책임자 : 장인섭</span>
					<span>이메일 : <a href="mailto:homesool@soolsool.co.kr" class="btn_email">homesool@soolsool.co.kr</a></span>
				</div>	
            </div> 
			
            <div class="foot_info_list">
				<div>
					<span>상호 :농업회사법인 배상면주가 포천엘비 주식회사 서울지점  </span>
					<span>대표 : 배영호</span> 
					<span>전화 : 080-550-5500</span>	   
					<!-- <span>팩스 : </span> -->
				</div>	 
				<div>
					<span>사업자등록번호 :  776-85-01398 </span>
					<span>통신판매업신고번호 : 제 2020-서울서초-2839 호 <a href="https://www.homesool.com/mypage/my_page.php#" class="btn_licensee_info" onclick="gd_popup_bizInfo(&#39;7768501398&#39;); return false;">[사업자번호조회]</a></span>
				</div>
				<div>
					<span> 주소 :  06752 서울특별시 서초구 강남대로27길 7-9, 1층</span>
				</div> 
				<div>
					<span>개인정보관리책임자 : 장인섭</span>		
					<span>이메일 : <a href="mailto:homesool@soolsool.co.kr" class="btn_email">homesool@soolsool.co.kr</a></span>
				</div> 
            </div> 
            <!-- // -->
            <p class="copyright playfair">copyright. 2021.  www.homesool.com. All rights reserved.</p>
        </div>
        <!-- //foot_info -->
		<div class="foot_cs">  
			<div class="tit serif">Customer Center</div>
			<div class="num  ">080.550.5500</div>
			<div class="txt">근무시간<br>월~금 09:00~17:00 토요일 10:00~15:00<br>일요일/법정공휴일은 휴무</div>	  
			<div>
				<a href="https://www.homesool.com/service/qa.php">1:1문의</a>		   
				<a href="https://www.homesool.com/service/faq.php" class="playfair">FAQ</a>
			</div>
			
		</div>
    </div>
    <!-- //foot_cont -->
    <div class="foot_certify">
        <span><img src="<%=cp%>/sool/update_files/logo_comodo.png" alt="보안서버 적용 확인"></span>
        <span><img src="<%=cp%>/sool/update_files/escrow_banner_kcp.png" alt="에스크로 서비스 확인" title="에스크로 서비스 확인" class="hand" onclick="javascript:window.open(&#39;https://admin.kcp.co.kr/Modules/escrow/kcp_pop.jsp?site_cd=GKPI1&#39;, &#39;escrowBanner&#39;, &#39;scrollbars=no, resizable=no, width=500, height=450&#39;);"></span>
        <span></span>
    </div>
    <!-- //foot_certify -->
</div>
<!-- //footer -->
    </div>
    <!-- //footer_wrap -->

	
    <div class="scroll_wrap">

        <!-- 우측 스크롤 배너 -->
        <div id="scroll_right">
<div class="right_banner" style="display:none;">
<a href="https://www.homesool.com/goods/brand.php"><img src="<%=cp%>/sool/update_files/scroll-banner-right01.jpg" alt="스크롤 우측 배너" title="스크롤 우측 배너"></a></div>
<div class="scroll_right_cont" style="display: none;">
    <h4>TODAY VIEW</h4>

    <div class="scr_paging" style="display: none;">
        <button type="button" class="bnt_scroll_prev" title="최근본 이전 상품"><img src="<%=cp%>/sool/update_files/btn_scroll_prev.png" alt="최근본 이전 상품"></button>
        <span><strong class="js_current">0</strong>/<span class="js_total" style="float:none;width:auto;">0</span></span>
        <button type="button" class="bnt_scroll_next" title="최근본 다음 상품"><img src="<%=cp%>/sool/update_files/btn_scroll_next.png" alt="최근본 다음 상품"></button>
    </div>
    <!-- //scr_paging -->
</div>
<%-- <span class="btn_scroll_top"><a href="https://www.homesool.com/mypage/my_page.php#TOP"><img src="<%=cp%>/sool/update_files/btn_scroll_top.png" alt="상단으로 이동"></a></span>
 --%>
<script type="text/javascript">
    // DOM 로드
    $(function () {
        $('.scroll_right_cont').todayGoods();
    });

    // 최근본상품 리스트 페이징 처리 플러그인
    $.fn.todayGoods = function () {
        // 기본값 세팅
        var self = $(this);
        var setting = {
            page: 1,
            total: 0,
            rowno: 5
        };
        var element = {
            goodsList: self.find('ul > li'),
            closeButton: self.find('ul > li > button'),
            prev: self.find('.scr_paging > .bnt_scroll_prev'),
            next: self.find('.scr_paging > .bnt_scroll_next'),
            paging: self.find('.scr_paging')
        };

        // 페이지 갯수 설정
        setting.total = Math.ceil(element.goodsList.length / setting.rowno);

        // 화면 초기화 및 갱신 (페이지 및 갯수 표기)
        var init = function () {
            if (setting.total == 0) {
                setting.page = 0;
                element.paging.hide();
            }
            self.find('ul').hide().eq(setting.page - 1).show();
            self.find('.scr_paging .js_current').text(setting.page);
            self.find('.scr_paging .js_total').text(setting.total);
        }

        // 삭제버튼 클릭
        element.closeButton.click(function(e){
            $.post('.<%=cp%>/sool/goods/goods_ps.php', {
                'mode': 'delete_today_goods',
                'goodsNo': $(this).data('goods-no')
            }, function (data, status) {
                // 값이 없는 경우 성공
                if (status == 'success' && data == '') {
                    location.reload(true);
                }
                else {
                    console.log('request fail. ajax status (' + status + ')');
                }
            });
        });

        // 이전버튼 클릭
        element.prev.click(function (e) {
            setting.page = 1 == setting.page ? setting.total : setting.page - 1;
            init();
        });

        // 다음버튼 클릭
        element.next.click(function (e) {
            setting.page = setting.total == setting.page ? 1 : setting.page + 1;
            init();
        });

        // 화면 초기화
        init();
    };
</script>
        </div>
        <!-- //scroll_right -->
        <!-- //우측 스크롤 배너 -->


    </div>
    <!-- //scroll_wrap --> 
	


    <!-- 퀵 검색 폼 -->
    <!-- 퀵 검색 폼 -->


<!-- //wrap -->

<!-- 쇼핑 카트 탭 -->

<!-- //쇼핑 카트 탭 -->

<!-- 회원가입 유도 푸시 -->

<!-- //회원가입 유도 푸시 -->

<!-- 절대! 지우지마세요 : Start -->
<div id="layerDim" class="dn">&nbsp;</div>
<iframe name="ifrmProcess" src="<%=cp%>/sool/update_files/blank.html" style="display:none" width="100%" height="0" bgcolor="#000"></iframe>
<!-- 절대! 지우지마세요 : End -->

<!-- 외부 스크립트 -->



</body></html>