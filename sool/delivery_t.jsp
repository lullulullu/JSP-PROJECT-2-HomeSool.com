<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	request.setCharacterEncoding("UTF-8");
	String cp = request.getContextPath();
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<!-- saved from url=(0059)https://www.homesool.com/goods/goods_list.php?cateCd=001006 -->
<html><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>로그인</title>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    
    <meta name="author" content="">
    <meta name="description" content="">
    <meta name="keywords" content="">
    <meta name="csrf-token" content="MTY0NjAyODU0MjQxMzk0NjYyNjgyNTQ1MTg0MTQ1MjU3NjA3NDc3Njg1">


    <meta property="og:type" content="website">
    <meta property="og:title" content="홈술닷컴">
    <meta property="og:url" content="https://www.homesool.com/goods/goods_list.php?cateCd=001006">
    <meta property="og:description" content="홈술닷컴">
    <meta property="og:locale" content="ko_KR">
    <meta name="twitter:card" content="summary">
    <meta name="twitter:title" content="홈술닷컴">
    <meta name="twitter:description" content="홈술닷컴">

    <link rel="icon" href="https://www.homesool.com/data/common/favicon.ico" type="image/x-icon">
    
	<link rel="apple-touch-icon" sizes="114x114" href="https://www.homesool.com/data/commonimg/defaultShopIcon144.png">
	<link rel="apple-touch-icon" href="https://www.homesool.com/data/commonimg/defaultShopIcon72.png">

    <link type="text/css" rel="stylesheet" href="<%=cp %>/sool/main_files/reset.css">
    <link type="text/css" rel="stylesheet" href="<%=cp %>/sool/main_files/common.css">
    <link type="text/css" rel="stylesheet" href="<%=cp %>/sool/main_files/layer.css">
    <link type="text/css" rel="stylesheet" href="<%=cp %>/sool/main_files/layout.css">
    <link type="text/css" rel="stylesheet" href="<%=cp %>/sool/main_files/list.css">
	<link type="text/css" rel="stylesheet" href="<%=cp %>/sool/main_files/button.css">
    <link type="text/css" rel="stylesheet" href="<%=cp %>/sool/main_files/main.css">
    <link type="text/css" rel="stylesheet" href="<%=cp %>/sool/main_files/chosen.css">	
	<link type="text/css" rel="stylesheet" href="<%=cp %>/sool/main_files/swiper-bundle.min.css">
    <link type="text/css" rel="stylesheet" href="<%=cp %>/sool/main_files/custom.css">


    <script src="<%=cp %>/sool/main_files/AceCounter_AW.js.다운로드"></script>
    <script src="<%=cp %>/sool/main_files/1135465033646646" async=""></script><script src="<%=cp %>/sool/main_files/identity.js.다운로드" async=""></script><script async="" src="<%=cp %>/sool/main_files/fbevents.js.다운로드"></script><script type="text/javascript">
        var json_locale_data = {"domain":"messages","locale_data":{"messages":{"":{"lang":"ATF","plural-forms":"nplurals=1; plural=0"}}}}
    </script>
    <script type="text/javascript" src="<%=cp %>/sool/main_files/gd_gettext.js.다운로드"></script>
    <script type="text/javascript" src="<%=cp %>/sool/main_files/jquery.min.js.다운로드"></script>
    <script type="text/javascript" src="<%=cp %>/sool/main_files/underscore-min.js.다운로드"></script>
    <script type="text/javascript" src="<%=cp %>/sool/main_files/jquery.validate.min.js.다운로드"></script>
    <script type="text/javascript" src="<%=cp %>/sool/main_files/additional-methods.min.js.다운로드"></script>
    <script type="text/javascript" src="<%=cp %>/sool/main_files/numeral.min.js.다운로드"></script>
    <script type="text/javascript" src="<%=cp %>/sool/main_files/accounting.min.js.다운로드"></script>
    <script type="text/javascript" src="<%=cp %>/sool/main_files/money.min.js.다운로드"></script>
    <script type="text/javascript" src="<%=cp %>/sool/main_files/chosen.jquery.min.js.다운로드"></script>
    <script type="text/javascript" src="<%=cp %>/sool/main_files/placeholders.jquery.min.js.다운로드"></script>
    <!--[if gt IE 8]-->
    <script type="text/javascript" src="<%=cp %>/sool//main_files/clipboard.min.js.다운로드"></script>
    <!--[endif]-->
    <script type="text/javascript" src="<%=cp %>/sool//main_files/jquery.vticker.js.다운로드"></script>
    <script type="text/javascript" src=".<%=cp %>/sool/main_files/gd_ui.js.다운로드"></script>

    <script type="text/javascript">
        // 고도몰5 통화정책
        var gdCurrencyDecimal = 0;
        var gdCurrencyDecimalFormat = '0';
        var gdCurrencyCode = 'KRW';
        var gdCurrencyAddDecimal = 0;
        var gdCurrencyAddDecimalFormat = '';
        var gdCurrencyAddCode = '';
        var gdLocale = 'ko';
        var gdCurrencySymbol = '';
        var gdCurrencyString = '원';

        // 환율변환 정책
        fx.base = "KRW";
        fx.settings = {
            from : "KRW",
            to : gdCurrencyCode
        };
        fx.rates = {
            "KRW" : 1,
            "USD" : 0,
            "CNY" : 0,
            "JPY" : 0,
            "EUR" : 0,
        }
    </script>

    <script type="text/javascript" src="<%=cp%>/sool/product_files/gd_common.js.다운로드"></script>

    <!-- Add script : start -->
    <script type="text/javascript" src="<%=cp%>/sool/product_files/jquery.cookie.js.다운로드"></script>
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


    <script type="text/javascript" src="<%=cp %>/sool/main_files/wcslog.js.다운로드"></script>
