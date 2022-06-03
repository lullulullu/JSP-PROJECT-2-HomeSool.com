/**
 * Create by sojeong
 */

$(document).ready(function () {
    var $kakaoLoginBtn = $('.js_btn_kakao_login');

    if($kakaoLoginBtn.length > 0) {
        $kakaoLoginBtn.click(function () {
            var url ='';
            var returnUrl = $kakaoLoginBtn.data('return-url');
            url = '../member/kakao/kakao_login.php?kakaoType=' + $kakaoLoginBtn.data('kakao-type') + '&returnUrl=' + returnUrl;
            var win = gd_popup({
                url: url, target: "kakaoLogin", width: 630, height: 560, resizable: "no", scrollbars: "no"
            });
            win.focus();
            return win;
        });
    }

    if(typeof kakaoProfile !== 'undefined') {
        if(kakaoProfile.nickname){
            $('input[name="memNm"]').val(kakaoProfile.nickname);
        }
        if(kakaoProfile.email){
            $('input[name="email"]').val(kakaoProfile.email);
        }

        var $memPw = $('input[name="memPw"]');
        if ($memPw.length > 0) {
            $memPw.addClass('ignore');
        }
        var $memPwRe = $('input[name="memPwRe"]');
        if ($memPwRe.length > 0) {
            $memPwRe.addClass('ignore');
        }
    }

    var $snsConnectBtn = $('.js_btn_sns_connect');

    if ($snsConnectBtn.length > 0) {
        $snsConnectBtn.click(function () {
            if ($(this).data('sns') == 'kakao') {
                var url = '../member/kakao/kakao_login.php?kakaoType=connect';
                var win = gd_popup({
                    url: url, target: "kakaoLogin", width: 630, height: 560, resizable: "no", scrollbars: "no"
                });
                win.focus();
                return win;
            }
        });
    }

    if (typeof snsConnection !== 'undefined') {
        var $disconnectBtn = $('.js_btn_sns_disconnect');
        if ($disconnectBtn.length > 0) {
            $disconnectBtn.click(function () {
                if($(this).data('sns') == 'kakao') {
                    if (confirm(__('계정 연결을 해제하시겠습니까?'))) {
                        var url = $(this).data('kakao-url');
                        var win = gd_popup({
                            url: url, target: "kakaoLogin", width: 0, height: 0, resizable: "no", scrollbars: "no"
                        });
                        win.focus();
                        return win;
                    }
                }
            });
        }
    }


});

function confirmJoin(message, location) {
    if (confirm(message)) {
        window.location.href = location;
    }
}