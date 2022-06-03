<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	request.setCharacterEncoding("UTF-8");
	String cp = request.getContextPath();
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<!-- saved from url=(0059)https://www.homesool.com/goods/goods_list.php?cateCd=001006 -->
<html><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>홈술 고르기</title>
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
    
<!-- 작은 이미지 (마우스오버효과) -->
    <script type="text/javascript">

	function fimg(csrc){
		
		window.document.images["img1"].src = csrc;
	}
	
</script>

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
			
			<div class="h1_logo"><!--——--><a href="https://www.homesool.com/main/index.php"><img src="<%=cp %>/sool/main_files/701de34a823ef71ad6950510de136ece_23946.png" alt="상단 로고" title="상단 로고"></a><!--——--></div>
			
			<!-- 햄버거 넣는 부분 ^^ -->
			<a href="#;" class="n_btn_all_menu_open">
			<img alt="전체메뉴" src="<%=cp%>/sool/main_files/hamburger.png"></a>
			
			<!-- 열리는 햄버거 -->
<!-- 		<a href="https://www.homesool.com/main/index.php#;" class="n_btn_all_menu_open">전체카테고리</a> -->
			<div class="n_gnb_allmenu_wrap dn">
				<div class="menu_wrap">
					<div class="menu01">
						<p><a href="https://www.homesool.com/mypage/index.php"><img src="<%=cp %>/sool/main_files/allmenu_mypage.png" alt="">마이페이지</a></p> 
						<p><a href="https://www.homesool.com/mypage/shipping.php"><img src="<%=cp %>/sool/main_files/allmenu_addr.png" alt="">배송지관리</a></p>
						<p><a href="https://www.homesool.com/service/index.php"><img src="<%=cp %>/sool/main_files/allmenu_cscenter.png" alt="">고객센터</a></p>
					</div>
					<div class="menu02">
						<dl>
							<dt><a href="">홈술고르기</a></dt>
							<dd><a href="">막걸리</a></dd>  
							<dd><a href="">증류주/소주/리큐르</a></dd> 
							<dd><a href="">약주/청주</a></dd> 
							<dd><a href="">와인/과실주</a></dd>
							<dd><a href="">홈닷푸드</a></dd>
						</dl>
							<dl>
								<dt><a href="">Best홈술</a></dt>
								<dd><a href="">신제품</a></dd>
								<dd><a href="">베스트</a></dd>
								<dd><a href="">추천홈술</a></dd>
								<dd><a href="">이달의 혜택</a></dd>
							</dl> 
						<dl>
							<dt><a href="">홈술가이드</a></dt>
							<dd><a href="">홈술 멤버십</a></dd>
							<dd><a href="">구독 홈술 가이드</a></dd>
							<dd><a href="">배송유형별 안내</a></dd>
						</dl> 
						<dl>
							<dt><a href="">고객센터</a></dt>
							<dd><a href="">공지사항</a></dd>
							<dd><a href="">1:1문의하기</a></dd>
							<dd><a href="">FAQ</a></dd>
						</dl>  
					</div>
				</div>
				</div>
			</div>
			    
			    <!-- 메인 메뉴들 ^^ -->
			<ul class="gnb_new"> 
				<li><a href="">홈술고르기</a></li>
				<li><a href="">Best홈술</a></li>
				<li><a href="">홈술가이드</a></li>
				<li><a href="">고객센터 </a></li>				 
				<!-- <li><a href="#">라이브 홈술</a></li> -->
			</ul>
			 
           <div class="hd_right">
				<ul class="top_member_box">
				
				<!-- 로그인 회원가입 고객센터 링크 연결 ^^ --> 
            	        <li><a href="<%=cp%>/sool/login.jsp">Login</a></li>
            	    <li><a href="<%=cp%>/sool/join.jsp">Join</a>
            	        <!--<span class="accent">
            	            <span><strong>2,000 P</strong></span>
            	        </span>-->
            	    </li>
            	    
            	    <li><a href="<%=cp%>/sool/csCenter.jsp">CS Center</a></li>
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
                    	                    <a href="https://www.homesool.com/goods/goods_search.php?keyword=%EB%8A%90%EB%A6%B0%EB%A7%88%EC%9D%84%EB%A7%89%EA%B1%B8%EB%A6%AC">느린마을막걸리</a>
                    	                    <span><button type="button" class="btn_top_search_del" data-recent-keyword="느린마을막걸리">
                    	                        <img src="<%=cp %>/sool/main_files/btn_top_search_del.png" alt="삭제"></button>
                    	                    </span>
                    	                </li>
                    	                <li>
                    	                    <a href="https://www.homesool.com/goods/goods_search.php?keyword=%EC%A6%9D%EB%A5%98%EC%A3%BC">증류주</a>
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
	<div class=""><a href="https://www.homesool.com/main/index.php#;" class="close"><img src="<%=cp %>/sool/main_files/btn_close38.png" alt="닫기"></a></div>
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

            <!-- //location_wrap -->

	
	 
  	 
    	 
 	 

            <div class="sub_content">

                <!-- //side_cont -->

               
                