<script type="text/javascript" src="<%=cp %>/sool/main_files/naverCommonInflowScript.js.다운로드" id="naver-common-inflow-script"></script>
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
        <!-- End Facebook Pixel Code --><script type="text/javascript" charset="UTF-8" src="<%=cp %>/sool/main_files/kp.js.다운로드"></script>
        <script type="text/javascript">
            kakaoPixel('8600996210486851034').pageView();
        </script>
        <!-- AceCounter Log Gathering Script V.8.0.2019080601 -->
        <script language="javascript">
	        var _AceGID=(function(){var Inf=['gtc3.acecounter.com','8080','BS4A45352888202','AW','0','NaPm,Ncisy','ALL','0'];
	        var _CI=(!_AceGID)?[]:_AceGID.val;var _N=0;var _T=new Image(0,0);if(_CI.join('.').indexOf(Inf[3])<0){ _T.src ='https://'+Inf[0]+'/?cookie'; _CI.push(Inf);  _N=_CI.length; } return {o: _N,val:_CI}; })();
	        var _AceCounter=(function(){var G=_AceGID;var _sc=document.createElement('script');var _sm=document.getElementsByTagName('script')[0];if(G.o!=0){var _A=G.val[G.o-1];var _G=(_A[0]).substr(0,_A[0].indexOf('.'));var _C=(_A[7]!='0')?(_A[2]):_A[3];var _U=(_A[5]).replace(/\,/g,'_');_sc.src='https:'+'//cr.acecounter.com/Web/AceCounter_'+_C+'.js?gc='+_A[2]+'&py='+_A[4]+'&gd='+_G+'&gp='+_A[1]+'&up='+_U+'&rd='+(new Date().getTime());_sm.parentNode.insertBefore(_sc,_sm);return _sc.src;}})();
        </script>
        <!-- AceCounter Log Gathering Script End -->

</head>

<body class="body-goods body-goods-list pc">
<div class="top_area"></div>
<div id="wrap">

    <div id="header_warp">
