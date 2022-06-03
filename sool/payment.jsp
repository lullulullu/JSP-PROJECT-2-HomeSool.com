<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
	request.setCharacterEncoding("UTF-8");
	String cp = request.getContextPath();
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<!-- saved from url=(0040)https://www.homesool.com/order/order.php -->
<html><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>홈술닷컴</title>
    	<link rel="stylesheet" type="text/css" href="http://cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.css"/>
    	
		<link rel="stylesheet" href="http://cdn.jsdelivr.net/npm/xeicon@2.3.3/xeicon.min.css">
		
		<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
		
		<script type="text/javascript" src="http://cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.min.js"></script>
		
<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script>
    function sample6_execDaumPostcode() {
        new daum.Postcode({
            oncomplete: function(data) {
          
                var addr = ''; // 주소 변수
                var extraAddr = ''; // 참고항목 변수

             
                if (data.userSelectedType === 'R') { //도로명 주소
                    addr = data.roadAddress;
                } else { // 지번 주소
                    addr = data.jibunAddress;
                }


                if(data.userSelectedType === 'R'){
                   
                    if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
                        extraAddr += data.bname;
                    }
                   
                    if(data.buildingName !== '' && data.apartment === 'Y'){
                        extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                    }
                   
                    if(extraAddr !== ''){
                        extraAddr = ' (' + extraAddr + ')';
                    }
                    
                    document.getElementById("sample6_extraAddress").value = extraAddr;
                
                } else {
                    document.getElementById("sample6_extraAddress").value = '';
                }

              
                document.getElementById('sample6_postcode').value = data.zonecode;
                document.getElementById("addr1").value = addr;
                
                document.getElementById("addr2").focus();
            }
        }).open();
    }
    
    
    function selectedEmail(frm) {
    	
   	 frm.textValue.value = frm.selectBox.options[frm.selectBox.selectedIndex].text;  	
     frm.user_email.value = frm.selectBox.options[frm.selectBox.selectedIndex].value;
     
    }
    
   
</script>


    
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    
    <meta name="author" content="">
    <meta name="description" content="">
    <meta name="keywords" content="">
    <meta name="csrf-token" content="MTY0NjAyMDQ3Mzg2NDI0MDg5NjI4MTEwNjgzODg0NTM1NzE2NDc2MDk1">


    <meta property="og:type" content="website">
    <meta property="og:title" content="홈술닷컴">
    <meta property="og:url" content="https://www.homesool.com/main/index.php">
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
<%--     <script type="text/javascript" src="<%=cp %>/sool/main_files/jquery.min.js.다운로드"></script> --%>
    <script type="text/javascript" src="<%=cp %>/sool/main_files/underscore-min.js.다운로드"></script>
   <%--  <script type="text/javascript" src="<%=cp %>/sool/main_files/jquery.validate.min.js.다운로드"></script> --%>
    <script type="text/javascript" src="<%=cp %>/sool/main_files/additional-methods.min.js.다운로드"></script>
    <script type="text/javascript" src="<%=cp %>/sool/main_files/numeral.min.js.다운로드"></script>
    <script type="text/javascript" src="<%=cp %>/sool/main_files/accounting.min.js.다운로드"></script>
    <script type="text/javascript" src="<%=cp %>/sool/main_files/money.min.js.다운로드"></script>
    <script type="text/javascript" src="<%=cp %>/sool/main_files/chosen.jquery.min.js.다운로드"></script>
    <script type="text/javascript" src="<%=cp %>/sool/main_files/placeholders.jquery.min.js.다운로드"></script>
    <!--[if gt IE 8]-->
    <script type="text/javascript" src="<%=cp %>/sool//main_files/clipboard.min.js.다운로드"></script>
    <!--[endif]-->
 <%--    <script type="text/javascript" src="<%=cp %>/sool//main_files/jquery.vticker.js.다운로드"></script> --%>
    <script type="text/javascript" src=".<%=cp %>/sool/main_files/gd_ui.js.다운로드"></script>

    

    <script type="text/javascript" src="<%=cp %>/sool/main_files/gd_common.js.다운로드"></script>

    <!-- Add script : start -->
    <script type="text/javascript" src="<%=cp %>/sool/main_files/jquery.cookie.js.다운로드"></script>
<%--     <script type="text/javascript" src="<%=cp %>/sool/main_files/gd_popup.js.다운로드"></script> --%>
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

<body class="body-main body-index pc">
<div class="top_area"></div>
<div id="wrap">

    <div id="header_warp">
<div id="header">

    <div class="header_top">
        <div class="header_top_cont">
			
			<div class="h1_logo"><!--——--><a href="<%=cp %>/homesool/main.com"><img src="<%=cp %>/sool/main_files/701de34a823ef71ad6950510de136ece_23946.png" alt="상단 로고" title="상단 로고"></a><!--——--></div>
			
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
                
<!-- 애매 -->
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
						<button type="button" class="btn_top_search_all_del"><strong>전체삭제</strong></button>                    	    <!-- <button type="button" class="btn_top_search_close"><strong>닫기</strong></button> -->
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
<!-- 마이페이지 장바구니 부분 ^^ -->

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
<center>
	<table width="1260">
	 <tr><td height="30" bgcolor="#fff" ></td></tr>
<tr align="left">
	<td colspan="3"><img src="<%=cp %>/sool/main_files/houseLogo.png" ><a href="<%=cp %>/homesool/main.com">Home</a>>주문서 작성/결제</td>
</tr>	

 <tr><td height="30" bgcolor="#fff" ></td></tr>


<tr>
	<td align="center" style="width :150px; height :65px; color : #000000; background-color: #ededed; ">STEP 1 장바구니</td>
	<td align="center" style="width :150px; height :65px; color : #000000; background-color: #ededed; ">STEP 2 주문서작성/결제</td>
	<td align="center" style="width :150px; height :65px; color : #fff; background-color: #eda71a; ">STEP 3 주문완료</td>
</tr>
</table>
	 </center>
  	 
    	 
 	 

            <div class="sub_content">

                <!-- //side_cont -->