<div class="content_box">
    <div class="location_wrap">
        <div class="location_cont">
            <em>
				<a href="https://www.homesool.com/goods/goods_list.php?cateCd=001006#" class="local_home">HOME</a> 
  
				&gt; 홈술카테고리
				&gt; 약주/청주
  
			
			</em>
			  
        </div>
    </div>
    <!-- //location_wrap -->
&nbsp;
<center>
<div class="item_photo_info_sec">
    <div class="item_photo_view_box">
        <div class="item_photo_view">
              <div class="item_photo_big">
              		 <div class="item_photo_big">
						<span class="img_photo_big">
							<img src="./detail_files/p_soju/1000000213_wlist_08.png" width="380" name="img1"
								alt="승은의 눈물 26" title="승은의 눈물 26" class="middle"
								style="border: 1px; border-radius: 1em;">
							
						</span>
					
                	</div>
                	<br/><br/>
                	<div>
                	
                	<img src="./detail_files/p_soju/1000000213_wlist_08.png


" 
                				width="100"
                       			style="border: 1px; border-radius: 0.5em;"
                       			onmouseover="fimg('./detail_files/p_soju/1000000213_wlist_08.png')">
                       		
                       		<img src="./detail_files/seoungeun_1.png" width="100"
                       			style="border: 1px; border-radius: 0.5em;"
                       			onmouseover="fimg('./detail_files/seoungeun_1.png')">
                       				
							<img src="./detail_files/seoungeun_2.png" width="100"
                       			style="border: 1px; border-radius: 0.5em;"
                       			onmouseover="fimg('./detail_files/seoungeun_2.png')">
                       			
                       		<img src="./detail_files/seoungeun_3.png" width="100"
                       			style="border: 1px; border-radius: 0.5em;"
                       			onmouseover="fimg('./detail_files/seoungeun_3.png')">
                    </div>
                    
                <!-- //item_photo_view -->
			  </div>
			<!-- //item_photo_view_box -->
		</div>
	</div>
</div>

<!-- 가격 ~.~ -->
<div style="font-size: 20pt">
승은의 눈물 26


<br/>
<b>16650

원</b>
</div>
<br/><br/>

<!-- 찜하기 장바구니 바로 구매 버튼~.~ -->
<div class="btn_choice_box">
    <div class="cart "><!-- N:재입고 알림이 있을 때는 restock 클래스를 div에 같이 넣어주세요 -->
		<button id="wishBtn" type="button" class="btn_add_wish ">찜하기</button>
		<button id="cartBtn" type="button" class="btn_add_cart">장바구니</button> 
		<button type="button" class="btn_add_order">바로 구매</button>
	</div>
						
</div>

</center>