<div id="header">

    <div class="header_top">
        <div class="header_top_cont">
			
			<div class="h1_logo"><!--——--><a href="<%=cp%>/homesool/main.com"><img src="<%=cp %>/sool/main_files/701de34a823ef71ad6950510de136ece_23946.png" alt="상단 로고" title="상단 로고"></a><!--——--></div>
			
			<!-- 햄버거 넣는 부분 ^^ -->
			<a href="#;" class="n_btn_all_menu_open">
			<img alt="전체메뉴" src="<%=cp%>/sool/main_files/hamburger.png"></a>
			
			<!-- 열리는 햄버거 -->
<!-- 		<a href="https://www.homesool.com/main/index.php#;" class="n_btn_all_menu_open">전체카테고리</a> -->
			<div class="n_gnb_allmenu_wrap dn">
				<div class="menu_wrap">
					<div class="menu01">
						<p><a href="<%=cp%>/homesool/list_p.com"><img src="<%=cp %>/sool/main_files/allmenu_mypage.png" alt="">마이페이지</a></p> 
						<p><a href="<%=cp%>/homesool/list_p.com"><img src="<%=cp %>/sool/main_files/allmenu_addr.png" alt="">배송지관리</a></p>
						<p><a href="<%=cp%>/homesool/csCenter.com"><img src="<%=cp %>/sool/main_files/allmenu_cscenter.png" alt="">고객센터</a></p>
					</div>
					<div class="menu02">
						<dl>
							<dt><a href="<%=cp%>/homesool/list_p.com">홈술고르기</a></dt>
							<dd><a href="<%=cp%>/homesool/mak.com">막걸리</a></dd>  
							<dd><a href="<%=cp%>/homesool/soju.com">증류주/소주/리큐르</a></dd> 
							<dd><a href="<%=cp%>/homesool/chung.com">약주/청주</a></dd> 
							<dd><a href="<%=cp%>/homesool/wine.com">와인/과실주</a></dd>
							<dd><a href="<%=cp%>/homesool/food.com">홈닷푸드</a></dd>
						</dl>
							<dl>
								<dt><a href="<%=cp%>/homesool/list_bp.com">Best홈술</a></dt>
								<dd><a href="<%=cp%>/homesool/new.com">신제품</a></dd>
								<dd><a href="<%=cp%>/homesool/best.com">베스트</a></dd>
								<dd><a href="<%=cp%>/homesool/recommend.com">추천홈술</a></dd>
								<dd><a href="<%=cp%>/homesool/benefit.com">이달의 혜택</a></dd>
							</dl> 
						<dl>
							<dt><a href="<%=cp%>/homesool/guide.com">홈술가이드</a></dt>
							<dd><a href="<%=cp%>/homesool/membership.com">홈술 멤버십</a></dd>						
							<dd><a href="<%=cp%>/homesool/delivery.com">배송유형별 안내</a></dd>
						</dl> 
						<dl>
							<dt><a href="<%=cp%>/homesool/csCenter.com">고객센터</a></dt>
							<dd><a href="<%=cp%>/homesool/main.com">공지사항</a></dd>
							<dd><a href="<%=cp%>/homesool/main.com">1:1문의하기</a></dd>
							<dd><a href="<%=cp%>/homesool/main.com">FAQ</a></dd>
						</dl>  
					</div>
				</div>
				</div>
			</div>
			    
			    <!-- 메인 메뉴들 ^^ -->
			<ul class="gnb_new"> 
				<li><a href="<%=cp%>/homesool/list_p.com">홈술고르기</a></li>
			
				<li><a href="<%=cp%>/homesool/guide.com">홈술가이드</a></li>
				<li><a href="<%=cp%>/homesool/csCenter.com">고객센터 </a></li>				 
				<!-- <li><a href="#">라이브 홈술</a></li> -->
			</ul>
			 
           <div class="hd_right">
				<ul class="top_member_box">
				
				<!-- 로그인 회원가입 고객센터 링크 연결 ^^ --> 
            	   		<c:choose>
	<c:when test="${empty sessionScope.customInfos.user_id }">
		<li><a href="<%=cp%>/homesool/login.com">Login</a></li>
        <li><a href="<%=cp%>/homesool/create1.com">Join</a></li>
	</c:when>
	<c:otherwise>
		  
		<li><a href="<%=cp%>/homesool/logout.com">Logout</a></li>
	</c:otherwise>