<div class="content_box">
    <form id="frmOrder" name="frmOrder" action="https://www.homesool.com/order/order_ps.php" method="post" target="ifrmProcess" novalidate="novalidate">
        <input type="hidden" name="csrfToken" value="MTY0NjE4OTEwMTQ4MjQxMDQyNTc1NjQyNjU2NDg4NTQwMjQzODM5OTA0">
        <input type="hidden" name="orderChannelFl" value="shop">
        <input type="hidden" name="orderCountryCode" value="">
        <input type="hidden" name="orderZipcode" value="-">
        <input type="hidden" name="orderZonecode" value="08016">
        <input type="hidden" name="orderState" value="">
        <input type="hidden" name="orderCity" value="">
        <input type="hidden" name="orderAddress" value="서울특별시 양천구 신목로 7 (목동삼성아파트)">
        <input type="hidden" name="orderAddressSub" value="104동 906호">
        <input type="hidden" name="orderPhonePrefixCode" value="kr">
        <input type="hidden" name="orderPhonePrefix" value="82">
        <input type="hidden" name="orderCellPhonePrefixCode" value="kr">
        <input type="hidden" name="orderCellPhonePrefix" value="82">
        <input type="hidden" name="receiverCountryCode" value="kr">
        <input type="hidden" name="receiverPhonePrefixCode" value="kr">
        <input type="hidden" name="receiverPhonePrefix" value="82">
        <input type="hidden" name="receiverCellPhonePrefixCode" value="kr">
        <input type="hidden" name="receiverCellPhonePrefix" value="82">
        <input type="hidden" name="receiverState" value="">
        <input type="hidden" name="receiverCity" value="">
        <input type="hidden" name="chooseMileageCoupon" value="n">
        <input type="hidden" name="chooseCouponMemberUseType" value="all">
        <input type="hidden" name="totalCouponGoodsDcPrice" value="0">
        <input type="hidden" name="totalCouponGoodsMileage" value="0">
        <input type="hidden" name="totalMemberDcPrice" value="0">
        <input type="hidden" name="totalMemberOverlapDcPrice" value="0">
        <input type="hidden" name="deliveryFree" value="n">
        <input type="hidden" name="totalDeliveryFreePrice" value="">
        <input type="hidden" name="cartGoodsCnt" value="3">
        <input type="hidden" name="cartAddGoodsCnt" value="0">
        <input type="hidden" name="productCouponChangeLimitType" value="n">
        <input type="hidden" name="deliveryVisit" value="n">
        <input type="hidden" name="returnUrl" value="/order/order.php">

        <div class="order_wrap">
			<div class="order_step"> 
				
				
			
                    <!-- //order_agree -->

                    <div class="order_info mt80" align="center">
                        <div class=" ">
                            <h4 class="tit_28">주문자 정보</h4>
                        </div>

                        <div class="order_table_type mt20">
                            <table class="table_left">
                                <colgroup>
                                    <col style="width:220px">
                                    <col>
                                </colgroup>
                                <tbody>
                                <tr>
                                    <th scope="row"><span class="important">주문하시는 분</span></th>
                                    <td><input type="text" name="orderName" id="orderName" value="${dto.getUser_id }" data-pattern="gdEngKor" maxlength="20">
                                    </td>
                                </tr>
                                <tr>
                                    <th scope="row">주소</th>
                                    <td> 
                                    <input type="text" value="${dto.getUser_addr1 } ${dto.getUser_addr2" >                                   
                                        </td>
                                </tr>
                                <tr>
                                    <th scope="row">전화번호</th>
                                    <td>
                                        <input type="text" id="phoneNum" name="orderPhone" value="" maxlength="20">
                                    </td>
                                </tr>
                                <tr>
                                    <th scope="row"><span class="important">휴대폰 번호</span></th>
                                    <td>
                                        <input type="text" id="mobileNum" name="orderCellPhone" value="${dto.getUser_tel }" maxlength="20">
                                    </td>
                                </tr>
                                <tr>
                                    <th scope="row"><span class="important">이메일</span></th>
                                    <td class="member_email">
                                        <input type="text" name="orderEmail" value="${dto.getUser_email }">

                                        <select id="emailDomain" class="chosen-select" style="display: none;">
                                            <option value="self">직접입력</option>
                                            <option value="naver.com">naver.com</option>
                                            <option value="hanmail.net">hanmail.net</option>
                                            <option value="daum.net">daum.net</option>
                                            <option value="nate.com">nate.com</option>
                                            <option value="hotmail.com">hotmail.com</option>
                                            <option value="gmail.com">gmail.com</option>
                                            <option value="icloud.com">icloud.com</option>
                                        </select><div class="chosen-container chosen-container-single chosen-container-single-nosearch" style="width: 200px;" title="" id="emailDomain_chosen"><a class="chosen-single"><span>직접입력</span><div><b></b></div></a><div class="chosen-drop"><div class="chosen-search"><input type="text" autocomplete="off" readonly=""></div><ul class="chosen-results"></ul></div></div>
                                    </td>
                                </tr>
                                </tbody>
                            </table>
                        </div>
                    </div>
                    <!-- //order_info -->

                    <div class="delivery_info mt80" align="center">
                        <div class=" ">
                            <h4 class="tit_28">배송정보</h4>
                        </div>

                        <div class="order_table_type shipping_info mt20">
                            <table class="table_left shipping_info_table">
                                <colgroup>
                                    <col style="width:220px">
                                    <col>
                                </colgroup>
                                <tbody>
                                <tr>
                                    <th scope="row">배송지 확인</th>
                                    <td>
                                        <div class="form_element">
                                            <ul>
                                            
                                                </li>
                                                <li>
                                                    <input type="radio" name="shipping" id="shippingNew">
                                                    <label for="shippingNew" class="choice on">직접 입력</label>
                                                </li>
                                                <li>
                                                    <input type="radio" name="shipping" id="shippingSameCheck">
                                                    <label for="shippingSameCheck" class="choice">주문자정보와 동일</label>
                                                </li>
                                            </ul>
                                           
                                        </div>


										<div class="possible_type">
											<div class="badge">
												
										</div>
                                    </td>
                                </tr>
                                <tr>
                                    <th scope="row"><span class="important">받으실분</span></th>
                                    <td><input type="text" name="receiverName" data-pattern="gdEngKor" maxlength="20"></td>
                                </tr>
                                <tr>
                                    <th scope="row"><span class="important">받으실 곳</span></th>
                                    <td class="member_address">
                                        <div class="address_postcode">
                                            <input type="text" id="sample6_postcode" readonly="readonly">
                                            <input type="hidden" name="receiverZipcode">
                                             <input type="button" onclick="sample6_execDaumPostcode()" value="우편번호 찾기">
                                             <input type="hidden" id="sample6_extraAddress" >
                                        </div>
                                        <div class="address_input">
                                            <input type="text" name="user_addr1" id="addr1" readonly="readonly">
                                            <input type="text" name="user_addr2" id="addr2">
                                            <input type="hidden" id="sample6_postcode">
                                        </div>
										<div class="address_noti">결제 하시기전에 꼭 배송지 주소가 제대로 반영되었는지 확인해주세요!</div>
                                    </td>
                                </tr>
                                <tr>
                                    <th scope="row">전화번호</th>
                                    <td>
                                        <input type="text" id="receiverPhone" name="receiverPhone">
                                    </td>
                                </tr>
                                <tr>
                                    <th scope="row"><span class="important">휴대폰 번호</span></th>
                                    <td>
                                        <input type="text" id="receiverCellPhone" name="receiverCellPhone">
                                    </td>
                                </tr>
                                <tr>
                                    <th scope="row">남기실 말씀</th>
                                    <td class="td_last_say"><input type="text" name="orderMemo"></td>
                                </tr>
                             
                                <tr class="orderVisitTr dn">
                                    <th scope="row">방문수령 정보</th>
                                    <td>
                                        <div class="table1">
                                            <table>
                                                <colgroup>
                                                    <col style="width:150px;">
                                                    <col>
                                                </colgroup>
                                                <tbody>
                                                <tr>
                                                    <th scope="row">방문 수령지 주소</th>
                                                    <td>
                                                        <span class="delivery-method-visit-area-txt"></span>
                                                        <input type="hidden" name="visitAddress" value="">

                                                    </td>
                                                </tr>
                                                <tr>
                                                    <th scope="row"><span class="important">방문자 정보</span></th>
                                                    <td>
                                                        방문자명 <input type="text" name="visitName" value="" class="text"> 방문자연락처 <input type="text" name="visitPhone" value="" class="text">
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <th scope="row">메모</th>
                                                    <td class="td_last_say">
                                                        <input type="text" name="visitMemo" maxlength="250">
                                                    </td>
                                                </tr>
                                                </tbody>
                                            </table>
                                        </div>
                                    </td>
                                </tr>
                                </tbody>
                            </table>
                        </div>
                    </div>
                    <!-- //delivery_info -->

                    <!-- //addition_info -->

                    <div class="payment_info mt80">
                        <div class=" ">
                            <h4 class="tit_28">결제정보</h4>
                        </div>

                        <div class="order_table_type mt20">
                            <table class="table_left">
                                <colgroup>
                                    <col style="width:220px">
                                    <col>
                                </colgroup>
                                <tbody>
                                <tr>
                                    <th scope="row">상품 합계 금액</th>
                                    <td>
                                        <strong id="totalGoodsPrice" class="order_payment_sum">42,680원</strong>
                                    </td>
                                </tr>
                                <tr>
                                    <th scope="row">배송비</th>
                                    <td>
                                        <span id="totalDeliveryCharge">6,000</span>원
                                        <span class="multi_shipping_text"></span>
                                    </td>
                                </tr>
                                <tr id="rowDeliveryInsuranceFee" class="dn">
                                    <th scope="row">해외배송 보험료</th>
                                    <td>
                                        <span id="deliveryInsuranceFee">0</span>원
                                        <input type="hidden" name="deliveryInsuranceFee" value="0">
                                    </td>
                                </tr>
                                <tr id="rowDeliverAreaCharge" class="dn">
                                    <th scope="row">지역별 배송비</th>
                                    <td>
                                        <span id="deliveryAreaCharge">0</span>원
                                        <input type="hidden" name="totalDeliveryCharge" value="6000">
                                        <input type="hidden" name="deliveryAreaCharge" value="0">
                                    </td>
                                </tr>
                                <tr>
                                    <th scope="row">할인 및 적립</th>
                                    <td>
                                        <ul class="order_benefit_list">
                                            <li class="order_benefit_sale">
                                                <em id="saleDefault">
                                                    할인 : <strong>(-) <b class="total-member-dc-price">0</b>원</strong>
                                                    <span>(
                                                    상품 0원
                                                    , 회원 <span class="member-dc-price">0원</span>
                                                    , 쿠폰 <span class="goods-coupon-dc-price">0</span>원
                                                    )</span>
                                                </em>
                                                <em id="saleWithoutMember" class="dn">
                                                    할인 : <strong>(-) <b class="total-member-dc-price-without-member">0</b>원</strong>
                                                    <span>(
                                                    상품 0원
                                                    , 회원 0원
                                                    , 쿠폰 <span class="goods-coupon-dc-price-without-member">0</span>원</span>
                                                    )
                                                </em>
                                            </li>
                                            <li class="order_benefit_mileage js_mileage">
                                                <em id="mileageDefault">
                                                    적립 적립금 : <strong>(+) <b class="total-member-mileage">213</b>원</strong>
                                                    <span>
                                                        (
                                                        상품 <span class="goods-mileage">0</span>원,
                                                        회원 <span class="member-mileage">213</span>원,
                                                        쿠폰 <span class="goods-coupon-add-mileage">0</span>원
                                                        )
                                                    </span>
                                                </em>
                                                <em id="mileageWithoutMember" class="js_mileage dn">
                                                    적립 적립금 : <strong>(+) <b class="total-member-mileage-without-member">0</b>원</strong>
                                                    <span>
                                                        (
                                                        상품 0원,
                                                        회원 0원,
                                                        쿠폰 <span class="goods-coupon-add-mileage-without-member">0</span>원
                                                        )
                                                    </span>
                                                </em>
                                            </li>
                                        </ul>
                                    </td>
                                </tr>
                                <tr>
                                    <th scope="row">쿠폰 사용</th>
                                    <td>
                                        <input type="hidden" name="couponApplyOrderNo" value="">
                                        <input type="hidden" name="totalCouponOrderDcPrice" value="">
                                        <input type="hidden" name="totalCouponOrderPrice" value="">
                                        <input type="hidden" name="totalCouponOrderMileage" value="">
                                        <input type="hidden" name="totalCouponDeliveryDcPrice" value="">
                                        <input type="hidden" name="totalCouponDeliveryPrice" value="">
                                        <ul class="order_benefit_list order_coupon_benefits  dn">
                                            <li class="order_benefit_sale">
                                                <em>
                                                    주문할인 : <strong>(-) <b id="useDisplayCouponDcPrice">0</b>원</strong>
                                                </em>
                                            </li>
                                            <li class="order_benefit_sale">
                                                <em>
                                                    배송비할인 : <strong>(-) <b id="useDisplayCouponDelivery">0</b>원</strong>
                                                </em>
                                            </li>
                                            <li class="order_benefit_mileage js_mileage">
                                                <em>
                                                    적립 적립금 : <strong>(+) <b id="useDisplayCouponMileage">0</b>원</strong>
                                                </em>
                                            </li>
                                        </ul>
                                        <span class=" ">
                                            <button type="button" href="#couponOrderApplyLayer" class="btn_icn btn_wt02 h45 w160  btn_open_layer"><span>쿠폰 조회 및 적용</span></button>
                                        </span>
                                    </td>
                                </tr>
                                <tr>
                                    <th scope="row">적립금 사용</th>
                                    <td>
                                        <div class="order_money_use">
                                            <b><input type="text" name="useMileage" onblur="gd_mileage_use_check(&#39;y&#39;, &#39;y&#39;, &#39;y&#39;);" disabled="disabled"> 원</b>
                                            <div class="form_element">
                                                <input type="checkbox" id="useMileageAll" onclick="gd_mileage_use_all();" disabled="disabled">
                                                <label for="useMileageAll" class="check">전액 사용하기</label>
                                                <span class="money_use_sum">(보유 적립금 : <em>0 </em>원)</span>
                                            </div>
                                            <em class="money_use_txt js-mileageInfoArea"></em>
                                        </div>
                                    </td>
                                </tr>
                                <tr>
                                    <th scope="row">최종 결제 금액</th>
                                    <td>
                                        <input type="hidden" name="settlePrice" value="48680">
                                        <input type="hidden" name="overseasSettlePrice" value="0">
                                        <input type="hidden" name="overseasSettleCurrency" value="KRW">
                                        <strong id="totalSettlePrice" class="order_payment_sum">48,680</strong>원
                                    </td>
                                </tr>
                                </tbody>
                            </table>
                        </div>
                    </div>
                    <!-- //payment_info -->

                    <div class="payment_progress mt80">
                        <div class=" ">
                            <h4 class="tit_28">결제수단 선택 / 결제</h4>
                            <p class="js_pay_content">※ 고객님은 안전거래를 위해 현금으로 결제시 저희 쇼핑몰에서 가입한 구매안전서비스인 NHN KCP의 구매안전(에스크로)서비스를 이용하실 수 있습니다.</p>
                        </div>

                        <div class="payment_progress_list mt20">
                            <div class="js_pay_content">
                                <!-- N : 페이코결제 시작 -->
                                <!-- N : 페이코결제 끝 -->

                                <!-- N : 일반결제 시작 -->
                                <div id="settlekind_general" class="general_payment">
                                    <dl>
                                        <dt>일반결제</dt>
                                        <dd>
                                            <div class="form_element">
                                                <ul class="payment_progress_select">
                                                    <li id="settlekindType_gb">
                                                        <input type="radio" id="settleKind_gb" name="settleKind" value="gb">
                                                        <label for="settleKind_gb" class="choice_s on"><span>무통장 입금</span></label>
                                                    </li>
                                                    <li id="settlekindType_pc">
                                                        <input type="radio" id="settleKind_pc" name="settleKind" value="pc">
                                                        <label for="settleKind_pc" class="choice_s"><span>신용카드</span></label>
                                                    </li>
                                                    <li id="settlekindType_pb">
                                                        <input type="radio" id="settleKind_pb" name="settleKind" value="pb">
                                                        <label for="settleKind_pb" class="choice_s"><span>계좌이체</span></label>
                                                    </li>
                                                    <li id="settlekindType_pv">
                                                        <input type="radio" id="settleKind_pv" name="settleKind" value="pv">
                                                        <label for="settleKind_pv" class="choice_s"><span>가상계좌</span></label>
                                                    </li>
                                                    <li id="settlekindType_ph">
                                                        <input type="radio" id="settleKind_ph" name="settleKind" value="ph">
                                                        <label for="settleKind_ph" class="choice_s"><span>휴대폰결제</span></label>
                                                    </li>
                                                    <li id="settlekindType_pk">
                                                        <input type="radio" id="settleKind_pk" name="settleKind" value="pk">
                                                        <label for="settleKind_pk" class="choice_s"><span>카카오페이</span></label>
                                                    </li>
                                                </ul>
                                            </div>

                                            <!-- N : 무통장입금 -->
                                            <div id="settlekind_general_gb" class="pay_bankbook_box" style="display: block;">
                                                <em class="pay_bankbook_txt">( 무통장 입금 의 경우 입금확인 후부터 배송단계가 진행됩니다. )</em>
                                                <ul>
                                                    <li>
                                                        <strong>입금자명</strong>
                                                        <input type="text" name="bankSender">
                                                    </li>
                                                    <li>
                                                        <strong>입금은행</strong>
                                                        <select name="bankAccount" class="chosen-select" style="display: none;">
                                                            <option value="">선택하세요</option>
                                                            <option value="2">농협은행 355-0071-0743-53 농업회사법인 배상면주가 포천엘비 주식</option>
                                                        </select><div class="chosen-container chosen-container-single chosen-container-single-nosearch" style="width: 350px;" title=""><a class="chosen-single"><span>선택하세요</span><div><b></b></div></a><div class="chosen-drop"><div class="chosen-search"><input type="text" autocomplete="off" readonly=""></div><ul class="chosen-results"></ul></div></div>
                                                    </li>
                                                </ul>
                                            </div>
                                            <!-- //pay_bankbook_box -->

                                            <!-- 신용카드 컨텐츠 -->
                                            <div class="card" id="settlekind_general_pc" style="display: none;"></div>
                                            <!-- //신용카드 컨텐츠 -->

                                            <!-- 계좌이체 컨텐츠 -->
                                            <div class="account-bank" id="settlekind_general_pb" style="display: none;"></div>
                                            <!-- //계좌이체 컨텐츠 -->

                                            <!-- 가상계좌 컨텐츠 -->
                                            <div class="virtual-bank" id="settlekind_general_pv" style="display: none;"></div>
                                            <!-- //가상계좌 컨텐츠 -->

                                            <!-- 휴대폰 컨텐츠 -->
                                            <div class="cellphone" id="settlekind_general_ph" style="display: none;"></div>
                                            <!-- //휴대폰 컨텐츠 -->


                                        </dd>
                                    </dl>
                                </div>
                                <!-- //general_payment -->
                                <!-- N : 일반결제 끝 -->

                                <!-- N : 에스크로결제 시작 -->
                                <div id="settlekind_escrow" class="escrow_payment">
                                    <dl>
                                        <dt>에스크로결제</dt>
                                        <dd>
                                            <div class="form_element">
                                                <ul class="payment_progress_select">
                                                    <li class="settleKind_eb">
                                                        <input type="radio" name="settleKind" id="settleKind_eb" value="eb">
                                                        <label for="settleKind_eb" class="choice_s">계좌이체</label>
                                                    </li>
                                                    <li class="settleKind_ev">
                                                        <input type="radio" name="settleKind" id="settleKind_ev" value="ev">
                                                        <label for="settleKind_ev" class="choice_s">가상계좌</label>
                                                    </li>
                                                </ul>
                                            </div>
                                        </dd>
                                    </dl>
                                </div>
                                <!-- //escrow_payment -->
                                <!-- N : 에스크로결제 끝 -->

                            </div>
                            <!-- N : 현금영수증/계산서 발행 시작 -->
                            <div id="receiptSelect" class="cash_tax_get" style="display: block;">
                                <dl>
                                    <dt>현금영수증/계산서 발행</dt>
                                    <dd>
                                        <div class="form_element">
                                            <ul class="payment_progress_select">
                                                <li id="nonReceiptView">
                                                    <input type="radio" id="receiptNon" name="receiptFl" value="n" onclick="gd_receipt_display();">
                                                    <label for="receiptNon" class="choice_s on">
                                                        <div class="cash_receipt_non">신청안함</div>
                                                        <div class="cash_receipt_pg" style="display: none;">현금영수증 (※ 결제창에서 신청)</div>
                                                    </label>
                                                </li>
                                                <li id="cashReceiptView">
                                                    <input type="radio" id="receiptCash" name="receiptFl" value="r" onclick="gd_receipt_display();">
                                                    <label for="receiptCash" class="choice_s">현금영수증</label>
                                                </li>
                                            </ul>
                                        </div>
                                    </dd>
                                </dl>

                                <!-- N : 현금영수증 시작 -->
                                <div id="cash_receipt_info" class="cash_receipt_box js_receipt dn">
                                    <div class="form_element">
                                        <ul class="payment_progress_select">
                                            <input type="hidden" name="cashCertFl" value="c">
                                            <li>
                                                <input type="radio" id="cashCert_d" name="cashUseFl" value="d" onclick="gd_cash_receipt_toggle();" checked="checked">
                                                <label class="choice_s" for="cashCert_d">소득공제용</label>
                                            </li>
                                            <li>
                                                <input type="radio" id="cashCert_e" name="cashUseFl" value="e" onclick="gd_cash_receipt_toggle();">
                                                <label class="choice_s" for="cashCert_e">지출증빙용</label>
                                            </li>
                                        </ul>
                                    </div>
                                    <div class="cash_receipt_list">
                                        <dl id="certNoHp">
                                            <dt>휴대폰번호</dt>
                                            <dd><input type="text" name="cashCertNo[c]" class="number_only" value="01057072764" maxlength="11"></dd>
                                        </dl>
                                        <dl id="certNoBno">
                                            <dt>사업자번호</dt>
                                            <dd><input type="text" name="cashCertNo[b]" class="number_only" value="" maxlength="10"></dd>
                                        </dl>
                                    </div>
                                </div>
                                <!-- //cash_receipt_box -->


                            </div>
                            <!-- //cash_tax_get -->
                            <!-- N : 현금영수증/계산서 발행 끝-->

                        </div>
                        <!-- //payment_progress_list -->
                        <div class="payment_final">
                            <div class="payment_final_total">
                                <dl>
                                    <dt>최종 결제 금액</dt>
                                    <dd><span><strong id="totalSettlePriceView">48,680</strong>원</span></dd>
                                </dl>
                            </div>
                            <div class="payment_final_check">
                                <div class="form_element">
                                    <input type="checkbox" id="termAgree_orderCheck" class="require">
                                    <label for="termAgree_orderCheck" class="check "><em><b>(필수)</b> 구매하실 상품의 결제정보를 확인하였으며, 구매진행에 동의합니다.</em></label>
                                </div>
                            </div>
                            <div class="btn_center_box">
                                <button class="btn_order_buy order-buy"><em>결제하기</em></button>
                            </div>
                        </div>
                        <!-- //payment_final -->

                    </div>
                    <!-- //payment_progress -->

                </div>
                <!-- //order_view_info -->
            </div>
            <!-- //order_cont -->
        </div>
        <!-- //order_wrap -->
    </form>