<%-- <!-- 상품 상단 -->
    <div class="item_photo_info_sec">
        <div class="item_photo_view_box">
            <div class="item_photo_view">
                <div class="item_photo_big">
					<span class="img_photo_big"><img src="./홈술닷컴_files/1000000219_detail_049.png" width="580" alt="하얀까마귀" title="하얀까마귀" class="middle"></span>

					<div class="goods_tit_badge">	
					
<span><img src="./홈술닷컴_files/icon_delivery_rd01.png" alt=""></span><span><img src="./홈술닷컴_files/icon_delivery_rd02.png" alt=""></span>					</div>
                </div>
                <div id="testZoom" style="display:none">
                    <img src="./홈술닷컴_files/1000000219_magnify_074.png" width="550" alt="하얀까마귀" title="하얀까마귀" class="middle">
                </div>
                <!-- //item_photo_big -->
                
                <div class="item_photo_slide">
                    <button type="button" class="slick_goods_prev slick-arrow slick-hidden" aria-disabled="true" tabindex="-1"><img src="./홈술닷컴_files/btn_slide_prev.png" alt="이전 상품 이미지"></button>
                    <ul class="slider_wrap slider_goods_nav slick-initialized slick-slider">
                        <div aria-live="polite" class="slick-list draggable"><div class="slick-track" style="opacity: 1; width: 104px; transform: translate3d(0px, 0px, 0px);" role="listbox"><li class="slick-slide slick-current slick-active" data-slick-index="0" aria-hidden="false" tabindex="-1" role="option" aria-describedby="slick-slide00" style="width: 84px;"><a href="javascript:gd_change_image(&#39;0&#39;, &#39;detail&#39;);" tabindex="0"><img src="./홈술닷컴_files/t50_1000000219_detail_049.png" width="68" alt="하얀까마귀" title="하얀까마귀" class="middle"></a></li></div></div>
                    </ul>
                    <button type="button" class="slick_goods_next slick-arrow slick-hidden" aria-disabled="true" tabindex="-1"><img src="./홈술닷컴_files/btn_slide_next.png" alt="다음 상품 이미지"></button>
                </div>
                <!-- //item_photo_slide -->
            </div>
            <!-- //item_photo_view -->
        </div>
        <!-- //item_photo_view_box -->
		
        <form name="frmView" id="frmView" method="post">
            <input type="hidden" name="mode" value="get_benefit">
            <input type="hidden" name="scmNo" value="1">
            <input type="hidden" name="cartMode" value="">
            <input type="hidden" name="set_goods_price" value="10000">
            <input type="hidden" id="set_goods_fixedPrice" name="set_goods_fixedPrice" value="0.00">
            <input type="hidden" name="set_goods_mileage" value="0">
            <input type="hidden" name="set_goods_stock" value="6">
            <input type="hidden" name="set_coupon_dc_price" value="10000.00">
            <input type="hidden" id="set_goods_total_price" name="set_goods_total_price" value="0">
            <input type="hidden" id="set_option_price" name="set_option_price" value="0">
            <input type="hidden" id="set_option_text_price" name="set_option_text_price" value="0">
            <input type="hidden" id="set_add_goods_price" name="set_add_goods_price" value="0">
            <input type="hidden" name="set_total_price" value="10000">
            <input type="hidden" name="mileageFl" value="c">
            <input type="hidden" name="mileageGoods" value="0.00">
            <input type="hidden" name="mileageGoodsUnit" value="percent">
            <input type="hidden" name="goodsDiscountFl" value="n">
            <input type="hidden" name="goodsDiscount" value="0.00">
            <input type="hidden" name="goodsDiscountUnit" value="percent">
            <input type="hidden" name="taxFreeFl" value="t">
            <input type="hidden" name="taxPercent" value="10.0">
            <input type="hidden" name="scmNo" value="1">
            <input type="hidden" name="brandCd" value="">
            <input type="hidden" name="cateCd" value="002002">
            <input type="hidden" id="set_dc_price" value="0">
            <input type="hidden" id="goodsOptionCnt" value="1">
            <input type="hidden" name="optionFl" value="n">
            <input type="hidden" name="goodsDeliveryFl" value="y">
            <input type="hidden" name="sameGoodsDeliveryFl" value="n">
            <input type="hidden" name="useBundleGoods" value="1">
            <input type="hidden" name="ac_id" value="">
            <div class="item_info_box">
                <!-- //time_sale -->
                <div class="item_tit_detail_cont">
                    <div class="item_detail_tit">
                        <h3>하얀까마귀</h3>
                        <div class="btn_layer btn_qa_share_box">
                            <span class=" target_sns_share"><a href="https://www.homesool.com/goods/goods_view.php?goodsNo=1000000219#lySns" class=" "><em>공유</em></a></span>

                            <div id="lySns" class="layer_area" style="display:none;">
                                <div class="ly_wrap sns_layer">
                                    <div class="ly_tit">
                                        <strong>SNS 공유하기</strong>
                                    </div>
                                    <div class="ly_cont">
                                        <div class="sns_list">
                                            <ul>
                                                <li><a href="https://www.facebook.com/sharer/sharer.php?display=popup&amp;redirect_uri=http%3A%2F%2Fwww.facebook.com&amp;u=https%3A%2F%2Fwww.homesool.com%2Fgoods%2Fgoods_view.php%3FgoodsNo%3D1000000219&amp;t=%ED%95%98%EC%96%80%EA%B9%8C%EB%A7%88%EA%B7%80" data-width="750" data-height="300" data-sns="facebook" class="btn-social-popup"><img src="./홈술닷컴_files/sns-facebook.png" alt="페이스북 공유"><br><span>페이스북</span></a></li>
                                                <li><a href="https://twitter.com/intent/tweet?text=%ED%95%98%EC%96%80%EA%B9%8C%EB%A7%88%EA%B7%80&amp;url=https%3A%2F%2Fwww.homesool.com%2Fgoods%2Fgoods_view.php%3FgoodsNo%3D1000000219" data-width="500" data-height="250" data-sns="twitter" class="btn-social-popup"><img src="./홈술닷컴_files/sns-twitter.png" alt="트위터 공유"><br><span>트위터</span></a></li>
                                                <li><a href="https://www.pinterest.com/pin/create/button/?url=https%3A%2F%2Fwww.homesool.com%2Fgoods%2Fgoods_view.php%3FgoodsNo%3D1000000219&amp;description=%5B%ED%99%88%EC%88%A0%EB%8B%B7%EC%BB%B4%5D+%ED%95%98%EC%96%80%EA%B9%8C%EB%A7%88%EA%B7%80&amp;media=https%3A%2F%2Fwww.homesool.com%2Fdata%2Fgoods%2F22%2F02%2F08%2F1000000219%2F1000000219_detail_049.png" data-width="750" data-height="570" data-sns="pinterest" class="btn-social-popup"><img src="./홈술닷컴_files/sns-pinterest.png" alt="핀터레스트 공유"><br><span>핀터레스트</span></a></li>
                                                
                <script type="text/javascript">
                $(function () {
                    $(".btn-social-popup").click(function(e){
                    e.preventDefault();
                    
                    gd_popup({
                        url: $(this).prop("href"),
                        target: "_blank",
                        width: $(this).data("width"),
                        height: $(this).data("height"),
                        resizable: "no",
                        scrollbars: "no"
                    });
                });
                });
                </script>
            
                                                
                    <li><a href="javascript:shareStory();" id="shareKakaoStoryBtn" data-sns="kakaostory"><img src="./홈술닷컴_files/sns-kakaostory.png" alt="카카오스토리 공유"><br><span>카카오스토리</span></a></li>
                    <script type="text/javascript" src="./홈술닷컴_files/kakao.min.js.다운로드"></script>
                    <script type="text/javascript">
                        //<![CDATA[
                        Kakao.init("");
                        function shareStory() {
                            
                            Kakao.Story.share({
                                text: "",
                                url: "https://www.homesool.com/goods/goods_view.php?goodsNo=1000000219"
                            });
                        }
                        //]]>
                    </script>
                
                                            </ul>
                                            <div class="sns_copy_url">
                                                <input type="text" value="https://www.homesool.com/goods/goods_view.php?goodsNo=1000000219">
                                                <button type="button" class="gd_clipboard" title="상품주소" data-clipboard-text="https://www.homesool.com/goods/goods_view.php?goodsNo=1000000219"><em>URL복사</em></button>
                                            </div>
                                        </div>
                                    </div>
                                    <!-- //ly_cont -->
                                    <a href="https://www.homesool.com/goods/goods_view.php?goodsNo=1000000219#close" class="ly_close"><img src="./홈술닷컴_files/btn_layer_close.png" alt="닫기"></a>
                                </div>
                                <!-- //ly_wrap -->
                            </div>
                            <!-- //layer_area -->
                        </div>
                        <!-- //btn_qa_share_box -->
						<div class="prd_price">
							<em>
								10,000원
							</em>
						</div>
                    </div>
                    <div class="item_detail_list">
                        <dl class="dn item_price">
                            <dt>판매가</dt>
                            <dd>
                                <strong><strong>10,000</strong></strong>원
                                <!-- 글로벌 참조 화폐 임시 적용 -->
                            </dd>
                        </dl>
                        <dl>
                            <dt>구매제한</dt>
                            <dd>