</c:choose>
            	    
            	    <li><a href="<%=cp%>/homesool/csCenter.com">CS Center</a></li>
            	</ul>
				<!-- 검색 폼 -->
				<div class="top_search_btn">
                    <span>&nbsp;</span>
                    <img src="<%=cp %>/sool/main_files/btn_top_search.png" alt="">
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
                      <input type="image" src="<%=cp %>/sool/main_files/btn_search35.png" id="btnSearchTop" class="btn_top_srarch" title="검색" value="검색" alt="검색">
                </div>
                <!-- //top_text_cont -->
                <div class="search_cont">
                    <input type="hidden" name="recentCount" value="10">

                    <!-- //recom_box -->

                    <div class="recent_box_wrap">
                    	<div class="recent_box">
                    	    <dl class="js_recent_area">
                    	        <dt>최근검색어</dt>
                    	        <dd>
                    	        	<ul class="js_recent_list">
                    	                <li>
                    	                    <a href="<%=cp%>/homesool/p_mak_1.com">느린마을 옹기막걸리</a>
                    	                    <span><button type="button" class="btn_top_search_del" data-recent-keyword="느린마을 옹기막걸리">
                    	                        <img src="<%=cp %>/sool/main_files/btn_top_search_del.png" alt="삭제"></button>
                    	                    </span>
                    	                </li>
                    	                <li>
                    	                    <a href="<%=cp%>/homesool/soju.com">증류주</a>
                    	                    <span><button type="button" class="btn_top_search_del" data-recent-keyword="증류주">
                    	                        <img src="<%=cp %>/sool/main_files/btn_top_search_del.png" alt="삭제"></button>
                    	                    </span>
                    	                </li>
                    	            </ul>
                    	        </dd>
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
                    	                <li><a href="<%=cp%>/homesool/p_mak_1.com"># 느린마을막걸리</a></li> 	
                    	                <li><a href="<%=cp%>/homesool/p_soju_23.com"># 심술</a></li> 	
                    	                <li><a href="<%=cp%>/homesool/p_wine_34.com"># 나영의 눈물 화이트 스위트 375</a></li> 	
                    	                <li><a href="<%=cp%>/homesool/p_chung_27.com"># 삼양춘 청주</a></li> 	
                    	                <li><a href="<%=cp%>/homesool/soju.com"># 증류주</a></li> 	
                    	                <li><a href="<%=cp%>/homesool/p_mak_7.com"># 팔팔막걸리</a></li> 	
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
	<div class=""><a href="<%=cp%>/homesool/main.com" class="close"><img src="<%=cp %>/sool/main_files/btn_close38.png" alt="닫기"></a></div>
</div>
<!-- //top_search -->
<!-- 마이페이지 장바구니 부분 -->
				<!-- 검색 폼 -->
            	<ul class="icon_util">	   
            		<li>
            	        <a href="" class="icon_mypage">
            	        	<img src="<%=cp%>/sool/main_files/btn_top_mypage.png">
            	        </a>
            	    </li>
            	    <li>
            	    <a href="" class="icon_cart">
            	    	<img src="<%=cp%>/sool/main_files/btn_top_cart.png">
            	        
            	     <strong>0</strong> </a> 
            	    </li>	
            	</ul>
				<div class="right_coupon">
					<a href="https://www.homesool.com/mypage/coupon.php"><em>00</em><span>홈술쿠폰</span></a>
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
			<div class="btn_area mt50">
				<a href="javascript:void(0)" class="mesh_delivery_possible_ly_close">취소</a>	
			</div>
		</div>
		<button class="close ">닫기</button>
	</div>
</div>


<style type="text/css">

.update1{
padding:35px 0;
text-align:center;
background: #fffbf7;

}

