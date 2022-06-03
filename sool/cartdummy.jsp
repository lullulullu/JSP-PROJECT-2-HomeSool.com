<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<% 
	request.setCharacterEncoding("UTF-8");
	String cp = request.getContextPath();
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<!-- saved from url=(0039)https://www.homesool.com/order/cart.php -->
<html><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>홈술닷컴</title>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    
    <meta name="author" content="">
    <meta name="description" content="">
    <meta name="keywords" content="">
    <meta name="csrf-token" content="MTY0NjE5NDQyNzUzNzM1MjI1NjkxNDY3ODIzMDIyNDU3NjE2MjE4OTY4">


    <meta property="og:type" content="website">
    <meta property="og:title" content="홈술닷컴">
    <meta property="og:url" content="https://www.homesool.com/order/cart.php">
    <meta property="og:description" content="홈술닷컴">
    <meta property="og:locale" content="ko_KR">
    <meta name="twitter:card" content="summary">
    <meta name="twitter:title" content="홈술닷컴">
    <meta name="twitter:description" content="홈술닷컴">

    <link rel="icon" href="https://www.homesool.com/data/common/favicon.ico" type="image/x-icon">
    
	<link rel="apple-touch-icon" sizes="114x114" href="https://www.homesool.com/data/commonimg/defaultShopIcon144.png">
	<link rel="apple-touch-icon" href="https://www.homesool.com/data/commonimg/defaultShopIcon72.png">

    <link type="text/css" rel="stylesheet" href="<%=cp %>/sool/basket_files/reset.css">
    <link type="text/css" rel="stylesheet" href="<%=cp %>/sool/basket_files/common.css">
    <link type="text/css" rel="stylesheet" href="<%=cp %>/sool/basket_files/layer.css">
    <link type="text/css" rel="stylesheet" href="<%=cp %>/sool/basket_files/layout.css">
    <link type="text/css" rel="stylesheet" href="<%=cp %>/sool/basket_files/list.css">
	<link type="text/css" rel="stylesheet" href="<%=cp %>/sool/basket_files/button.css">
    <link type="text/css" rel="stylesheet" href="<%=cp %>/sool/basket_files/order.css">
    <link type="text/css" rel="stylesheet" href="<%=cp %>/sool/basket_files/chosen.css">	
	<link type="text/css" rel="stylesheet" href="<%=cp %>/sool/basket_files/swiper-bundle.min.css">
    <link type="text/css" rel="stylesheet" href="<%=cp %>/sool/basket_files/custom.css">


    <script src="./basket_files/AceCounter_AW.js.다운로드"></script><script src="./basket_files/1135465033646646" async=""></script><script src="./basket_files/identity.js.다운로드" async=""></script><script async="" src="./basket_files/fbevents.js.다운로드"></script><script type="text/javascript">
        var json_locale_data = {"domain":"messages","locale_data":{"messages":{"":{"lang":"ATF","plural-forms":"nplurals=1; plural=0"}}}}
    </script>
    <script type="text/javascript" src="./basket_files/gd_gettext.js.다운로드"></script>
    <script type="text/javascript" src="./basket_files/jquery.min.js.다운로드"></script>
    <script type="text/javascript" src="./basket_files/underscore-min.js.다운로드"></script>
    <script type="text/javascript" src="./basket_files/jquery.validate.min.js.다운로드"></script>
    <script type="text/javascript" src="./basket_files/additional-methods.min.js.다운로드"></script>
    <script type="text/javascript" src="./basket_files/numeral.min.js.다운로드"></script>
    <script type="text/javascript" src="./basket_files/accounting.min.js.다운로드"></script>
    <script type="text/javascript" src="./basket_files/money.min.js.다운로드"></script>
    <script type="text/javascript" src="./basket_files/chosen.jquery.min.js.다운로드"></script>
    <script type="text/javascript" src="./basket_files/placeholders.jquery.min.js.다운로드"></script>
    <!--[if gt IE 8]-->
    <script type="text/javascript" src="./basket_files/clipboard.min.js.다운로드"></script>
    <!--[endif]-->
    <script type="text/javascript" src="./basket_files/jquery.vticker.js.다운로드"></script>
    <script type="text/javascript" src="./basket_files/gd_ui.js.다운로드"></script>

  

    <script type="text/javascript" src="./basket_files/gd_common.js.다운로드"></script>

    <!-- Add script : start -->
    <script type="text/javascript" src="./basket_files/jquery.cookie.js.다운로드"></script>
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
				<!-- <c:choose> --!>