옵션당
최소 1개                            </dd>
                        </dl>
                        <dl class="item_discount_mileage dn">
                            <dt>구매혜택</dt>
                            <dd>
                                <span class="item_discount">할인 : <strong class="total_benefit_price"></strong> <strong class="benefit_price item_apply"></strong></span>
                                <span class="item_mileage">적립 적립금 : <strong class="total_benefit_mileage"></strong> <strong class="benefit_mileage item_apply"></strong></span>
                            </dd>
                        </dl>
                        <dl class="item_delivery">
                            <dt>배송비</dt>
                            <dd>

                                <div class="new_delivery nd01">
									<em class=" oply_nd01">오늘홈술<i class="icon_exclamation"></i></em>
									<p>당일배송 장바구니 4만원이상 무료배송</p>		
								</div>	  
								<div class="new_delivery nd02">
									<em class=" oply_nd02">일반홈술<i class="icon_exclamation"></i></em>
									<p>일반배송 장바구니 3만원이상 무료배송</p>		
								</div>
								
								<!-- 튜닝 : 골라담기는 구독홈술 배송비 안 보이게 처리 요청 2021-08-31 -->
								<div class="new_delivery nd03">
									<em class=" oply_nd03">구독홈술<i class="icon_exclamation"></i></em>
									<p>정기결제 상품 선택 시 무조건 무료배송</p>		
								</div>


                            </dd>
                        </dl>
                        
                        
                    </div>

					<div class="detail_deliverytype">
						<div class="tit">배송방법 선택</div>
						<ul class="form_element">
							
							<a href="https://www.homesool.com/goods/goods_view.php?goodsNo=1000000219#myShippingListLayer" class="btn_icn btn_bk h45 w120 btn_open_layer js_shipping dn">배송지 관리</a>

							<li class="dnd01"><input type="radio" name="goodsKind" id="goodsKind01" value="t"><label for="goodsKind01" class="inp_rdo choice "><span>오늘홈술</span></label> <i class="icon_exclamation oply_nd01"></i><p id="todayDeliveryTime"> 22:35:59 내 주문시, 2022-03-02(수) 오후 09시 도착 예정 / 서울, 경기 일부</p></li>	
							<li class="dnd02"><input type="radio" name="goodsKind" id="goodsKind02" value="n" checked=""><label for="goodsKind02" class="inp_rdo choice on"><span>일반홈술</span></label> <i class="icon_exclamation oply_nd02"></i><p id="normalDeliveryTime"> 21:36:05 내 주문시, 2022-03-02(수) 출고 예정</p></li>
						</ul>
						<div class="right">
							<a href="javascript:void(0);" class="btn_i btn_my_shipping">배송지관리</a>
						</div>
					</div>

					
					<div class="goodsView_option"> 
					</div>

                    <!-- //item_detail_list -->
                    <div class="item_choice_list">
                        <table class="option_display_area" border="0" cellpadding="0" cellspacing="0">
                            <colgroup>
                                <col>				 
                                <col width="115px">
                                <col width="100px">
                                <col width="50px">
                            </colgroup>
                            <tbody id="option_display_item_0">
                            <tr class="check optionKey_0">
                                <td class="cart_prdt_name">
                                    <input type="hidden" name="goodsNo[]" value="1000000219">
                                    <input type="hidden" name="optionSno[]" value="744">
                                    <input type="hidden" name="goodsPriceSum[]" value="10000">
                                    <input type="hidden" name="addGoodsPriceSum[]" value="0">
                                    <input type="hidden" name="couponApplyNo[]" value="">
                                    <input type="hidden" name="couponSalePriceSum[]" value="">
                                    <input type="hidden" name="couponAddPriceSum[]" value="">
                                    <div class="cart_tit_box">
                                        <strong class="cart_tit">
                                            <span>하얀까마귀</span>
                                            <span class="cart_btn_box">
                                                </span>
                                            <span id="option_text_display_0"></span>
                                        </strong>
                                    </div>
                                    <!-- //cart_tit_box -->
                                </td>
                                <!-- //cart_prdt_name -->
                                <td>
									<span class="count">
										<span class="goods_qty">
											<div class="goods_qty_new">
												<input type="text" name="goodsCnt[]" class="text goodsCnt_0" title="수량" value="1" data-key="0" data-value="1" data-stock="6" onchange="goodsViewController.input_count_change(this, &#39;1&#39;);return false;">
												<span>
													<button type="button" class="up goods_cnt" title="증가" value="up^|^0">증가</button>
													<button type="button" class="down goods_cnt" title="감소" value="dn^|^0">감소</button>
												</span>
											</div>
										</span>
									</span>
                                    <!-- //count -->
                                </td>
                                <td class="item_choice_price">
                                    <input type="hidden" name="optionPriceSum[]" value="0">
                                    <input type="hidden" name="option_price_0" value="0.00">
                                    <strong class="option_price_display_0">10,000</strong>원
                                </td>
                                <!-- //item_choice_price -->
                                <td></td>
                            </tr>
                            </tbody>
                        </table>
                        <div class="item_price_cont">
                            <div class="end_price item_tatal_box">
                                <dl class="total_goods">
                                    <dt>총 상품금액</dt>
                                    <dd><strong class="goods_total_price">10,000<b>원</b></strong></dd>
                                </dl>
                                <dl class="total_discount dn">
                                    <dt>총 할인금액</dt>
                                    <dd><strong class="total_benefit_price"></strong></dd>
                                </dl>
                                <dl class="total_amount">
                                    <dt>총 합계금액</dt>
                                    <dd><strong class="total_price">  10,000<b>원</b></strong></dd>
                                </dl>
                            </div>
                            <!-- //item_tatal_box -->
                        </div>
                        <!-- //item_price_cont -->
                    </div>
                    <!-- //item_choice_list -->
                    <div class="btn_choice_box">
                        <div class="cart "><!-- N:재입고 알림이 있을 때는 restock 클래스를 div에 같이 넣어주세요 -->
							<button id="wishBtn" type="button" class="btn_add_wish ">찜하기</button>
							<button id="cartBtn" type="button" class="btn_add_cart">장바구니</button> 
							<button type="button" class="btn_add_order">바로 구매</button>
						</div>
						<div class="subscribeCart dn">
							<button id="cartBtn" type="button" class="btn_add_cart btn_add_cart02">구독 홈술 장바구니 10% OFF</button> 
						</div>
					</div>
					<!-- //btn_choice_box -->
					<div class="pay_box">
						<div class="payco_pay">
							
						</div>
						<div class="naver_pay">
							
						</div>
					</div>
					<!-- //pay_box -->
            </div>
            <!-- //item_tit_detail_cont -->
    </div>
    <!-- //item_info_box -->
    <input type="hidden" name="deliveryCollectFl" value="pre"></form>