</div>
<!-- //content_box -->

<!-- 나의 배송지 관리 레이어 -->
<div id="myShippingListLayer" class="layer_wrap delivery_add_list_layer dn"></div>
<!-- //나의 배송지 관리 레이어 -->
<!-- 상품 쿠폰 적용하기 레이어 -->
<div id="couponApplyLayer" class="layer_wrap coupon_apply_layer dn"></div>
<!--//상품 쿠폰 적용하기 레이어 -->
<!-- 주문 쿠폰 적용하기 레이어 -->
<div id="couponOrderApplyLayer" class="layer_wrap coupon_apply_layer dn"></div>
<!--//주문 쿠폰 적용하기 레이어 -->
<!-- PG 결제 적용하기 레이어 -->
<div id="pgSettlementApplyLayer" class="layer_wrap pg_layer dn"></div>
<!--//PG 결제 적용하기 레이어 -->


<script type="text/javascript" src="./홈술닷컴_files/jquery.textchange.js.다운로드"></script>
<script type="text/javascript" src="./홈술닷컴_files/jquery.serialize.object.js.다운로드"></script>
<script type="text/javascript" src="./홈술닷컴_files/businessnoKR.js.다운로드"></script>
<!-- Facebook Pixel Code --><script>
        fbq('track', 'InitiateCheckout', {
        content_ids: [1000000216,1000000219],
        value: 48680,
        currency: 'KRW',
        content_type: 'product',
        });
    </script><!-- Facebook Pixel Code -->

