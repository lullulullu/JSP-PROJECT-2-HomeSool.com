<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	request.setCharacterEncoding("UTF-8");
	String cp = request.getContextPath();
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<!-- saved from url=(0059)https://www.homesool.com/goods/goods_list.php?cateCd=001006 -->
<html><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>와인/과실주</title>
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
            	        <li><a href="<%=cp%>/homesool/login.com">Login</a></li>
            	    <li><a href="<%=cp%>/homesool/create1.com">Join</a>
            	        <!--<span class="accent">
            	            <span><strong>2,000 P</strong></span>
            	        </span>-->
            	    </li>
            	    
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
<div class="content">
    <div class="location_wrap">
        <div class="location_cont">
            <em>
				<a href="<%=cp%>/homesool/main.com" class="local_home">HOME</a> 
  
				&gt; 홈술 고르기
				&gt; 와인/과실주
  
			
			</em>
			  
        </div>
    </div>
    <!-- //location_wrap -->

    <div class="goods_list_item">

        <div class="goods_list_item_tit">
            <h2 class="tit_38 center">홈술카테고리</h2>
        </div>
        
        <div class="list_item_category mt40">
            <ul>
                <li class="">
                    <a href="<%=cp%>/homesool/mak.com"><span>막걸리</span></a>
                </li>
                <li class="">
                    <a href="<%=cp%>/homesool/soju.com"><span>증류주/소주/리큐르</span></a>
                </li>
                <li class="on">
                    <a href="<%=cp%>/homesool/chung.com"><span>약주/청주</span></a>
                </li>
                <li class="">
                    <a href="<%=cp%>/homesool/wine.com"><span>와인/과실주</span></a>
                </li>
                <li class="">
                    <a href="<%=cp%>/homesool/food.com"><span>홈닷푸드</span></a>
                </li>
            </ul>
        </div>

<center> 

<table width="600" border="0" cellspacing="1" cellpadding="3" bgColor="#FFFFFF" align="center">

<c:set var="n" value="0"/>
<c:forEach var="dto" items="${lists}">
	
	<c:if test="${n==0}">
		<tr bgcolor="#FFFFFF" ></tr>
	</c:if>
	<c:if test="${n!=0&&n%4==0 }">
		<tr bgcolor="#FFFFFF" >
	</c:if>
	
	<td width="200" align="center">
    	<a href="${imagePath}/${dto.prod_sImg}">
	    	<img src="${imagePath}/${dto.prod_sImg}" width="200" height="330" 
	    	style="border: 1px; border-radius: 1em;"/>
	    </a>
	    <br/><br/>${dto.prod_name}&nbsp;<br/>
	    <b>${dto.prod_price }원</b>&nbsp;
	   
	    <div style=" width:20x; border: 2px; color:#fff; background-color: #f2a03d;
	    border-radius: 0.3em;">
	    <a href="">
	    구매하기
	    </a></div>
	    <br/>
	    <%--  <a href="<%=cp%>/homesool/delete.com?prod_no=${dto.prod_no }">삭제</a> --%>
	     <br/>
	</td>
	
	<c:set var="n" value="${n+1}"/>
</c:forEach>
	
<c:if test="${n>0||n%4!=0 }">
	<c:forEach var="i" begin="${n%4+1}" end="4" step="1">
			<td>&nbsp;</td>
	</c:forEach>
</c:if>

<c:if test="${n!=0 }">
	</tr>
</c:if>

	
<c:if test="${dataCount != 0}">
	<tr bgcolor="#FFFFFF">
	   <td align="center" height="30" colspan="3">${pageIndexList}</td>
    </tr>
</c:if>
	
<c:if test="${dataCount == 0}">
	<tr bgcolor="#FFFFFF">
       <td align="center" colspan="3" height="30">등록된 자료가 없습니다.</td>
    </tr>
</c:if>
	
</table>
</center>
        <!-- 설문조사 배너 --><!-- 설문조사 배너 -->


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
        <!-- //goods_pick_list -->

        <div class="goods_list mt50">
            <div class="goods_list_cont">
                <!-- 상품 리스트 -->


        

    </div>
    <!-- //goods_list_item -->
	<script type="text/javascript">
		$(document).ready(function () {

			$('form[name=frmList] select[name=pageNum]').change(function() {
				$('form[name=frmList]').get(0).submit();
			});
			
			// 정렬 순서 change 이벤트로 변경 2021-08-10
			$('form[name=frmList] select[name=sort]').change(function() {
				$('form[name=frmList]').get(0).submit();
			});

			/* 원본
			$('form[name=frmList] input[name=sort]').click(function() {
				$('form[name=frmList]').get(0).submit();
			});

			$(':radio[name="sort"][value=""]').prop("checked","checked")
			$(':radio[name="sort"][value=""]').next().addClass('on');
			*/

		});
	</script>
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