</div>
<!-- //item_photo_info_sec -->
<!-- //상품 상단 끝 --> --%>


<script>
	$('.filter').click(function(){
		$('.layer_filter').toggleClass('dn');	
	});	  
	$('.layer_filter .layer_close').click(function(){
		$('.layer_filter').addClass('dn');	
	});

	$(document).ready(function(){
		
		$('#btnFilterSelectSearch').on('click', function(){
			$('form[name=frmList]').get(0).submit();
		});

	});
</script>
            </form>
        </div>
        
<!-- //content -->

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
					<span>통신판매업신고번호 : 제 2020-경기포천-0287 호 <a href="https://www.homesool.com/goods/goods_list.php?cateCd=001006#" class="btn_licensee_info" onclick="gd_popup_bizInfo(&#39;8828501179&#39;); return false;">[사업자정보확인] </a></span> 
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
					<span>통신판매업신고번호 : 제 2020-서울서초-2839 호 <a href="https://www.homesool.com/goods/goods_list.php?cateCd=001006#" class="btn_licensee_info" onclick="gd_popup_bizInfo(&#39;7768501398&#39;); return false;">[사업자번호조회]</a></span>
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
        <span><img src=".<%=cp %>/sool/product_files/logo_comodo.png" alt="보안서버 적용 확인"></span>
        <span><img src="<%=cp %>/sool/product_files/escrow_banner_kcp.png" alt="에스크로 서비스 확인" title="에스크로 서비스 확인" class="hand" onclick="javascript:window.open(&#39;https://admin.kcp.co.kr/Modules/escrow/kcp_pop.jsp?site_cd=GKPI1&#39;, &#39;escrowBanner&#39;, &#39;scrollbars=no, resizable=no, width=500, height=450&#39;);"></span>
        <span></span>
    </div>
    <!-- //foot_certify -->