<script type="text/javascript">
    <!--
    // 배송지 데이터 글로벌 선언
    var defaultShippingAddress = [];
    var recentShippingAddress = [];
    // 마일리지 사용 정보
    var mileageUse = {
        'usableFl' : 'n',
        'minimumHold' : parseInt('0'),
        'minimumLimit' : parseInt('0'),
        'orderAbleLimit' : parseInt('5000'),
        'orderAbleStandardPrice' : parseInt('42680'), // '최소 상품구매금액 제한' 을 비교하기 위한 계산된 구매금액
        'useDeliveryFl' : 'n',
        'maximumLimit' : '0.00',
        'oriMaximumLimit' : parseInt('0'), // 변형되지 않은 설정 그대로의 값 - %는 원으로 계산되어 나옴
    };

    $(document).ready(function(){

        $('input.number_only').on('keyup', function () {
            var value = $(this).val().replace(/[^0-9]/g, '');
            $(this).val(value);
        });

        $(document).on('click', '#pgSettlementApplyLayer .close', function(e){
            $(this).closest('.layer_wrap').addClass('dn');
            $('#layerDim').addClass('dn');
            //$('html').removeClass('oh-space');
            //$('#scroll-left, #scroll-right').removeClass('dim');
            $('.inipay_modal-backdrop').remove();
        });

        // 본인인증 레이어
        $("#contents .order_info .btn_cert").on('click',function(){
            $(".pop_cert_ly").show();
            $('#layerDim').removeClass('dn');
        });
        $("#contents .pop_cert_ly .btn_close").on('click',function(){
            $(".pop_cert_ly").hide();
            $('#layerDim').addClass('dn');
        });



        // 쿠폰 적용/변경 레이어
        $('.btn_open_layer').bind('click', function(e){
            if($(this).attr('href') == '#couponOrderApplyLayer') {
                // 마일리지 쿠폰 중복사용 체크
                var checkMileageCoupon = gd_choose_mileage_coupon('coupon');
                if (!checkMileageCoupon) {
                    return false;
                }

                var cartIdx = [];
                $('input[name="cartSno[]"]').each(function(idx){
                    cartIdx.push($(this).val());
                });
                var params = {
                    mode: 'coupon_apply_order',
                    cartSno: cartIdx,
                    couponApplyOrderNo: $('input:hidden[name="couponApplyOrderNo"]').val(),
                };
                $.ajax({
                    method: "POST",
                    cache: false,
                    url: "../order/layer_coupon_apply_order.php",
                    data: params,
                    success: function (data) {
                        $('#couponOrderApplyLayer').empty().append(data);
                        $('#couponOrderApplyLayer').find('>div').center();
                    },
                    error: function (data) {
                        alert(data);
                    }
                });
            }
        });

        // 사은품 체크 및 체크된 수량 출력
        $('.order_freebie_list input[type=checkbox]').click(function(e){
            if($(this).prop('readonly') == false) {
                var selectCnt = $(this).closest('dl').find('.gift_select_cnt').val();
                var checkedCnt = $(this).closest('dl').find('input[type=checkbox]:checked').length;
                if (checkedCnt > selectCnt) {
                    alert("{사은품은 최대 " + selectCnt + "개만 선택하실 수 있습니다.");
                    $(this).prop('checked', false).next('label').removeClass('on');

                    return false;
                }
                $(this).closest('dd').prev('dt').find('strong').text(checkedCnt);
            }
        });

        // 배송지관리 이벤트
        $(document).on('click', '.btn_open_layer.js_shipping', function(e) {
            var shippingNo = '';
            $('#myShippingListLayer').empty();
            if (typeof $(this).data('no') != 'undefined') {
                shippingNo = $('.btn_open_layer.js_shipping').index(this);
            }

            $.get('../order/layer_shipping_address.php?shippingNo=' + shippingNo, function(data){
                $('#myShippingListLayer').append(data);
                $('#myShippingListLayer').find('>div').center();
            });
        });

        // 세금계산서 관련 체크용
        var checkTax = function() {
            if ($('#settleKind_gb').is(':checked') && $('#receiptTax').is(':checked')) {
                return true;
            }
            return false;
        }

        // 무통장입금 체크
        var checkBank = function() {
            if ($('#settleKind_gb').is(':checked') && parseInt($('input[name=settlePrice]').val()) > 0) {
                return true;
            }
            return false;
        }

        // 우편번호 체크를 위한 알파벳+숫자+띄어쓰기 체크
        $.validator.addMethod( "alphanumeric", function( value, element ) {
            return this.optional( element ) || /^[a-zA-Z0-9\s]+$/i.test( value );
        }, __("알파벳과 숫자로만 구성되어야 합니다.") );


        /*
         * 비회원 주문 전체 동의 체크박스 이벤트
         */

        var receiveFl = function () {
            if ($('input[name="deliveryVisit"]').val() == 'n' || $('input[name="deliveryVisit"]').val() == 'a') {
                return true;
            }
            return false;
        }

        var visitFl = function () {
            if ($('input[name="deliveryVisit"]').val() == 'y' || $('input[name="deliveryVisit"]').val() == 'a') {
                return true;
            }
            return false;
        }

        // 폼 체크
        $('#frmOrder').validate({
            onkeyup: onkeyup,
            invalidHandler: function(event, validator) {
                var errors = validator.numberOfInvalids();
                if (validator.errorList[0].element.id == 'termAgree') {
                    $("#termAgreeDiv").attr("tabindex", -1).focus();
                }

                if (errors) {
                    alert(validator.errorList[0].message);
                    validator.errorList[0].element.focus();
                }
            },
            submitHandler: function (form) {

                if ($(".btn_cert").length > 0 && $(".btn_cert").css('display') != "none") {
                    pass = false;
                    alert(__('본인인증을 진행해주세요.'));
                    $(".btn_cert").focus();
                    return false;
                }


                var pass = true;
                $('input:checkbox[id*="termAgree_"].require').each(function (idx, item) {
                    var $item = $(item);
                    if (!$item.prop('checked')) {
                        pass = false;
                        alert("청약의사 재확인을 동의해 주셔야 주문을 진행하실 수 있습니다.");
                        return false;
                    }
                });

                if (pass && $('input[name=settleKind]').length == 0 && $('#totalSettlePriceView').html() != '0') {
                    alert(__('선택된 결제 수단이 없습니다.'));
                    return false;
                }

                // 쿠폰 사용기간 체크
                if ($('input[name="totalCouponGoodsDcPrice"]').val() > 0 || $('input[name="totalCouponGoodsMileage"]').val() > 0 || $('input[name="totalCouponOrderDcPrice"]').val() > 0 || $('input[name="totalCouponOrderMileage"]').val() > 0 || $('input[name="totalCouponDeliveryDcPrice"]').val() > 0) {
                    var chkCartSno = [];
                    var couponApplyOrderNo = $('input:hidden[name="couponApplyOrderNo"]').val();
                    $('input[name="cartSno[]"]').each(function(idx){
                        chkCartSno.push($(this).val());
                    });
                    var checkCouponType = false;
                    var totalCouponGoodsDcPrice = 0;
                    var totalCouponGoodsMileage = 0;
                    var totalCouponOrderDcPrice = 0;
                    var totalCouponOrderMileage = 0;
                    var totalCouponDeliveryDcPrice = 0;
                    var orderCouponApplyNoArr = new Array();
                    $.ajax({
                        method: "POST",
                        cache: false,
                        async: false,
                        url: "../order/cart_ps.php",
                        data: {mode: 'CheckCouponTypeArr', cartSno : chkCartSno, couponApplyOrderNo : couponApplyOrderNo },
                        success: function (data) {
                            checkCouponType = data.isSuccess;
                            // 쿠폰 금액 재정의
                            if (checkCouponType) {
                                // 상품쿠폰
                                if (data.memberCouponSalePrice > 0) {
                                    totalCouponGoodsDcPrice = parseInt($('input[name=totalCouponGoodsDcPrice]').val()) - data.memberCouponSalePrice;
                                }

                                if (data.memberCouponAddMileage > 0) {
                                    totalCouponGoodsMileage = parseInt($('input[name=totalCouponGoodsMileage]').val()) - data.memberCouponAddMileage;
                                }

                                // 주문 및 배송비쿠폰
                                if (data.setCouponApplyOrderNo || data.resetCouponApplyOrderNo) {
                                    $('input:hidden[name="couponApplyOrderNo"]').val(data.setCouponApplyOrderNo);
                                    orderCouponApplyNoArr = data.resetCouponApplyOrderNo.split('||');
                                    $.each(orderCouponApplyNoArr, function (index, val) {
                                        if ($('#check'+val).data('type') == 'sale') {
                                            totalCouponOrderDcPrice = parseInt($('input[name=totalCouponOrderDcPrice]').val()) - parseInt($('#check'+val).data('price'));
                                        } else if ($('#check'+val).data('type') == 'add') {
                                            totalCouponOrderMileage = parseInt($('input[name=totalCouponOrderMileage]').val()) - parseInt($('#check'+val).data('price'));
                                        } else if ($('#check'+val).data('type') == 'delivery') {
                                            totalCouponDeliveryDcPrice = parseInt($('input[name=totalCouponDeliveryDcPrice]').val()) - parseInt($('#check'+val).data('price'));
                                        }
                                    });
                                }
                            }
                        },
                        error: function (e) {
                        }
                    });

                    if(checkCouponType) {
                        // 상품 적용쿠폰
                        if (totalCouponGoodsDcPrice > 0) {
                            $('input[name=totalCouponGoodsDcPrice]').val(totalCouponGoodsDcPrice);
                        }

                        if (totalCouponGoodsMileage > 0) {
                            $('input[name=totalCouponGoodsMileage]').val(totalCouponGoodsMileage);
                        }

                        if (orderCouponApplyNoArr) {
                            // 주문 적용쿠폰
                            if (totalCouponOrderDcPrice >= 0) {
                                $('input[name=totalCouponOrderDcPrice]').val(totalCouponOrderDcPrice);
                                $('input[name=totalCouponOrderPrice]').val(totalCouponOrderDcPrice);
                            }

                            if (totalCouponOrderMileage >= 0) {
                                $('input[name=totalCouponOrderMileage]').val(totalCouponOrderMileage);
                            }

                            // 배송비 적용쿠폰
                            if (totalCouponDeliveryDcPrice >= 0) {
                                $('input[name=totalCouponDeliveryPrice]').val(totalCouponDeliveryDcPrice);
                                $('input[name=totalCouponDeliveryDcPrice]').val(totalCouponDeliveryDcPrice);
                            }
                        }
                        gd_set_recalculation();
                        gd_set_real_settle_price();
                        alert('사용할 수 없는 쿠폰이 있어 제외 후 주문을 진행합니다.');
                    }
                }

                if (pass) {
                    $('.order-buy').attr("disabled",true);
                    $('.order-buy em').html("결제처리중");
                    $(document).on('click', '.layer_wrap .layer_close, .btn_box .btn_cancel', function(){
                        $('.order-buy').attr("disabled",false);
                        $('.order-buy em').html("결제하기");
                    });
                    form.target = 'ifrmProcess';
                    form.submit();
                }
            },
            rules: {
                termAgreePrivateProvider: 'required',
                orderName: 'required',
                orderCellPhone: 'required',
                orderEmail: {
                    required: true,
                    email: true
                },
                receiverName: {
                    required: receiveFl
                },
                receiverZonecode: {
                    required: receiveFl,
                    number: true,
                },
                receiverAddress: {
                    required: receiveFl
                },
                receiverAddressSub: {
                    required: receiveFl
                },
                receiverCellPhone: {
                    required: receiveFl
                },
                visitName: {
                    required: visitFl
                },
                visitPhone: {
                    required: visitFl
                },
                bankSender: {
                    required: checkBank
                },
                bankAccount: {
                    required: checkBank
                },
                taxBusiNo: {
                    required: checkTax,
                    businessnoKR: checkTax
                },
                taxCompany: {
                    required: checkTax
                },
                taxCeoNm: {
                    required: checkTax
                },
                taxService: {
                    required: checkTax
                },
                taxItem: {
                    required: checkTax
                },
                taxAddress: {
                    required: checkTax
                }
            },
            messages: {
                termAgreePrivateProvider: {
                    required: "상품 공급사 개인정보 제공에 동의해 주세요."
                },
                orderName: {
                    required: "주문하시는 분 정보를 입력해 주세요."
                },
                orderCellPhone: {
                    required: "주문하시는 분 휴대폰 번호 정보를 입력해 주세요."
                },
                orderEmail: {
                    required: "주문하시는 분 이메일 정보를 입력해 주세요.",
                    email: "이메일을 정확하게 입력해주세요."
                },
                receiverName: {
                    required: "받으실 분 정보를 입력해 주세요."
                },
                receiverZonecode: {
                    required: "받으실 곳 우편번호 정보를 입력해 주세요.",
                    number: "숫자만 입력하실 수 있습니다.",
                },
                receiverAddress: {
                    required: "받으실 곳 주소 정보를 입력해 주세요."
                },
                receiverAddressSub: {
                    required: "받으실 곳 주소 정보를 입력해 주세요."
                },
                receiverCellPhone: {
                    required: "받으실 분 휴대폰 번호 정보를 입력해 주세요."
                },
                visitName: {
                    required: "방문자명을 입력해 주세요."
                },
                visitPhone: {
                    required: "방문자연락처를 입력해 주세요."
                },
                bankSender: {
                    required: "입금자명을 입력해주세요."
                },
                bankAccount: {
                    required: "입금은행을 선택해주세요."
                },
                taxBusiNo: {
                    required: "[세금계산서] 사업자번호를 입력하세요."
                },
                taxCompany: {
                    required: "[세금계산서] 회사명을 입력하세요."
                },
                taxCeoNm: {
                    required: "[세금계산서] 대표자명을 입력하세요."
                },
                taxService: {
                    required: "[세금계산서] 업태를 입력하세요."
                },
                taxItem: {
                    required: "[세금계산서] 종목을 입력하세요."
                },
                taxAddress: {
                    required: "[세금계산서] 사업장주소를 입력하세요."
                }
            },
            focusInvalid: {
                receiverName: true,
                receiverZonecode: true,
                receiverAddress: true,
                receiverAddressSub: true,
                receiverCellPhone: true,
            }
        });

        if ($('input[name=settleKind]').length > 0) {
            // 일반결제 > 결제수단 선택 클릭 이벤트
            $('input[name=settleKind]').click(function(e){
                //페이코 결제가 아닐때 처리
                if ($(this).val().substring(0, 1) != 'f') {
                    gd_payment_reset();
                    gd_settlekind_selector($(this).val());
                }
            });
        }

        // 마일리지 체크 이벤트
        gd_mileage_use_check('n', 'n', 'n');
        $('input[name=useMileage]').blur(function(e){
            if (!_.isUndefined(e.isTrigger)) {
                gd_mileage_use_check('y', 'y', 'y');
            }
        });

        // 마일리지 쿠폰 중복사용 체크
        $('input[name=useMileage]').change(function (e) {
            // 마일리지 쿠폰 중복사용 체크
            e.preventDefault();
            gd_choose_mileage_coupon('mileage');
        });

        // 예치금 체크 이벤트
        $('input[name=useDeposit]').blur(function(e){
            if (!_.isUndefined(e.isTrigger)) {
                gd_deposit_use_check();
            }
        });

        // 배송지 선택
        $('input[name=shipping]:radio').click(function(e){
			postcode_callback_check = false; // 튜닝 : postcode_callback 함수 체크 여부 2021-08-17

            switch ($(this).prop('id')) {
                // 기본배송지
                case 'shippingBasic':
                    if (!_.isEmpty(defaultShippingAddress)) {
                        gd_set_delivery_shipping_address(defaultShippingAddress);
                    } else {
                        alert("배송지관리 목록이 없습니다.");
                        return false;
                    }
                    break;

                // 최근 배송지
                case 'shippingRecently':
                    if (!_.isEmpty(recentShippingAddress)) {
                        gd_set_delivery_shipping_address(recentShippingAddress);
                    } else {
                        alert("최근 배송지가 없습니다.");
                        return false;
                    }
                    break;

                // 신규 배송지
                // 주문자정보와 동일
                case 'shippingNew':
                case 'shippingSameCheck':
                    gd_order_info_same();
                    break;
            }
            gd_reflect_apply_delivery($(this).prop('id'));
        });

        // 지역별 배송비 체크
        $(document).on('blur', 'input[name^=receiverAddressSub]', function(e){
            gd_get_delivery_area_charge();
        });

        // 해외 배송비 체크
        $('select[name=receiverCountryCode]').change(function(e){
            gd_get_delivery_country_charge();
        });

        // 페이지 로딩시 우선국가 지정으로 인해 배송비 체크
        if ($('select[name=receiverCountryCode]').val()) {
            $('select[name=receiverCountryCode]').trigger('change');
        }

        // 이메일 도메인 대입
        gd_select_email_domain('orderEmail');
        gd_select_email_domain('taxEmail','taxEmailDomain');
        $("#taxEmailDomain_chosen").width("120px");

        // 결제 방법 선택
        if ($('input[name=settleKind]').length > 0) {
            gd_settlekind_toggle();
        }

        var adddHtml = '';
        adddHtml +=  "<strong>결제수단</strong>";
        adddHtml +=  "<ul>";
        adddHtml +=  "<li>계좌이체</li>";
        adddHtml +=  "<li>신용카드</li>";
        adddHtml +=  "<li>휴대폰결제</li>";
        adddHtml +=  "<li>카카오페이</li>";
        adddHtml +=  "<li>가상계좌</li>";
        adddHtml +=  "</ul>";
        $(adddHtml).appendTo('.icon_pg_cont');

        // 기본배송비 설정에 따른 트리거 처리
        if (!_.isEmpty(defaultShippingAddress)) {
            $('#shippingBasic').prop('checked', true).trigger('click');
            gd_get_delivery_area_charge();
        } else {
            $('#shippingNew').prop('checked', true);
            $('label[for="shippingNew"]').addClass('on');
        }


        gd_set_real_settle_price();
    });

    /**
     * 기본배송지 가져오기
     */
    function getDefaultShippingAddress()
    {
        return defaultShippingAddress;
    }

    /**
     * 기본배송지 설정하기
     */
    function gd_set_default_shipping_address(data)
    {
        defaultShippingAddress = data;
    }

    /**
     * 지역별 배송비 체크 (우편번호 팝업에서 콜백받는 함수)
     */

	var postcode_callback_check = false; // 튜닝 : postcode_callback 함수 체크 여부 2021-08-17
    function postcode_callback() {
        gd_get_delivery_area_charge();

		postcode_callback_check = false;
    }

    /**
     * 주소에 따른 지역별 배송비 가져오기
     */

    function gd_get_delivery_area_charge() {

		// 튜닝 : 홈술 배송지 정보 S 2021-08-17
		var zipcode = $('input[name=receiverZipcode]').val();
		var zonecode = $('input[name=receiverZonecode]').val();

		if(zonecode == '' && zipcode){
			zonecode = zipcode.replace('-', '');
		}
		if(zonecode){
			zonecode = zonecode.replace('-', '');
		}
		
		var possible_type_html = $('.possible_type').html();
		var meshDeliveryPossible = hs_set_delivery_area_info(zonecode);

		var chkTodayHomesool = []; 
		$('input[name="cartSno[]"]').each(function(){
			if($(this).data('goods-kind') == 't'){
				chkTodayHomesool.push($(this).val());
			}
		});
		
		if(postcode_callback_check === true){
			if(chkTodayHomesool.length > 0){
				if(meshDeliveryPossible === false){
					
					//$('.possible_type').empty();

					alert('변경하신 배송지는 오늘홈술(당일배송)이 불가한 지역입니다. 배송지를 다시 선택해주시거나 일반홈술 장바구니로 다시 담아주세요.');
					postcode_callback_check = false;
					
					$('#shippingBasic').prop('checked', true).trigger('click');

					return false;
					
					/*
					if (confirm('변경하시는 지역이 오늘홈술로 배송할 수 없는 지역입니다. 오늘홈술이 불가한 지역으로 변경시 주문을 다시해 주셔야 합니다. 주문을 초기화하고 다시 선택하시겠습니까?') === true) {
						location.href="../main/index.php";
						return false;
					}else {
						postcode_callback_check = false;
						location.reload();
					}*/
				}
			}
		}

		// 튜닝 : 홈술 배송지 정보 E 2021-08-17

        var cartIdx = [];
        $('input[name="cartSno[]"]').each(function(idx){
            cartIdx.push($(this).val());
        });

        var params = {
            mode: 'check_area_delivery',
            cartSno: cartIdx,
            receiverAddress: $('input[name=receiverAddress]').val(),
            receiverAddressSub: $('input[name=receiverAddressSub]').val(),
            totalCouponOrderDcPrice: $('input:hidden[name="totalCouponOrderDcPrice"]').val(),
        };
        $.post('cart_ps.php', params, function(data){
            $('input[name=deliveryAreaCharge]').val(data.areaDelivery);
            gd_set_real_settle_price();

            mileageUse = data.mileageUse;

            gd_mileage_use_check('y', 'n', 'n');
        });
    }
	
	// 튜닝 : 홈술 배송지 정보 2021-08-17
	function hs_set_delivery_area_info(zonecode, zipcode){
		
		//console.log();
		if(!zonecode){
			return false;
		}

		var meshDeliveryPossible = false;

		// 배송지 정보 초기화 
		$('.possible_type').empty();

		var params = {
            mode: 'check_order_shipping_delivery_time',
			newZipCode: zonecode,
			roundNumber: '1',
			transportServiceType: 'ONE_DAY_DELIVERY',
        };

		var todayGoodsCnt = '0';
		var defaultGoodsCnt = '2';

		$.ajax({
			method: "POST",
			cache: false,
			async: false,
			url: "../share/mesh_ps.php",
			data: params,
			success: function (data) {
				
				hs_html = '';
				hs_html += '<div class="badge">';

				if(data.meshDeliveryPossible === true){
					hs_html +='<span class="today todayBadge">오늘홈술가능</span>';
				}

				hs_html += '  <span>일반홈술가능</span></div>';
				
				if(data.meshDeliveryPossible === true){
					hs_html += '<dl class="today todayHomesoolPossible"><dt>오늘홈술</dt><dd>(당일배송 / 배송비 3,000원 ㅣ 4만원 이상 무료배송)</dd><dd class="noti" id="todayDeliveryTime"></dd></dl>	';
				}

				hs_html += '<dl class="homesoolPossible"><dt>일반홈술</dt><dd>(일반택배 / 배송비 3,000원 ㅣ 3만원 이상 무료배송)</dd><dd class="noti" id="normalDeliveryTime"></dd></dl>';
				
				$('.possible_type').html(hs_html);
				
				if(data.meshDeliveryPossible === true){
					$('#todayDeliveryTime').hide();
					gd_dailyDeliveryTimer(data.todayDuration, data.todayDeliveryTabDate, "todayDeliveryTime", 'y');
				}
				
				$('#normalDeliveryTime').hide();
				gd_dailyDeliveryTimer(data.defaultDuration, data.defaultDeliveryTabDate, "normalDeliveryTime", 'n');
				

				meshDeliveryPossible = data.meshDeliveryPossible;

			},
			error: function (e) {
			}
		});


		return meshDeliveryPossible;

	}
	
	// 튜닝 : 배송지 시간 2021-08-17
	function gd_dailyDeliveryTimer(duration,nextDuration,contentsId, deliveryPossible) {
		
		clearInterval(interval);

        var timer = duration;

        var days,hours, minutes, seconds, addText;
		
		if(contentsId == 'todayDeliveryTime') addText = nextDuration+ " 오후 09시까지 도착 예정";
		else if(contentsId == 'normalDeliveryTime') addText = nextDuration + " 출고 예정";
		
        var interval = setInterval(function(){
            days	= parseInt(timer / 86400, 10);
            hours	= parseInt(((timer % 86400 ) / 3600), 10);
            minutes = parseInt(((timer % 3600 ) / 60), 10);
            seconds = parseInt(timer % 60, 10);
			pres = '';

            if(days ==0) {
            } else {
                days 	= days < 10 ? "0" + days : days;
				pres = days + "일";
            }

            hours 	= hours < 10 ? "0" + hours : hours;
            minutes = minutes < 10 ? "0" + minutes : minutes;
            seconds = seconds < 10 ? "0" + seconds : seconds;
			
			var deliveryText = '';
			deliveryText = "- "+pres + " " + hours + ":"+minutes + ":"+seconds + " 내 주문시, "+ addText;
	
            $('#'+contentsId).text(deliveryText);
            $("#"+contentsId).show();

            if (--timer < 0) {

				var params = {
					mode: 'get_delivery_time',
					deliveryPossible: deliveryPossible,
				};

				jQuery.ajax({
					url : '../share/mesh_ps.php',
					type : 'POST',
					dataType:'json',
					data: params,
					async: false,					
					success : function(result) {	
						
						timer = result.nextDuration;	
						

						
						if(contentsId == 'todayDeliveryTime') addText = result.nextDate + " 오후 09시까지 도착 예정";
						else if(contentsId == 'normalDeliveryTime') addText = result.nextDate + " 출고 예정";
					
						//$('#shipping-info-arrival-'+sno).text(addText);
					}

				});
			
            }
        }, 1000);

    }

    /**
     * 국가에 따른 해외 배송비 가져오기
     */
    function gd_get_delivery_country_charge()
    {
        // 국제 전화번호 셀렉트
        $('select[name=receiverPhonePrefixCode]').val($('select[name=receiverCountryCode]').val()).trigger('chosen:updated');
        $('select[name=receiverCellPhonePrefixCode]').val($('select[name=receiverCountryCode]').val()).trigger('chosen:updated');

        // 배송비 가져오기
        var cartIdx = [];
        $('input[name="cartSno[]"]').each(function(idx){
            cartIdx.push($(this).val());
        });
        var params = {
            mode: 'check_country_delivery',
            countryCode: $('select[name=receiverCountryCode]').val(),
            cartSno: cartIdx,
        };
        $.post('cart_ps.php', params, function(data){
            // 배송비 계산
            if (data.error === 1) {
                data.overseasDelivery = 0;
                data.overseasInsuranceFee = 0;
                alert(data.message);
            }

            $('#totalDeliveryCharge').text(gd_money_format(data.overseasDelivery));
            $('#totalDeliveryChargeAdd').text(gd_add_money_format(data.overseasDelivery));
            $('input[name=totalDeliveryCharge]').val(data.overseasDelivery);
            $('input[name=deliveryInsuranceFee]').val(data.overseasInsuranceFee);
            gd_set_real_settle_price();
        });
    }

    /**
     * 주문고객 정보와 배송지 정보 동일 처리
     */
    function gd_order_info_same()
    {
        var orderKey = new Array('orderName', 'orderCountryCode', 'orderZonecode', 'orderZipcode', 'orderState', 'orderCity', 'orderAddress', 'orderAddressSub', 'orderPhonePrefixCode', 'orderPhone', 'orderCellPhonePrefixCode', 'orderCellPhone');
        var receiverKey = new Array('receiverName', 'receiverCountryCode', 'receiverZonecode', 'receiverZipcode', 'receiverState', 'receiverCity', 'receiverAddress', 'receiverAddressSub', 'receiverPhonePrefixCode', 'receiverPhone', 'receiverCellPhonePrefixCode', 'receiverCellPhone');
        var sameCheck = $('#shippingSameCheck:checked').val();

        if (sameCheck == 'on') {
            var standardKey = orderKey;
        } else {
            var standardKey = receiverKey;
        }

        for (var i = 0; i < standardKey.length; i++) {
            var orderObj = $('select[name=\''+orderKey[i]+'\']:eq(0), input[name=\''+orderKey[i]+'\']:eq(0)');
            var receiverObj = $('select[name=\''+receiverKey[i]+'\']:eq(0), input[name=\''+receiverKey[i]+'\']:eq(0)');
            if (sameCheck == 'on') {
                if (_.isUndefined(orderObj.val())) {
                    continue;
                }

                // 값 입력
                receiverObj.val(orderObj.val());

                // 셀렉트박스 동적 업데이트 처리
                if (receiverObj[0].tagName == 'SELECT') {
                    receiverObj.trigger("chosen:updated");
                }

                if (receiverKey[i] == 'receiverZipcode' && orderObj.val() !='') {
                    $('input[name=receiverZipcode]').val(orderObj.val());
                }
            } else {
                if (_.isUndefined(receiverObj.val())) {
                    continue;
                }

                // 값 삭제
                receiverObj.val('');

                // 셀렉트박스 동적 업데이트 처리
                if (receiverObj[0].tagName == 'SELECT') {
                    receiverObj.trigger("chosen:updated");
                }

				// 튜닝 : 홈술 배송정보 초기화 2021-08-17
				$('.possible_type').html('');
            }
        }
		

        // 지역별 배송비 실시간 추가
        $('input[name=receiverAddress], input[name=receiverAddressSub]').trigger('blur');
    }

    /**
     * 배송지관리 주소 가져와 입력하기
     *
     * @param data
     */
    function gd_set_delivery_shipping_address(data, shippingNo)
    {
        if (!_.isUndefined(data.shippingName)) {
            var nameTails = '';
            if (shippingNo > 0) {
                nameTails = 'Add[' + shippingNo + ']';
            }

            $('input[name="receiverName' + nameTails + '"]').val(data.shippingName);
            $('input[name="receiverZonecode' + nameTails + '"]').val(data.shippingZonecode);
            $('select[name="receiverCountryCode' + nameTails + '"]').val(data.shippingCountryCode).trigger('chosen:updated');
            $('input[name="receiverCity' + nameTails + '"]').val(data.shippingCity);
            $('input[name="receiverState' + nameTails + '"]').val(data.shippingState);
            $('input[name="receiverAddress' + nameTails + '"]').val(data.shippingAddress);
            $('input[name="receiverAddressSub' + nameTails + '"]').val(data.shippingAddressSub);
            $('input[name="receiverPhonePrefixCode' + nameTails + '"]').val(data.shippingPhonePrefixCode).trigger('chosen:updated');
            $('input[name="receiverPhone' + nameTails + '"]').val(data.shippingPhone);
            $('input[name="receiverCellPhonePrefixCode' + nameTails + '"]').val(data.shippingCellPhonePrefixCode).trigger('chosen:updated');
            $('input[name="receiverCellPhone' + nameTails + '"]').val(data.shippingCellPhone);

            if (data.shippingZipcode !='') {
                $('input[name="receiverZipcode' + nameTails + '"]').val(data.shippingZipcode);
            }

            // 지역별 배송비 실시간 추가
            $('input[name="receiverAddress' + nameTails + '"], input[name="receiverAddressSub' + nameTails + '"]').trigger('blur');
        }
    }

    /**
     * 현재 결제 금액 체크
     * 우선순위 : 지역배송비 > 주문쿠폰 > 배송비쿠폰 > 마일리지 > 예치금
     *
     * @param exceptMode 제외할 모드
     */
    function gd_set_real_settle_price(exceptMode, isTax)
    {
        // 상품 금액
        var goodsPrice = parseFloat('42680');
        // 배송비
        var deliveryPrice = parseFloat($('input[name=totalDeliveryCharge]').val());
        // 전체 금액
        var settlePrice = goodsPrice + deliveryPrice;
        // 상품 할인 차감
        var goodsDcPrice = parseFloat('0');
        if (goodsDcPrice > 0) {
            settlePrice = settlePrice - goodsDcPrice;
        }
        // 상품 쿠폰 차감
            var goodsCouponDcPrice = parseFloat($('input[name=totalCouponGoodsDcPrice]').val());
        if (goodsCouponDcPrice > 0) {
            settlePrice = settlePrice - goodsCouponDcPrice;
        }

        // 마이앱 할인 차감
        var myappDcPrice = parseFloat('0');
        if (myappDcPrice > 0) {
            settlePrice = settlePrice - myappDcPrice;
        }

        // 회원 할인 차감
        var totalMemberDcPrice = parseFloat($('input[name=totalMemberDcPrice]').val());
        var totalMemberOverlapDcPrice = parseFloat($('input[name=totalMemberOverlapDcPrice]').val());
        var totalSettlePrice = parseFloat(settlePrice) - totalMemberDcPrice - totalMemberOverlapDcPrice;

        // 실제 결제금액
        var realSettlePrice = totalSettlePrice;

        // 지역별 배송비 합산
        if ($('input[name=deliveryAreaCharge]').val() > 0) {
            var deliveryAreaCharge = parseInt($('input[name=deliveryAreaCharge]').val());
            realSettlePrice += deliveryAreaCharge;
            $('#deliveryAreaCharge').text(numeral(deliveryAreaCharge).format());
            $('#rowDeliverAreaCharge').removeClass('dn');
        } else {
            $('#deliveryAreaCharge').text(numeral(0).format());
            $('#rowDeliverAreaCharge').addClass('dn');
        }

        // 배송비 무료 차감


        // 해외배송 보험료 합산
        if ($('input[name=deliveryInsuranceFee]').val() > 0) {
            var deliveryInsuranceFee = parseInt($('input[name=deliveryInsuranceFee]').val());
            realSettlePrice += deliveryInsuranceFee;
            $('#deliveryInsuranceFee').text(gd_money_format(deliveryInsuranceFee));
            $('#deliveryInsuranceFeeAdd').text(gd_add_money_format(deliveryInsuranceFee));
            $('#rowDeliveryInsuranceFee').removeClass('dn');
        } else {
            $('#deliveryInsuranceFee').text(numeral(0).format());
            $('#rowDeliveryInsuranceFee').addClass('dn');
        }

        if (exceptMode != 'coupon') {
            // 쿠폰기본설정에서 쿠폰만 사용일때 처리
            if ($('input[name="chooseCouponMemberUseType"]').val() == 'coupon' && $('input[name="couponApplyOrderNo"]').val() != '') {
                var memberDcPrice = totalMemberDcPrice + totalMemberOverlapDcPrice;
                if (memberDcPrice > 0) {
                    realSettlePrice += memberDcPrice;
                }
            }

            // 주문쿠폰 적용 금액
            if ($('input[name="totalCouponOrderDcPrice"]').val() > 0) {
                var originOrderPrice = 42680 - totalMemberDcPrice - totalMemberOverlapDcPrice;
                var originOrderPriceWithoutMember = 42680;
                // 쿠폰기본설정에서 쿠폰만 사용일때 처리
                if ($('input[name="chooseCouponMemberUseType"]').val() == 'coupon' && $('input[name="couponApplyOrderNo"]').val() != '') {
                    originOrderPrice = originOrderPriceWithoutMember;
                }

                if (!_.isUndefined(originOrderPrice) && $('input[name="totalCouponOrderPrice"]').val() > originOrderPrice) {
                    var useTotalCouponOrderDcPrice = parseFloat(originOrderPrice);
                } else {
                    var useTotalCouponOrderDcPrice = parseFloat($('input[name="totalCouponOrderPrice"]').val());
                }
                $('input[name="totalCouponOrderDcPrice"]').val(useTotalCouponOrderDcPrice);
                $('#useDisplayCouponDcPrice').text(numeral(useTotalCouponOrderDcPrice).format());
            } else {
                var useTotalCouponOrderDcPrice = 0;
            }

            // 배송비쿠폰 적용 금액
            if ($('input[name="totalCouponDeliveryDcPrice"]').val() > 0) {
                var originDeliveryCharge = numeral().unformat($('#totalDeliveryCharge').text()) + numeral().unformat($('#deliveryAreaCharge').text());
                if (!_.isUndefined($('input[name="deliveryFree"]')) && $('input[name="deliveryFree"]').val() == 'y') {
                    originDeliveryCharge -= numeral().unformat($('#totalDeliveryCharge').text());
                }
                if (!_.isUndefined(originDeliveryCharge) && $('input[name="totalCouponDeliveryPrice"]').val() > originDeliveryCharge) {
                    var useTotalCouponDeliveryDcPrice = parseFloat(originDeliveryCharge);
                } else {
                    var useTotalCouponDeliveryDcPrice = parseFloat($('input[name="totalCouponDeliveryPrice"]').val());
                }
                $('input[name="totalCouponDeliveryDcPrice"]').val(useTotalCouponDeliveryDcPrice);
                $('#useDisplayCouponDelivery').text(numeral(useTotalCouponDeliveryDcPrice).format());
            } else {
                var useTotalCouponDeliveryDcPrice = 0;
            }

            // 실 결제금액
            realSettlePrice -= (useTotalCouponOrderDcPrice + useTotalCouponDeliveryDcPrice);
        }

        if (exceptMode != 'mileage') {
            // 구매자가 작성한 마일리지 금액
            if ($('input[name=\'useMileage\']').val() > 0) {
                var useMileage = parseInt($('input[name=\'useMileage\']').val());
            } else {
                var useMileage = 0;
            }


            realSettlePrice -= useMileage;
        }


        // 금액 화면 출력
        if (_.isUndefined(exceptMode)) {
            $('#totalSettlePrice').html(gd_money_format(realSettlePrice));
            $('#totalAddSettlePrice').html(gd_add_money_format(realSettlePrice));
            $('#totalSettlePriceView').html(gd_money_format(realSettlePrice));
            $('#totalAddSettlePriceView').html(gd_add_money_format(realSettlePrice));
            $('input[name=settlePrice]').val(realSettlePrice);

            // 해외PG 최종승인 금액 및 통화 설정
            var settleKind = $('input[name=settleKind]:checked').val();
            if (!_.isUndefined(settleKind)) {
                if (settleKind.substring(0, 1) == 'o') {
                    var selectedOverseasSettleKind = $('[id=settlekind_overseas_' + settleKind + ']');
                    var overseasSettlePrice = fx.convert($('input[name=settlePrice]').val(), {to: selectedOverseasSettleKind.data('settle-currency')});
                    var overseasDecimal = selectedOverseasSettleKind.data('settle-decimal');
                    var overseasDecimalFormat = selectedOverseasSettleKind.data('settle-format');
                    $('#overseasSettelprice_' + settleKind).html(selectedOverseasSettleKind.data('settle-symbol') + ' ' + numeral(overseasSettlePrice.toRealFixed(overseasDecimal, overseasDecimalFormat)).format('0,' + overseasDecimalFormat));
                    $('input[name=overseasSettlePrice]').val(overseasSettlePrice.toRealFixed(overseasDecimal, overseasDecimalFormat));
                    $('input[name=overseasSettleCurrency]').val(selectedOverseasSettleKind.data('settle-currency'));
                }
            }

            // 금액이 0원이 되는 경우에 대한 처리
            if (realSettlePrice == 0) {
                $('.payment_progress .payment_progress_list').hide();
            } else {
                $('.payment_progress .payment_progress_list').show();
            }
        }

        // 세금계산서 가능여부 노출 (세금정보 조건에 따라 실결제금액이 0원인 경우 세금계산서 발행 불가 처리)
        var taxRealSettlePrice = realSettlePrice;
        var taxMileageFl = 'n',
            taxDepositFl = 'n',
            taxDeliveryFl = 'n';

        if (taxMileageFl == 'y') {
            taxRealSettlePrice += numeral().unformat($('input[name="useMileage"]').val());
        }

        if (taxDepositFl == 'y') {
            taxRealSettlePrice += numeral().unformat($('input[name="useDeposit"]').val());
        }

        if (taxDeliveryFl == 'n') {
            taxRealSettlePrice -= numeral().unformat($('#totalDeliveryCharge').text());
        }

        if (taxRealSettlePrice <= 0) {
            $('#taxReceiptView').hide();
        } else {
            $('#taxReceiptView').show();
        }

        return realSettlePrice;
    }

    function gd_mileage_disable_check(disableValue)
    {
        if(disableValue === 'y'){
            //disable 처리
            $('input[name=\'useMileage\'], #useMileageAll').closest('span').addClass('disabled');
            $('input[name=\'useMileage\'], #useMileageAll').attr('disabled', 'disabled');
        }
        else {
            //disable 해제
            $('input[name=\'useMileage\'], #useMileageAll').closest('span').removeClass('disabled');
            $('input[name=\'useMileage\'], #useMileageAll').attr('disabled', false);
        }
    }

    /**
     * 마일리지 안내문구 출력
     */
    function gd_mileage_info_write(message)
    {
        var prefixMessage = "※ ";
        var addHtml = '<span>';
        for(i=0; i<message.length; i++) {
            addHtml += prefixMessage + message[i] + "<br/>";
        }
        addHtml += '</span>';
        $(".js-mileageInfoArea").html(addHtml);
    }

    /**
     * 마일리지 사용 제한 체크
     */
    function gd_mileage_use_check(setUseOption, setUseCheck, setUseCalculationFl)
    {
        mileageUse.minimumHold = parseInt(mileageUse.minimumHold);
        mileageUse.minimumLimit = parseInt(mileageUse.minimumLimit);
        mileageUse.orderAbleLimit = parseInt(mileageUse.orderAbleLimit);
        mileageUse.orderAbleStandardPrice = parseInt(mileageUse.orderAbleStandardPrice);
        mileageUse.maximumLimit = parseInt(mileageUse.maximumLimit);
        mileageUse.oriMaximumLimit = parseInt(mileageUse.oriMaximumLimit);

        // 회원 보유 마일리지
        var memMileage = parseInt('0.00');

        // 현재 결제 금액
        var realSettlePrice = gd_set_real_settle_price('mileage');
        // 배송비가 제외된 금액 (할인등은 포함되어 있는 상태)
        var goodsPrice = gd_get_goodsSalesPrice(realSettlePrice);

        // 배송비 포함 여부를 통해 비교 결제금액을 정의
        if(mileageUse.useDeliveryFl === 'n'){
            var realSettleDeliveryPrice = goodsPrice;
        }
        else {
            var realSettleDeliveryPrice = realSettlePrice;
        }

        // 실제 사용할 수 있는 최소 마일리지
        var realMinMileage = parseInt(Math.min(mileageUse.minimumLimit, realSettleDeliveryPrice));

        // 실제 사용 할 수 있는 최대 마일리지 ( ex: 배송비를 제외한 상품 함계급액이 2000원, 회원 마일리지 5000원일시 2000원 까지 사용 가능)
        var realMaxMileage = parseInt(Math.min(mileageUse.maximumLimit, realSettleDeliveryPrice, memMileage));

        // 마일리지 사용 불가능한 상태의 input 을 입력방지
        if(mileageUse.usableFl === 'n'){
            gd_mileage_disable_check('y');
        }
        else {
            gd_mileage_disable_check('n');
        }

        // 마일리리 사용 가능, 사용 불가 이유 문구 출력 수정을 위함.
        var gdArrMileageWrite =  new Array();

        // 마일리지 "최소 상품구매금액 제한"에 따른 플래그값
        var fl = 'n';

        // 마일리지 "최소 상품구매금액 제한"에 따른 마일리지 사용 조건 체크
        if(mileageUse.orderAbleLimit > 0){
            // orderAbleStandardPrice : 기본설정의 구매금액 기준 + 사용설정의 할인금액 미포함, 포함 가격이 적용된 기준
            if(mileageUse.orderAbleStandardPrice < mileageUse.orderAbleLimit){
                fl = 'y';
            }
        }

        // *** 1. 보유 마일리지에 대한 제한조건 체크

        // 회원 보유 마일리지 체크
        if(memMileage < 1){
            gd_mileage_disable_check('y');
            return;
        }

        // 마일리지 사용설정 - 최소 보유마일리지 제한
        if(mileageUse.minimumHold > 0){
            // '회원 보유마일리지'가 '최소 보유마일리지 제한' 보다 작을 경우
            if(memMileage < mileageUse.minimumHold){
                if(mileageUse.minimumLimit <= mileageUse.minimumHold){
                    gdArrMileageWrite.push("0원이상 보유해야 사용이 가능합니다.");
                }
                else {
                    // '최소 사용마일리지 제한' > '최소 보유마일리지 제한' > 회원 보유 마일리지
                    gdArrMileageWrite.push("최소 0원이상 사용해야 합니다.");
                }
                if(fl == 'y') {
                    gdArrMileageWrite.push(gd_mileage_goods_total_check_message());
                }
                gd_mileage_info_write(gdArrMileageWrite);
                gd_mileage_disable_check('y');
                return;
            }
        }

        // 마일리지 사용설정 - 최소 사용마일리지 제한
        if(mileageUse.minimumLimit > 0){
            // '회원 마일리지' 보다 '최소 사용마일리지 제한' 보다 작을 경우
            if(memMileage < mileageUse.minimumLimit){
                if(mileageUse.minimumHold <= mileageUse.minimumLimit){
                    gdArrMileageWrite.push("최소 0원이상 사용해야 합니다.");
                }
                else {
                    // '최소 보유마일리지 제한' > '최소 사용마일리지 제한' > 회원 보유 마일리지
                    gdArrMileageWrite.push("0원이상 보유해야 사용이 가능합니다.");
                }
                if(fl == 'y') {
                    gdArrMileageWrite.push(gd_mileage_goods_total_check_message());
                }
                gd_mileage_info_write(gdArrMileageWrite);
                gd_mileage_disable_check('y');
                return;
            }
        }

        // 마일리지 사용설정 - 최소 사용마일리지 제한
        if(mileageUse.minimumLimit > 0){
            // 결제금액이 '최소 사용마일리지 제한' 보다 작을 경우
            if(realSettleDeliveryPrice < mileageUse.minimumLimit){
                var messageMaxMileage = memMileage;
                if(mileageUse.oriMaximumLimit > 0){
                    if(mileageUse.oriMaximumLimit > realSettleDeliveryPrice){
                        messageMaxMileage = Math.min(mileageUse.oriMaximumLimit, memMileage);
                    }
                }
                gdArrMileageWrite.push(__('%1$s%2$s부터 %3$s%4$s까지 사용 가능합니다.', [numeral(mileageUse.minimumLimit).format(), '원', numeral(messageMaxMileage).format(), '원']));
                if(fl == 'y') {
                    gdArrMileageWrite.push(gd_mileage_goods_total_check_message());
                }
                gd_mileage_info_write(gdArrMileageWrite);
                gd_mileage_disable_check('y');
                return;
            }
        }

        // *** 3. 사용가능 마일리지 범위 정보 노출

        if(realMinMileage > realMaxMileage){
            //최소 사용가능 마일리지가 최대 사용가능 마일리지보다 클때
            gdArrMileageWrite.push("마일리지 사용조건이 충족되지 않아 사용이 불가합니다.");
            gd_mileage_info_write(gdArrMileageWrite);
            gd_mileage_disable_check('y');
            return;
        }
        else if(realMinMileage === realMaxMileage){
            //최소 사용가능 마일리지가 최대 사용가능 마일리지와 같을때
            gdArrMileageWrite.push(__('%1$s%2$s만 사용 가능합니다.', [numeral(realMaxMileage).format(), '원']));
            gd_mileage_disable_check('n');
            if(fl == 'y') {
                gdArrMileageWrite.push(gd_mileage_goods_total_check_message());
                gd_mileage_disable_check('y');
            }
            gd_mileage_info_write(gdArrMileageWrite);

        }
        else {
            //최소 사용가능 마일리지가 최대 사용가능 마일리지보다 작을때
            if(realMinMileage < 1){
                gdArrMileageWrite.push(__('%1$s%2$s까지 사용 가능합니다.', [numeral(realMaxMileage).format(), '원']));
            }
            else {
                gdArrMileageWrite.push(__('%1$s%2$s부터 %3$s%4$s까지 사용 가능합니다.', [numeral(realMinMileage).format(), '원', numeral(realMaxMileage).format(), '원']));
            }
            gd_mileage_disable_check('n');
            if(fl == 'y') {
                gdArrMileageWrite.push(gd_mileage_goods_total_check_message());
                gd_mileage_disable_check('y');
            }
            gd_mileage_info_write(gdArrMileageWrite);

        }

        // *** 4. 사용가능 마일리지 범위 체크 및 결제금액 계산

        if(setUseOption === 'y'){
            var useMileage = parseInt($('input[name=\'useMileage\']').val());

            if(setUseCheck === 'y'){
                if(useMileage < realMinMileage){
                    gd_mileage_abort(__('%1$s 사용은 최소 %2$s%3$s입니다.', ['적립금', numeral(realMinMileage).format(), '원']), realMinMileage);
                }
                if(useMileage > realMaxMileage){
                    gd_mileage_abort(__('%1$s 사용은 최대 %2$s%3$s입니다.', ['적립금', numeral(realMaxMileage).format(), '원']), realMaxMileage);
                }
            }
            else {
                if(useMileage < realMinMileage){
                    $('input[name=\'useMileage\']').val(realMinMileage);
                }
                else if(useMileage > realMaxMileage){
                    $('input[name=\'useMileage\']').val(realMaxMileage);
                }
                else { }
            }

            if(setUseCalculationFl === 'y'){
                // 결제 금액 계산
                gd_set_recalculation();
                gd_set_real_settle_price();
            }
        }
    }

    /**
     * 마일리지 "최소 상품구매금액 제한" 문구 반복 출력을 위함.
     */
    function gd_mileage_goods_total_check_message()
    {
        return ("상품 합계 금액이 5,000원 이상인 경우에만 사용 가능합니다.");
    }

    /**
     * 마일리지를 잘못 입력한 경우 처리
     */
    function gd_mileage_abort(message, useMileage)
    {
        // 경고출력
        if (!_.isUndefined(message) && message !== null) {
            alert(message);
        }

        // 값 대입
        if (_.isUndefined(useMileage)) {
            $('input[name=\'useMileage\']').val('');
        } else {
            $('input[name=\'useMileage\']').val(useMileage);
        }
    }

    /**
     * 마일리지 전액 사용하기
     */
    function gd_mileage_use_all()
    {
        // 마일리지 쿠폰 중복사용 체크
        var checkMileageCoupon = gd_choose_mileage_coupon('mileage');
        if (!checkMileageCoupon) {
            return false;
        }
        var allCheck = $('#useMileageAll:checked').val();

        // 현재 결제 금액
        var realSettlePrice = gd_set_real_settle_price('mileage');
        if(mileageUse.useDeliveryFl === 'n'){
            // 마일리지 사용의 배송비 제외 설정에 따른 배송비 체크
            realSettlePrice = gd_get_goodsSalesPrice(realSettlePrice);
        }

        var memberMileage = parseInt("0.00");
        var checkMileage = Math.min(mileageUse.maximumLimit, realSettlePrice, memberMileage);

        if (allCheck == 'on') {
            $('input[name=\'useMileage\']').val(checkMileage);

            gd_mileage_use_check('y', 'y', 'y');
        }
        else {
            $('input[name=\'useMileage\']').val('');

            gd_set_recalculation();
            gd_set_real_settle_price();
        }
    }


    /**
     * 결제 방법에 따른 결제 수단
     */
    function gd_settlekind_toggle()
    {
        // 초기 결제수단 처리
        var settleKind = $('#settlekind_general').find('input').first().val();
        $('#settlekind_general').find('input').first().prop('checked', true);
        $('label[for=settleKind_' + settleKind + ']').addClass('on')

    // 결제수단 선택
    gd_settlekind_selector(settleKind);
    }

    /**
     * 결제 수단을 초기화
     */
    function gd_payment_reset()
    {
        // 주문 채널을 기본 shop 으로 처리
        $('[name="orderChannelFl"]').val('shop');

    }

    /**
     * PAYCO 결제 클릭시
     */
    function gd_payco_toggle(settleKind)
    {
        // 초기화
        gd_payment_reset()

        // 주문 채널
        $('[name="orderChannelFl"]').val('payco');

        // 해당 주문 체크
        $('#settleKind_payco_' + settleKind).prop('checked', true).next('label').addClass('on');

        // 다른 주문 체크 해제
        $('label[for*=settleKind_][class="choice_s on"]').each(function(i, val) {
            $(this).removeClass('on');
        });


        // 결제방법 체크
        gd_settlekind_selector(settleKind);
    }

    /**
     * 결제수단 선택
     *
     * @param settleKind
     * @returns 
     */
    function gd_settlekind_selector(settleKind)
    {
        // 결제수단 값이 없는 경우 반드시 해당 settleKind를 radio 버튼에 checked 표기 해줘야 한다.
        // 만약 이부분 누락되면 결제수단 카드로 열리는 경우가 발생
        if (_.isUndefined(settleKind)) {
            settleKind = $('label[for*=settleKind_][class="choice_s on"]').prev('input[type=radio]').val();
            $('label[for*=settleKind_][class="choice_s on"]').prev('input[type=radio]').prop('checked', true);
        }

        // 결제수단 선택에 따른 입력 폼 전환
        $('[id*="settlekind_general_"]').hide();
        $('[id*="settlekind_overseas_"]').hide();

        if ($('[name="orderChannelFl"]').val() == 'shop') {
            // 일반 PG 안내 / 설정
            $('[id=settlekind_general_' + settleKind + ']').show();

            // 해외PG 최종승인 금액 및 통화 설정 (국가 변경시 배송비 실시간 적용 처리)
            if (settleKind.substring(0, 1) == 'o') {
                // 해외 PG 안내 / 설정
                $('[id=settlekind_overseas_' + settleKind + ']').show();
                gd_set_real_settle_price();
            }
        }

        // 영수증 선택 리셋
        gd_receipt_reset();

        // 영수증 선택
        gd_receipt_selector();
    }

    /**
     * 영수증 선택 리셋
     * - 우선 처리 모드에 따라서 영수증 종류 기본 선택 처리
     */
    function gd_receipt_reset()
    {
        // 선택된 결제 방법
        var strSettleKind = $('input[name=settleKind]:checked').val();

        // 현금영수증 (소득공제/지출증빙) 보이지 않도록 강제 처리
        $('input[name="receiptFl"]').prop('checked', false).next('label').removeClass('on');

        // 영수증 신청 안함 보이게 처리
        $('#nonReceiptView').show();

        // 사용 안함을 기본 체크 처리
        if (strSettleKind.substring(0, 1) != 'g' || 'n' == 'n'){
        $('#receiptNon').eq(0).prop('checked', true).next('label').addClass('on');
    }

    }

    /**
     * 영수증 선택
     *
     * @param string mode 모드에 따른 처리 (null : 일반 처리, zero : 전액결제 처리)
     */
    function gd_receipt_selector(mode)
    {
        var useReceiptCode = {"0":"gb","5":"gz"};
        var useCashReceiptCode = 'gb';
        var strSettleKind = $('input[name=settleKind]:checked').val();

        $('#receiptSelect').hide();
        if (typeof strSettleKind != 'undefined') {
            $.each(useReceiptCode, function(i, val) {
                if (strSettleKind == val) {
                    $('#receiptSelect').show();
                    return false;
                }
            });
        }

        // 전액 결제인 경우 영수증 항목 보이기
        if (mode == 'zero') {
            $('#receiptSelect').show();
        }

        // 영수증 관련 선택
        gd_receipt_display();

        // 현금 영수증 설정 (무통장입금인 경우에만 출력, 계좌이체와 가상계좌는 PG사 창에서 처리)
        if (strSettleKind == useCashReceiptCode) {
            $('#cashReceiptView').show();
            $('.cash_receipt_non').show();
            $('.cash_receipt_pg').hide();
        } else {
            $('#cashReceiptView').hide();
            $('.cash_receipt_non').hide();
            $('.cash_receipt_pg').show();
        }

        // 전액 결제인 경우 영수증 항목 보이기
        if(mode == 'zero') {
            $('#cashReceiptView').hide();
            $('.cash_receipt_non').show();
            $('.cash_receipt_pg').hide();
        }

    }

    /**
     * 영수증 관련 선택
     *
     * @param string clearChecker 해제 관련
     */
    function gd_receipt_display()
    {
        var useCode = {
            t: 'tax_info',
            r: 'cash_receipt_info'
        };
        var checkedBox = $('input[name=receiptFl]:checked');
        var target = eval('useCode.' + checkedBox.val());

        $('.js_receipt').addClass('dn');
        $('#' + target).removeClass('dn');

        if (checkedBox.val() == 'r') {
            gd_cash_receipt_toggle();
        }

    }

    /**
     * 현금영수증 인증방법 선택
     * (소득공제용 - 휴대폰 번호(c), 지출증빙용 - 사업자번호(b))
     */
    function gd_cash_receipt_toggle()
    {
        var certCode = $('input[name=\'cashUseFl\']:checked').val();
        $('label[for=cashCert_' + certCode + ']').addClass('on');

        if (certCode == 'd') {
            $('input[name=\'cashCertFl\']').val('c');
            $('#certNoHp').show();
            $('#certNoBno').hide();
        } else {
            $('input[name=\'cashCertFl\']').val('b');
            $('#certNoHp').hide();
            $('#certNoBno').show();
        }
    }

    /**
     * 주문시 Exception 발생하는 경우 결제버튼 복원
     */
    function callback_not_ordable()
    {
        $('.order-buy').prop("disabled", false);
        $('.order-buy em').html("결제하기");
    }

    /**
     * validator onkeyup 함수
     * @param element
     * @param event
     * @returns 
     */
    function onkeyup(element, event) {
        if (check_key_code2(event)) {
            return true;
        }
        if ($.isFunction(replace_keyup[$(element).data('pattern')])) {
            replace_keyup[$(element).data('pattern')](element);
        }
    }

    var regexp_test = function (string, pattern) {
        if (string === undefined || string.length < 1) {
            return false;
        }
        return pattern.test(string);
    };

    var replace_pattern = function (string, pattern, c) {
        if (string === undefined || string.length < 1) {
            return '';
        }
        return string.replace(pattern, c);
    };

    var replace_keyup = {
        gdEngNum: function (element) {
            element.value = replace_pattern(element.value, /[^\da-zA-Z]/g, '');
        },
        gdEngKor: function (element) {
            // IE11에서 초중종성 분리되는 현상때문에 test 후 replace 처리로 변경
            if (regexp_test(element.value, /[^a-zA-Zㄱ-ㅎㅏ-ㅣ가-힣\u119E\u11A2\u318D\u2022\u2025a\u00B7\uFE55]/)) {
                element.value = replace_pattern(element.value, /[^a-zA-Zㄱ-ㅎㅏ-ㅣ가-힣\u119E\u11A2\u318D\u2022\u2025a\u00B7\uFE55]/g, '');
            }
        },
        gdEngKorNum: function (element) {
            // IE11에서 초중종성 분리되는 현상때문에 test 후 replace 처리로 변경
            if (regexp_test(element.value, /[^a-zA-Zㄱ-ㅎㅏ-ㅣ가-힣0-9\u119E\u11A2\u318D\u2022\u2025a\u00B7\uFE55]/)) {
                element.value = replace_pattern(element.value, /[^a-zA-Zㄱ-ㅎㅏ-ㅣ가-힣0-9\u119E\u11A2\u318D\u2022\u2025a\u00B7\uFE55]/g, '');
            }

        },
        gdNum: function (element) {
            element.value = replace_pattern(element.value, /[^\d]/g, '');
        },
        gdEng: function (element) {
            element.value = replace_pattern(element.value, /[^a-zA-Z]/g, '');
        },
        gdKor: function (element) {
            if (regexp_test(element.value, /[^가-힣ㄱ-ㅎㅏ-ㅣ\u119E\u11A2\u318D\u2022\u2025a\u00B7\uFE55]/)) {
                element.value = replace_pattern(element.value, /[^가-힣ㄱ-ㅎㅏ-ㅣ\u119E\u11A2\u318D\u2022\u2025a\u00B7\uFE55]/g, '');
            }
        },
        gdMemberId: function (element) {
            element.value = replace_pattern(element.value, /[^\da-zA-Z\.\-_@]/g, '');
        },
        gdMemberNmGlobal: function (element) {
            // IE11에서 초중종성 분리되는 현상때문에 test 후 replace 처리로 변경
            if (regexp_test(element.value, /[\/\'\"\\\|]/)) {
                element.value = replace_pattern(element.value, /[\/\'\"\\\|]/g, '');
            }
        }
    };

    /**
     * jquery validation의 키 체크 함수
     * @param event
     * @returns 
     */
    function check_key_code2(event) {
        // Avoid revalidate the field when pressing one of the following keys
        /* Shift       => 16 Ctrl        => 17 Alt         => 18
         Caps lock   => 20 End         => 35 Home        => 36
         Left arrow  => 37 Up arrow    => 38 Right arrow => 39
         Down arrow  => 40 Insert      => 45 Num lock    => 144 AltGr key   => 225*/
        var excludedKeys = [
            16, 17, 18, 20, 35, 36, 37,
            38, 39, 40, 45, 144, 225
        ];

        return event.which === 9 || $.inArray(event.keyCode, excludedKeys) !== -1;
    }

    function gd_reflect_apply_delivery(mode) {
        switch (mode) {
            case 'shippingBasic':
                $('input[name="reflectApplyDelivery"]').prop('checked', false).closest('div').hide();
                break;
            default:
                $('input[name="reflectApplyDelivery"]').closest('div').show();
                break;
        }

        gd_display_memberinfo_apply();
    }

    /**
     * 마일리지 쿠폰 중복사용 체크
     */
    function gd_choose_mileage_coupon(type) {
        if (type == undefined) {
            return false;
        }

        // 마일리지 쿠폰 중복사용 체크
        if ($('input[name=chooseMileageCoupon]').length > 0) {
            if ($('input[name=chooseMileageCoupon]').val() == 'y') {
                if (type == 'mileage') {
                    // 마일리지 입력시 체크
                    if ($('input[name=totalCouponGoodsDcPrice]').length > 0 && $('input[name=totalCouponGoodsMileage]').length > 0) {
                        var totalCouponGoodsDcPrice = $('input[name=totalCouponGoodsDcPrice]').val();
                        var totalCouponGoodsMileage = $('input[name=totalCouponGoodsMileage]').val();

                        if (totalCouponGoodsDcPrice > 0 || totalCouponGoodsMileage > 0 || ($('input[name=couponApplyOrderNo]').val() != '' && $('input[name=couponApplyOrderNo]').length > 0)) {
                            alert('마일리지와 쿠폰은 동시에 사용하실 수 없습니다.');
                            $('input[name=useMileage]').val('');
                            $("#useMileageAll").attr('checked', false);
                            $('label[for=useMileageAll]').removeClass('on');
                            return false;
                        }
                    }
                } else {
                    // 쿠폰사용 클릭시 체크
                    if ($('input[name=useMileage]').val() != '' && $('input[name=useMileage]').val() != 0) {
                        alert('마일리지와 쿠폰은 동시에 사용하실 수 없습니다.');
                        return false;
                    }
                }
            }
        }

        return true;
    }

    // 주문서 변경에 따른 상품 금액 정보 변경 처리
    function gd_set_recalculation()
    {
        // 마일리지 사용시 / 주문쿠폰 적용시 재계산
        var cartIdx = [];
        $('input[name="cartSno[]"]').each(function(idx){
            cartIdx.push($(this).val());
        });
        $.ajax({
            method: "POST",
            data: {
                'mode': 'set_recalculation',
                'cartIdx': cartIdx,
                'totalCouponOrderDcPrice': $('input:hidden[name="totalCouponOrderDcPrice"]').val(),
                'deliveryFree': $('input:hidden[name="deliveryFree"]').val(),
                'useMileage': $('input[name="useMileage"]').val(),
                'totalDeliveryCharge' : $('input[name=totalDeliveryCharge]').val(),
                'deliveryAreaCharge' : $('input[name=deliveryAreaCharge]').val(),
            },
            cache: false,
            async: false,
            url: "../order/order_ps.php",
            success: function (data) {
                if (data) {
                    var totalGoodsDcPrice = data.totalGoodsDcPrice;
                    var totalSumMemberDcPrice = data.totalMemberDcPrice + data.totalMemberOverlapDcPrice;
                    var totalCouponGoodsDcPrice = data.totalCouponGoodsDcPrice;
                    var totalMemberMileage = data.totalMemberMileage;
                    var totalGoodsMileage = data.totalGoodsMileage;
                    var totalMileage = data.totalMileage;
                    var totalMyappDcPrice = data.totalMyappDcPrice;

                    var totalMemberDcPrice = totalGoodsDcPrice + totalSumMemberDcPrice + totalCouponGoodsDcPrice + totalMyappDcPrice;

                    $('input[name=totalMemberDcPrice]').val(data.totalMemberDcPrice);
                    $('input[name=totalMemberOverlapDcPrice]').val(data.totalMemberOverlapDcPrice);
                    $('input[name=totalMemberMileage]').val(data.totalMemberMileage);
                    $('input[name=totalCouponGoodsDcPrice]').val(totalCouponGoodsDcPrice);


                    $('.total-member-dc-price').html(numeral(totalMemberDcPrice).format());
                    $('.member-dc-price').html(numeral(totalSumMemberDcPrice).format());
                    $('.total-member-mileage').html(numeral(totalMileage).format());
                    $('.goods-mileage').html(numeral(totalGoodsMileage).format());
                    $('.member-mileage').html(numeral(totalMemberMileage).format());

                    var totalDeliveryCharge = data.totalDeliveryCharge;
                    $('.goods-coupon-dc-price').html(numeral(data.totalCouponGoodsDcPrice).format());
                    $('.goods-coupon-add-mileage').html(numeral(data.totalCouponGoodsMileage).format());

                    $('.goods-coupon-dc-price-without-member').html(numeral(data.totalCouponGoodsDcPrice).format());
                    $('.goods-coupon-add-mileage-without-member').html(numeral(data.totalCouponGoodsMileage).format());
                    $('.total-member-dc-price-without-member').html(numeral(data.totalGoodsDcPrice + data.totalCouponGoodsDcPrice + data.totalMyappDcPrice).format());
                    $('.total-member-mileage-without-member').html(numeral(totalMileage).format());

                    $('input[name=totalDeliveryCharge]').val(totalDeliveryCharge);
                    $('#totalDeliveryCharge').html(numeral(parseInt(totalDeliveryCharge)).format());

                    mileageUse = data.mileageUse;
                }
            }
        });
    }

    /**
     * 결제금액에서 상품금액만 구하기 (배송비 제외)
     * @param realSettlePrice
     * @returns {number|*}
     */
    function gd_get_goodsSalesPrice(realSettlePrice)
    {
        var deliveryFreePrice = parseInt($('input[name="totalDeliveryFreePrice"]').val());
        var deliveryPrice = 0;
        if (deliveryFreePrice > 0) {
            var deliveryAreaPrice = parseInt($('input[name="deliveryAreaCharge"]').val());
            var deliveryDcPrice = parseInt($('input[name="totalCouponDeliveryDcPrice"]').val());
            if (deliveryAreaPrice > 0) {
                deliveryPrice = deliveryPrice + deliveryAreaPrice;
            }
            if (deliveryDcPrice > 0) {
                deliveryPrice = deliveryPrice - deliveryDcPrice;
            }
        } else {
            var deliveryBasicPrice = parseInt($('input[name="totalDeliveryCharge"]').val());
            var deliveryAreaPrice = parseInt($('input[name="deliveryAreaCharge"]').val());
            var deliveryDcPrice = parseInt($('input[name="totalCouponDeliveryDcPrice"]').val());
            if (deliveryBasicPrice > 0) {
                deliveryPrice = deliveryPrice + deliveryBasicPrice;
            }
            if (deliveryAreaPrice > 0) {
                deliveryPrice = deliveryPrice + deliveryAreaPrice;
            }
            if (deliveryDcPrice > 0) {
                deliveryPrice = deliveryPrice - deliveryDcPrice;
            }
        }

        realSettlePrice = realSettlePrice - deliveryPrice;

        return realSettlePrice;
    }

    /**
     * 결제 페이지 호출 확인 후 결제
     */
    function pgSettleStartAfterCheck() {
        if (typeof pgSettleStart === 'function') {
            pgSettleStart();
        } else {
            console.log('pgSettle fail');
            return false;
        }
    }


    function gd_display_memberinfo_apply() {
        if ($('#memberinfoApplyTr1').css('display') == 'none' && $('#memberinfoApplyTr2').css('display') == 'none') {
            $('#memberinfoApplyTr').css('display', 'none');
        } else {
            $('#memberinfoApplyTr').css('display', '');
        }
    }


    var resetMileage = function() {
        var cartIdx = [];
        $('input[name="cartSno[]"]').each(function(idx){
            cartIdx.push($(this).val());
        });
        var param = {
            mode: 'set_mileage',
            cartSno: cartIdx,
            totalDeliveryCharge : $('input[name=totalDeliveryCharge]').val(),
            deliveryAreaCharge : $('input[name=deliveryAreaCharge]').val(),
            totalCouponOrderDcPrice: $('input:hidden[name="totalCouponOrderDcPrice"]').val(),
        };
        $.post('cart_ps.php', param, function(data){
            mileageUse = data.mileageUse;

            gd_mileage_use_check('n', 'n', 'n');
        });
    }

    function set_delivery_visit() {
        var deliveryVisitFl = false;
        var deliveryVisit = 'n';
        var visitAddressUseFl;
        var $infoArea = $('.shipping_info_table');
        $.each($("tr.order-goods-layout"), function () {
            if ($(this).find('.delivery-method-fl').val() == 'visit' && $(this).find('.visit-address-use-fl').val() == 'y') {
                deliveryVisitFl = true;
                if (visitAddressUseFl !== false) {
                    visitAddressUseFl = true;
                } else {
                    visitAddressUseFl = false;
                }
            } else {
                visitAddressUseFl = false;
            }
        });

        if (deliveryVisitFl === true) {
            var deliveryMethodVisitArea = '';
            var defaultDeliveryMethodVisitArea = '';
            var deliveryMethodVisitCnt = 0;
            $.each($('.delivery-method-fl'), function(key, target){
                if ($(target).val() == 'visit') {
                    if (!deliveryMethodVisitArea && $.trim($('.delivery-method-visit-area').eq(key).val())) {
                        deliveryMethodVisitArea = defaultDeliveryMethodVisitArea = $('.delivery-method-visit-area').eq(key).val();
                    } else {
                        deliveryMethodVisitCnt++;
                    }
                }
            });
            if (deliveryMethodVisitCnt > 0) {
                deliveryMethodVisitArea = deliveryMethodVisitArea + ' 외 ' + deliveryMethodVisitCnt + '건';
            }

            if (visitAddressUseFl === true) {
                $infoArea.find('tr:not(.orderVisitTr, .select_goods_tr)').addClass('dn');
                deliveryVisit = 'y';
            } else {
                $infoArea.find('tr:not(.orderVisitTr, .select_goods_tr)').removeClass('dn');
                deliveryVisit = 'a';
            }
            $infoArea.find('tr.orderVisitTr, tr.orderVisitTr tr').removeClass('dn');

            $('.delivery-method-visit-area-txt:eq(0)').html(deliveryMethodVisitArea);
            $('input[name="visitAddress"]').val(defaultDeliveryMethodVisitArea);
            $('input[name="visitName"]').val($('input[name="orderName"]').val());
            $('input[name="visitPhone"]').val($('input[name="orderCellPhone"]').val());
        } else {
            $infoArea.find('tr.orderVisitTr').addClass('dn');
            $infoArea.find('tr:not(.orderVisitTr, .select_goods_tr)').removeClass('dn');
            deliveryVisit = 'n';
        }

        $('input[name="deliveryVisit"]').val(deliveryVisit);


        return deliveryVisit;
    }
    set_delivery_visit();

    function set_shipping_delivery_visit(shippingNo) {
        var deliveryVisitFl = false;
        var deliveryVisit = 'n';
        var visitAddressUseFl;
        var $infoArea = $('.shipping_info_table:eq(' + shippingNo + ')');
        if ($('input[name="selectGoods[' + shippingNo + ']"]').val()) {
            var data = $.parseJSON($('input[name="selectGoods[' + shippingNo + ']"]').val());

            for (var i in data) {
                if (data[i]['goodsCnt'] > 0) {
                    if (data[i]['deliveryMethodFl'] == 'visit' && data[i]['visitAddressUseFl'] == 'y') {
                        deliveryVisitFl = true;
                        if (visitAddressUseFl !== false) {
                            visitAddressUseFl = true;
                        } else {
                            visitAddressUseFl = false;
                        }
                    } else {
                        visitAddressUseFl = false;
                    }
                }
            }
        } else {
            $.each($("tr.order-goods-layout"), function () {
                if ($(this).find('.delivery-method-fl').val() == 'visit') {
                    deliveryVisitFl = true;
                    if (visitAddressUseFl !== false && $(this).find('.visit-address-use-fl').val() == 'y') {
                        visitAddressUseFl = true;
                    } else {
                        visitAddressUseFl = false;
                    }
                } else {
                    visitAddressUseFl = false;
                }
            });
        }

        if (deliveryVisitFl === true) {
            var deliveryMethodVisitArea = '';
            var defaultDeliveryMethodVisitArea = '';
            var deliveryMethodVisitCnt = 0;
            for (var i in data) {
                if (data[i]['goodsCnt'] > 0 && data[i]['deliveryMethodFl'] == 'visit') {
                    if (!deliveryMethodVisitArea && $.trim(data[i]['deliveryMethodVisitArea'])) {
                        deliveryMethodVisitArea = defaultDeliveryMethodVisitArea = data[i]['deliveryMethodVisitArea'];
                    } else {
                        deliveryMethodVisitCnt++;
                    }
                }
            }
            if (deliveryMethodVisitCnt > 0) {
                deliveryMethodVisitArea += ' 외 ' + deliveryMethodVisitCnt + '건';
            }

            if (visitAddressUseFl === true) {
                $infoArea.find('tr:not(.orderVisitTr, .select_goods_tr, .add-select-goods-tr)').addClass('dn');
                deliveryVisit = 'y';
            } else {
                $infoArea.find('tr:not(.orderVisitTr, .select_goods_tr, .add-select-goods-tr)').removeClass('dn');
                deliveryVisit = 'a';
            }
            $infoArea.find('tr.orderVisitTr, tr.orderVisitTr tr').removeClass('dn');

            $infoArea.find('.delivery-method-visit-area-txt').html(deliveryMethodVisitArea);
            $infoArea.find('input[name^="visitAddress"]').val(defaultDeliveryMethodVisitArea);
        } else {
            $infoArea.find('tr.orderVisitTr').addClass('dn');
            $infoArea.find('tr:not(.orderVisitTr, .select_goods_tr)').removeClass('dn');
            deliveryVisit = 'n';
        }

        if (shippingNo == 0) {
            $('input[name="deliveryVisit"]').val(deliveryVisit);
            $('input[name="visitName"]').val($('input[name="orderName"]').val());
            $('input[name="visitPhone"]').val($('input[name="orderCellPhone"]').val());
        }
        $infoArea.find('.shipping-delivery-visit').val(deliveryVisit);

        return deliveryVisit;
    }

    function set_shipping_btn(shippingNo, deliveryVisit) {

        switch (deliveryVisit) {
            case 'y':
                if (shippingNo == 0) {
                    $('.shipping-add-btn').addClass('dn');
                    $('.shipping-visit-add-btn').removeClass('dn');
                } else {
                    $('.shipping-remove-btn:eq(' + (shippingNo - 1) + ')').addClass('dn');
                    $('.shipping-visit-remove-btn:eq(' + (shippingNo - 1) + ')').removeClass('dn');
                }
                break;
            case 'a':
            case 'n':
                if (shippingNo == 0) {
                    $('.shipping-add-btn').removeClass('dn');
                    $('.shipping-visit-add-btn').addClass('dn');
                } else {
                    $('.shipping-remove-btn:eq(' + (shippingNo - 1) + ')').removeClass('dn');
                    $('.shipping-visit-remove-btn:eq(' + (shippingNo - 1) + ')').addClass('dn');
                }
                break;
        }
    }

    // 14세 이상 동의 설정 사용 시 휴대폰 본인인증 호출
    function authCellPhone() {
        $(".pop_cert_ly").hide();
        $('#layerDim').addClass('dn');

        var protocol = location.protocol;
        var callbackUrl = "https://www.homesool.com:443/member/authcellphone/dreamsecurity_result.php";
        window.open(protocol + "//hpauthdream.godo.co.kr/module/Mobile_hpauthDream_Main.php?callType=certGuest&returnUrl=%2Forder%2Forder.php&shopUrl=" + callbackUrl + "&cpid=kcp_AFX7X", "auth_popup", "top=30, left=50, status=0, width=425, height=650");
    }

    // 14세 이상 동의 설정 사용 시 아이핀 본인인증 호출
    function authCellIpin() {
        $(".pop_cert_ly").hide();
        $('#layerDim').addClass('dn');

        var popupWindow = window.open("/member/ipin/ipin_main.php?callType=certGuest&returnUrl=%2Forder%2Forder.php", "popupCertKey", "top=100, left=200, status=0, width=417, height=490");
    }
    //-->
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
					<span>통신판매업신고번호 : 제 2020-경기포천-0287 호 <a href="https://www.homesool.com/order/order.php#" class="btn_licensee_info" onclick="gd_popup_bizInfo(&#39;8828501179&#39;); return false;">[사업자정보확인] </a></span> 
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
					<span>통신판매업신고번호 : 제 2020-서울서초-2839 호 <a href="https://www.homesool.com/order/order.php#" class="btn_licensee_info" onclick="gd_popup_bizInfo(&#39;7768501398&#39;); return false;">[사업자번호조회]</a></span>
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
        <div id="scroll_right" class="ban_fixed">
<div class="right_banner" style="display:none;">
<a href="https://www.homesool.com/goods/brand.php"><img src="./홈술닷컴_files/scroll-banner-right01.jpg" alt="스크롤 우측 배너" title="스크롤 우측 배너"></a></div>
<div class="scroll_right_cont" style="display: none;">
    <h4>TODAY VIEW</h4>
    <ul style="display: block;">
        <li>
            <a href="https://www.homesool.com/goods/goods_view.php?goodsNo=1000000216">
                <span class="photo">
                    <img src="./홈술닷컴_files/1000000216_main_09.png" alt="아이엠더문">
                </span>
                <span class="src_box">
                    <em>아이엠더문</em>
                        <strong>22,680<b>원</b></strong>
                </span>
                <!-- //src_box -->
            </a>
            <button data-goods-no="1000000216" type="button" class="btn_scroll_list_del" title="최근본 상품에서 삭제"><img src="./홈술닷컴_files/btn_scroll_list_del.png" alt="최근본 상품에서 삭제"></button>
        </li>
        <li>
            <a href="https://www.homesool.com/goods/goods_view.php?goodsNo=1000000218">
                <span class="photo">
                    <img src="./홈술닷컴_files/1000000218_main_053.png" alt="하얀까마귀">
                </span>
                <span class="src_box">
                    <em>하얀까마귀</em>
                        <strong>10,000<b>원</b></strong>
                </span>
                <!-- //src_box -->
            </a>
            <button data-goods-no="1000000218" type="button" class="btn_scroll_list_del" title="최근본 상품에서 삭제"><img src="./홈술닷컴_files/btn_scroll_list_del.png" alt="최근본 상품에서 삭제"></button>
        </li>

    </ul>

    <div class="scr_paging">
        <button type="button" class="bnt_scroll_prev" title="최근본 이전 상품"><img src="./홈술닷컴_files/btn_scroll_prev.png" alt="최근본 이전 상품"></button>
        <span><strong class="js_current">1</strong>/<span class="js_total" style="float:none;width:auto;">1</span></span>
        <button type="button" class="bnt_scroll_next" title="최근본 다음 상품"><img src="./홈술닷컴_files/btn_scroll_next.png" alt="최근본 다음 상품"></button>
    </div>
    <!-- //scr_paging -->
</div>
<span class="btn_scroll_top"><a href="https://www.homesool.com/order/order.php#TOP"><img src="./홈술닷컴_files/btn_scroll_top.png" alt="상단으로 이동"></a></span>

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
/*         init();
    } */
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