<!-- 	<c:when test="${empty sessionScope.customInfos.user_id }">
		<li><a href="<%=cp%>/homesool/login.com">Login</a></li>
        <li><a href="<%=cp%>/homesool/create1.com">Join</a></li>
	</c:when>
	<c:otherwise> --!>
		  
		<li><a href="<%=cp%>/homesool/logout.com">Logout</a></li>
	<!-- </c:otherwise> -->
<!-- </c:choose> --!>
            	    </li>
            	    
            	    <li><a href="<%=cp%>/homesool/csCenter.com">CS Center</a></li>
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






















    <div id="container">
        <div id="contents">
        <!-- 본문 시작 -->

            <div class="location_wrap">
                <div class="location_cont">
                    <em><a href="https://www.homesool.com/order/cart.php#" class="local_home">HOME</a> &gt; 장바구니</em>
                </div>
            </div>
            <!-- //location_wrap --> 	 

            <div class="sub_content">

                <!-- //side_cont -->

<div class="content_box">
    <div class="order_wrap">
        <div class="order_step"> 
            <ol>
                <li class="page_on"><span>STEP 1</span> 장바구니 </li>
                <li><span>STEP 2</span> 주문서작성/결제</li>
                <li><span>STEP 3</span> 주문완료</li>
            </ol>
        </div>
        <!-- //order_tit -->
		
		<div class="order_tit mt50">
			<h2>오늘.일반홈술 장바구니</h2>
			<p>장바구니의 상품을 결제하시려면 상품주문하기를 눌러주세요. 다른 상품을 고르신 후 장바구니에 넣고 한꺼번에 결제 하시면 편리합니다.
			<h1></br>단 오늘은 결제가 되질 않아요...</h1></p>
			<h3>관리자가 장바구니를 마무리 하지 못했습니다....</h1></p>
		</div>

        <div class="cart_cont">

            <form id="frmCart" name="frmCart" method="post" target="ifrmProcess">
                <input type="hidden" name="mode" value="">
                <input type="hidden" name="cart[cartSno]" value="">
                <input type="hidden" name="cart[goodsNo]" value="">
                <input type="hidden" name="cart[goodsCnt]" value="">
                <input type="hidden" name="cart[addGoodsNo]" value="">
                <input type="hidden" name="cart[addGoodsCnt]" value="">
                <input type="hidden" name="cart[couponApplyNo]" value="">
                <input type="hidden" name="useBundleGoods" value="1">
                <input type="hidden" name="ac_id" value="">
                <!-- 장바구니 상품리스트 시작 -->


                <div class="cart_cont_list">
                    <div class="order_cart_tit">
						<div class="form_element">
						<input type="checkbox" id="allselect" checked="checked">
							<label for="allCheck" class="check on">  홈술골라담기 전체선택 </label>
						</div> 
                    </div>
                    <!-- //order_cart_tit -->

					<div class="hs_cart_tit02"><em></em></div>
                    <div class="order_table_type">
                        <table>
                            <colgroup>
                                <col style="width:5%">  <!-- 체크박스 -->
                                <col>					<!-- 상품명/옵션 -->
                                <col style="width:8%">  <!-- 수량 -->
                                <col style="width:10%"> <!-- 상품금액 -->
                                <col style="width:13%"> <!-- 할인/적립 -->
                                <col style="width:10%"> <!-- 합계금액 -->
                                <col style="width:10%"> <!-- 배송비 -->
                            </colgroup>
                            <thead>
                            <tr>
                                <th>
	  선택
                                </th>
                                <th>상품/옵션 정보</th>
                                <th>수량</th>
                                <th>상품금액</th>
                                <th>부가세</th>
                                <th>합계금액</th>
                                <th>배송비</th>
                            </tr>
                            </thead>
                            <tbody>

                            
                            <tr>
                                <td class="td_chk">
                                    <div class="form_element">
										<!-- 튜닝 : 배송 유형(goodsKind) 추가 2021-08-17 -->
                                        <input type="checkbox" id="cartSno2_100293" name="cartSno[]" value="100293" checked="checked" data-price="22680" data-mileage="113" data-goodsdc="0" data-memberdc="0" data-coupondc="0" data-possible="y" data-goods-key="0" data-goods-no="1000000216" data-goods-nm="아이엠더문" data-option-nm="" data-fixed-sales="option" data-sales-unit="1" data-fixed-order-cnt="option" data-min-order-cnt="1" data-max-order-cnt="0" data-default-goods-cnt="1" data-goods-kind="n">
                                        <label for="cartSno2_100293" class="check on"></label>
                                    </div>
                                </td>
                                <td class="td_left">
                                    <div class="pick_add_cont">
                                        <span class="pick_add_img">
                                            <a href="https://www.homesool.com/goods/goods_view.php?goodsNo=1000000216"><img src="./basket_files/1000000216_list_019.png" width="40" alt="아이엠더문" title="아이엠더문" class="middle"></a>
                                        </span>
                                        <div class="pick_add_info">

                                            

                                            <em><a href="https://www.homesool.com/goods/goods_view.php?goodsNo=1000000216">아이엠더문</a></em>

                                            <!-- //icon_pick_list -->

                                            <div class="pick_option_box">
                                            </div>

                                            <div class="pick_option_box">
                                            </div>

											
                                        </div>
										
								
                                    </div>
                                    <!-- //pick_add_cont -->

                                    <!-- //pick_add_list -->

                                </td>
                                <td class="td_order_amount">
                                    <div class="order_goods_num">
                                        <strong>1개</strong> 
										<div class=" ">
                                            <a href="https://www.homesool.com/order/cart.php#optionViewLayer" class="  btn_open_layer" data-goodsno="1000000216" data-sno="100293"><span>변경</span></a>
                                        </div> 
                                    </div>
                                </td>
                                <td>
                                    <strong class="order_sum_txt price">22,680원</strong>
                                    <p class="add_currency"></p>
                                </td>
                                <td class="td_benefit">
                                        <ul class="benefit_list">
                                            <li class="benefit_mileage">
                                                <em>부가세</em>
                                                <span>비회원 <strong>+277,320</strong></span>
                                            </li>
                                        </ul>
                                </td>
                                <td>
                                    <strong class="order_sum_txt">22,680원</strong>
                                    <p class="add_currency"></p>
                                </td>
                                <td class="td_delivery" rowspan="1">
                                    일반홈술<br>
                                    3,000원

                                    <br>
                                    (택배-선결제)
                                </td>
                            </tr>
                            

                            </tbody> 
                        </table>
						
						<!-- 튜닝 : 공급사별 무료배송 남은 금액 수정 2021-08-17 -->
						<div class="restfree_noti_txt">홈술골라담기 일반홈술에서  7,320원 추가구매하시면 무료배송으로 받으실 수 있습니다 </div>

						
 
						<div class="price_sum">
							
							
							<!-- 튜닝 : 공급사별 무료배송 남은 금액 수정 2021-08-17 -->


							<div class="price_sum_cont">
								<div class="price_sum_list">
									<dl>
										<dt>총 <strong>1</strong>개의 상품금액</dt>
										<dd><strong>300,000</strong>원</dd>
									</dl>
									<span>+</span>
									<dl>
										<dt>배송비</dt>
										<dd><strong>3,000</strong>원</dd>
									</dl>
									<span>=</span>
									<dl class="price_total">
										<dt>합계</dt>
										<dd><strong class="total">303,000</strong>원</dd>
									</dl>
								</div>
							</div>
							<!-- //price_sum_cont -->
						</div>
						<!-- //price_sum --> 

                    </div>
 

                </div>
                <!-- 장바구니 상품리스트 끝 -->


            </form>

            <div class="price_sum">
                <div class="price_sum_cont">
                    <div class="price_sum_list">
                        <dl>
                            <dt>총 <strong id="totalGoodsCnt">1</strong> 개의 상품금액 </dt>
                            <dd><strong id="totalGoodsPrice">300,000</strong>원</dd>
                        </dl>
                        <span><img src="./basket_files/order_price_plus.png" alt="더하기"></span>
                        <dl>
                            <dt>배송비</dt>
                            <dd><strong id="totalDeliveryCharge">3,000</strong>원</dd>
                        </dl>
                        <span><img src="./basket_files/order_price_total.png" alt="합계"></span>
                        <dl class="price_total">
                            <dt>합계</dt>
                            <dd><strong id="totalSettlePrice">303,000</strong>원
                            </dd>
                        </dl> 
						<div class="mileage_txt">
							<em id="deliveryChargeText" class="tobe_mileage"></em>
							<em class="tobe_mileage">(적립예정 적립금 : <span id="totalGoodsMileage">30</span> 원)</em>
						</div>

                    </div>
                </div>
                <!-- //price_sum_cont -->
            </div>
            <!-- //price_sum -->

            <div class="btn_order_box">
                <span class="btn_left_box">
                    <button type="button" class="btn_order_choice_del" onclick="gd_cart_process(&#39;cartDelete&#39;);">선택 상품 삭제</button>
                    <button type="button" class="btn_order_choice_wish" onclick="gd_cart_process(&#39;cartToWish&#39;);">선택 상품 찜</button>
                </span>
                <span class="btn_right_box">
					<a href="https://homesool.com/goods/goods_list.php?cateCd=008" class="shop_go_link">계속 쇼핑하기</a>
                    <button type="button" class="btn_order_choice_buy" onclick="<%=cp %>/sool/list.jsp;">선택 상품 주문</button>
                    <button type="button" class="btn_order_whole_buy" onclick="<%=cp %>/sool/list.jsp;">주문...할수 없어요</button>
                </span>
            </div>
            <!-- //btn_order_box -->

            <em class="chk_none">주문서 작성단계에서 할인/적립금 적용을 하실 수 있습니다.</em>

            <div class="pay_box">
                <div class="payco_pay">
                    
                </div>

				<!-- 튜닝 : 오늘홈술 있을 경우 네이버페이 결제 불가 2021-08-17 -->
                <div class="naver_pay">
                    
                </div>
            </div>
            <!-- //pay_box -->
        </div>
        <!-- //cart_cont -->
    </div>
    <!-- //order_wrap -->
</div>
</div>

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
</div>
</div>
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
					<span>통신판매업신고번호 : 제 2020-경기포천-0287 호 <a href="https://www.homesool.com/main/index.php#" class="btn_licensee_info" onclick="gd_popup_bizInfo(&#39;8828501179&#39;); return false;">[사업자정보확인] </a></span> 
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
					<span>통신판매업신고번호 : 제 2020-서울서초-2839 호 <a href="https://www.homesool.com/main/index.php#" class="btn_licensee_info" onclick="gd_popup_bizInfo(&#39;7768501398&#39;); return false;">[사업자번호조회]</a></span>
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
        <span><img src="<%=cp %>/sool/main_files/logo_comodo.png" alt="보안서버 적용 확인"></span>
        <span><img src="<%=cp %>/sool/main_files/escrow_banner_kcp.png" alt="에스크로 서비스 확인" title="에스크로 서비스 확인" class="hand" onclick="">
    </div>
      <!-- //foot_certify -->        
</body>
</html>