</div>
<!-- //footer -->
    </div>
    <!-- //footer_wrap -->

	
    <div class="scroll_wrap">

        <!-- 우측 스크롤 배너 -->
        <div id="scroll_right" class="ban_fixed">
<div class="right_banner" style="display:none;">
<a href="https://www.homesool.com/goods/brand.php"><img src="<%=cp %>/sool/product_files/scroll-banner-right01.jpg" alt="스크롤 우측 배너" title="스크롤 우측 배너"></a></div>
<div class="scroll_right_cont" style="display: none;">
    <h4>TODAY VIEW</h4>

    <div class="scr_paging" style="display: none;">
        <button type="button" class="bnt_scroll_prev" title="최근본 이전 상품"><img src="<%=cp %>/sool/product_files/btn_scroll_prev.png" alt="최근본 이전 상품"></button>
        <span><strong class="js_current">0</strong>/<span class="js_total" style="float:none;width:auto;">0</span></span>
        <button type="button" class="bnt_scroll_next" title="최근본 다음 상품"><img src="<%=cp %>/sool/product_files/btn_scroll_next.png" alt="최근본 다음 상품"></button>
    </div>
    <!-- //scr_paging -->
</div>
<span class="btn_scroll_top"><a href="https://www.homesool.com/goods/goods_list.php?cateCd=001006#TOP"><img src="<%=cp %>/sool/product_files/btn_scroll_top.png" alt="상단으로 이동"></a></span>

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
<iframe name="ifrmProcess" src="<%=cp %>/sool/main_files/blank.html" style="display:none" width="100%" height="0" bgcolor="#000"></iframe>
<!-- 절대! 지우지마세요 : End -->

<!-- 외부 스크립트 -->



</body></html>