.update1 < dt{
font-size:26px;
font-weight:700;

}

.deliveryty_area01{padding:90px 0 120px;}
.deliveryty_area01 .w860 {display:flex;}   
.deliveryty_area01 .tab_group {width:120px;font-size:17px;}
.deliveryty_area01 .tab_group li{padding-bottom:15px;}
.deliveryty_area01 .tab_group a{color:#bbbbbb;}				 
.deliveryty_area01 .tab_group .active{color:#ff8600;font-weight:700;}

.deliveryty_area01 #tab_panels {width:calc(100% - 120px) ;letter-spacing:-1px; }
.deliveryty_area01 h4{width:100%;display:flex; align-items: center; padding-bottom:30px; border-bottom:1px solid #e5e5e5;}
.deliveryty_area01 h4 em{padding:0 15px;font-size:36px;font-weight:700;}
.deliveryty_area01 h4 span{font-size:18px; font-weight:400;}

.deliveryty_area01 .list_box{display:flex; flex-wrap: wrap; justify-content: space-between;}
.deliveryty_area01 dl{width:353px;margin-top:40px;}
.deliveryty_area01 dl dt em{display:block; padding-bottom:10px; color:#ff8600;font-weight:700;}
.deliveryty_area01 dl dt span{display:block; padding-bottom:5px;font-size:20px;font-weight:500;} 
.deliveryty_area01 dl dd{color:#999;font-size:14px;line-height:24px;}
.deliveryty_area01 dl dd a{ padding-left:5px; color:#ff8600;}
.deliveryty_area01 dl dd a:after{content:'';display:inline-block;vertical-align:middle;width:5px;height:5px;margin-left:3px;border-right:1px solid #ff8600; border-bottom:1px solid #ff8600; -o-transform:rotate(-45deg);-ms-transform:rotate(-45deg);-moz-transform:rotate(-45deg);-webkit-transform:rotate(-45deg);transform:rotate(-45deg);
}

.deliveryty_area02{padding:80px 0; background:#f6f6f6;}
.deliveryty_area02 h4{font-size:24px;font-weight:500;}
.deliveryty_area02 .table_bx{border-radius:40px;background: #fff; }
.deliveryty_area02 .table_bx table{width:100%;}						
.deliveryty_area02 .table_bx table thead th{padding:25px 0;font-weight:500;font-size:20px;border-bottom:1px solid #f6f6f6;}
.deliveryty_area02 .table_bx table tbody td{padding:15px 0;text-align:center;font-size:17px;opacity:0.8;}

</style>





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
			url: "../share/mesh_ps.php",
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
                    <em><a href="https://www.homesool.com/service/delivery_type.php#" class="local_home">HOME</a> &gt; 홈술가이드 &gt; 배송유형별 안내</em>
                </div>
            </div>
            <!-- //location_wrap -->

	
	 
  	 
    	 
 	 

            <div class="sub_content">

                <!-- //side_cont -->

<style>
	.sub_content{width:100%;}
	#contents{padding:0;}

	#tab_two, #tab_three{display:none;}
</style>
<div class="content">
    <div class="cs_menu_box">
		<h2>홈술가이드</h2>
		<ul class="sub_menu">
					<li><a href="<%=cp %>/homesool/guide.com">홈술 멤버십</a></li>
	
			<li><a href="<%=cp %>/homesool/delivery.com" class="active">배송유형별 안내</a></li>
		</ul>
	</div>
	<!-- //sub_menu_box -->
	<div class="update1">
		<dt><h1>배송유형별 안내</h1></dt>
		<dd>홈술닷컴의 주요 홈술 배송서비스 안내입니다.</dd>
	</div>

<div class="deliveryty_area01">
	<div class="w860">   
		<ul class="tab_group">
			<li class="tab_li">
				<a class="active" href="https://www.homesool.com/service/delivery_type.php#/tab_one"> 오늘홈술</a>
			</li> 
			<li class="tab_li ">
				<a href="https://www.homesool.com/service/delivery_type.php#/tab_two"> 일반홈술</a>
			</li> 
			
		</ul>
		<div id="tab_panels">
			<div id="tab_one" class="tab_div"> 
				<h4><img src="./홈술닷컴_files/icon_delivery_img_L01.png" alt=""> <em>오늘홈술</em> <span>홈술이 갑자기 생각날 때, 당일배송 서비스</span></h4>  
				<div class="list_box">
					<dl>
						<dt>
							<em>가능지역</em>
							<span>서울전지역 / 경기일부</span>
						</dt>
						<dd>서울은 전지역 가능! 경기지역은 일부만 가능하오니<br> 꼭 배송 가능지역을 확인해주세요. <a href="https://www.homesool.com/service/delivery_type.php#;" class="icon_location">배송가능지역 조회</a></dd>
					</dl> 
					<dl>
						<dt>
							<em>주문 가능시간</em>
							<span>월~토  2시 주문, 9시 도착</span>
						</dt>
						<dd>월요일부터 토요일까지 오후2시까지 주문하면 라이더분들이<br>	안전하게 배송을 시작합니다. (법정공휴일 제외)</dd>
					</dl>
					<dl>
						<dt>
							<em>안심 보상제도</em>
							<span>배송지연 보상제</span>
						</dt>
						<dd>
							저희가 약속한 9시보다 늦게 도착할 경우,<br>홈술닷컴 적립금으로 보상해드립니다. 
							 
						</dd>
					</dl>
				</div>
			</div>
			<div id="tab_two" class="tab_div">  
				<h4><img src="./홈술닷컴_files/icon_delivery_img_L02.png" alt=""> <em>일반홈술</em> <span>전국 어디서나 방방곡곡 홈술이 필요한 순간 CJ대한통운 일반택배 서비스</span></h4> 
				<div class="list_box"> 
					<dl>
						<dt>
							<em>가능지역</em>
							<span>전국지역 배송가능</span>
						</dt>
						<dd>CJ대한통운 택배사를 이용하기 때문에 전국지역 배송이 가능합니다.</dd>
					</dl> 
					<dl>
						<dt>
							<em>주문 가능시간</em>
							<span>월~금  1시 주문, 당일 출고</span>
						</dt>
						<dd>평일기준 오후1시까지 주문하시면 당일 출고!  출고일 기준 2일내에 받으실 수 있습니다. (도서산간지역 제외)</dd>
					</dl>
					<dl>
						<dt>
							<em>안심 보상제도</em>
							<span>배송 파손 시 우선 조치</span>
						</dt>
						<dd>배송 중 충격/분실/누수 등으로 배송과정상 문제가 생길 경우, <br>먼저 새로운 제품으로 선출고 후 반품/교환/분실제품 처리를 합니다.</dd>
					</dl>
				</div>
			</div>
			
		</div>
  
	</div>	
</div>	
<div class="deliveryty_area02">
	<div class="w860"> 
		<h4>배송서비스 한눈에 보기</h4>
		<div class="table_bx mt30">
			<table>
				<thead>
					<tr>
						<th>오늘홈술</th>	
						<th>일반홈술</th>
						
					</tr>
				</thead>
				<tbody>
					<tr>		  
						<td>서울 / 경기일부</td>
						<td>전국</td>
						
					</tr>  
					<tr>		  
						<td>퀵 라이더</td>
						<td>CJ대한통운</td>
						
					</tr>   
					<tr>		  
						<td>
							<span>월-토, 오후 2시 주문<br>오후 9시 도착</span>
						</td>
						<td>
							<span>평일 오후 1시 주문  당일출고 <br>출고일 기준	2일내 도착</span>
						</td>
						
					</tr>
				</tbody>
			</table>
		</div> 
	</div> 
</div>

	<div class="hs_guide03">
		<ul class="w860"> 
			<li>오늘홈술 서비스의 경우 일요일과 법정공휴일의 경우 서비스가 제공되지 않습니다. </li> 
			<li>오늘홈술 서비스의 경우 기상악화로 인해 라이더분들의 안전을 위해 서비스가 지연되거나 일시적으로 중단될 수 있습니다.</li>  
			<li>일반홈술은 택배사정에 따라서 배송이 안내드린 일정외로 추가 지연될 수 있습니다. </li>
		</ul> 
	</div>
</div>
<!-- //content_box -->

<script>
var tabs =  $(".tab_li a");

tabs.click(function() {
	var panels = this.hash.replace('/','');
	tabs.removeClass("active");
	$(this).addClass("active");
	$("#tab_panels").find('.tab_div').hide();
	$(panels).fadeIn(300);
});


</script>

            </div>
            <!-- //sub_content -->
        </div>
        <!-- //본문 끝 contents -->
    </div>
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
					<span>통신판매업신고번호 : 제 2020-경기포천-0287 호 <a href="https://www.homesool.com/service/delivery_type.php#" class="btn_licensee_info" onclick="gd_popup_bizInfo(&#39;8828501179&#39;); return false;">[사업자정보확인] </a></span> 
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
					<span>통신판매업신고번호 : 제 2020-서울서초-2839 호 <a href="https://www.homesool.com/service/delivery_type.php#" class="btn_licensee_info" onclick="gd_popup_bizInfo(&#39;7768501398&#39;); return false;">[사업자번호조회]</a></span>
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
        <span><img src="./홈술닷컴_files/logo_comodo.png" alt="보안서버 적용 확인"></span>
        <span><img src="./홈술닷컴_files/escrow_banner_kcp.png" alt="에스크로 서비스 확인" title="에스크로 서비스 확인" class="hand" onclick="javascript:window.open(&#39;https://admin.kcp.co.kr/Modules/escrow/kcp_pop.jsp?site_cd=GKPI1&#39;, &#39;escrowBanner&#39;, &#39;scrollbars=no, resizable=no, width=500, height=450&#39;);"></span>
        <span></span>
    </div>
    <!-- //foot_certify -->
</div>
<!-- //footer -->
    </div>
    <!-- //footer_wrap -->

	
    <div class="scroll_wrap">

        <!-- 우측 스크롤 배너 -->
        <div id="scroll_right" class="">
<div class="right_banner" style="display:none;">
<a href="https://www.homesool.com/goods/brand.php"><img src="./홈술닷컴_files/scroll-banner-right01.jpg" alt="스크롤 우측 배너" title="스크롤 우측 배너"></a></div>
<div class="scroll_right_cont" style="display: none;">
    <h4>TODAY VIEW</h4>

    <div class="scr_paging" style="display: none;">
        <button type="button" class="bnt_scroll_prev" title="최근본 이전 상품"><img src="./홈술닷컴_files/btn_scroll_prev.png" alt="최근본 이전 상품"></button>
        <span><strong class="js_current">0</strong>/<span class="js_total" style="float:none;width:auto;">0</span></span>
        <button type="button" class="bnt_scroll_next" title="최근본 다음 상품"><img src="./홈술닷컴_files/btn_scroll_next.png" alt="최근본 다음 상품"></button>
    </div>
    <!-- //scr_paging -->
</div>
<span class="btn_scroll_top"><a href="https://www.homesool.com/service/delivery_type.php#TOP"><img src="./홈술닷컴_files/btn_scroll_top.png" alt="상단으로 이동"></a></span>

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
            $.post('../goods/goods_ps.php', {
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

</div>
<!-- //wrap -->

<!-- 쇼핑 카트 탭 -->

<!-- //쇼핑 카트 탭 -->

<!-- 회원가입 유도 푸시 -->

<!-- //회원가입 유도 푸시 -->

<!-- 절대! 지우지마세요 : Start -->
<div id="layerDim" class="dn">&nbsp;</div>
<iframe name="ifrmProcess" src="./홈술닷컴_files/blank.html" style="display:none" width="100%" height="0" bgcolor="#000"></iframe>
<!-- 절대! 지우지마세요 : End -->

<!-- 외부 스크립트 -->



</body></html>