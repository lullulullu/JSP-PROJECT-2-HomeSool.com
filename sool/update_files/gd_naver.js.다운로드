$(function () {
    var $naverLoginBtn = $('.js_btn_naver_login');

    if($naverLoginBtn.length > 0) {
        $naverLoginBtn.click(function () {
            var returnUrl = $(':hidden[name=returnUrl]').val();
            var url = '../member/naver/naver_login.php?naverType=' + $naverLoginBtn.data('naver-type') + '&returnUrl=' + returnUrl;
            var win = gd_popup({
                url: url, target: "naverLogin", width: 450, height: 665, resizable: "no", scrollbars: "no"
            });
            win.focus();
            return win;
        });
    }

    var $snsConnectBtn = $('.js_btn_sns_connect');

    if ($snsConnectBtn.length > 0) {
        $snsConnectBtn.click(function () {
            if ($(this).data('sns') == 'naver') {
                var url = '../member/naver/naver_login.php?mode=connect';
                var win = gd_popup({
                    url: url, target: "naverLogin", width: 450, height: 520, resizable: "no", scrollbars: "no"
                });
                win.focus();
                return win;
            }
        });
    }

    if (typeof naverProfile !== 'undefined') {
        if (naverProfile.gender) {
            var $sexFl = $(':radio[name="sexFl"]');
            if ($sexFl.length > 0) {
                var gender = naverProfile.gender.toLowerCase() == 'f' ? 'w' : naverProfile.gender.toLowerCase();
                var $checkedSexFl = $sexFl.filter('*[value="' + gender + '"]');
                $checkedSexFl.prop('checked', true);
                $checkedSexFl.next('label').addClass('on');
            }
        }
        if (naverProfile.email) {
            $('#memId').val(naverProfile.email);
            var $email = $('#email');
            if ($email.length > 0) {
                $email.val(naverProfile.email);
            }
        }
        if (naverProfile.name) {
            $('input[name="memNm"]').val(naverProfile.name);
        }
        if (naverProfile.nickname) {
            var $nickNm = $('input[name="nickNm"]');
            if ($nickNm.length > 0) {
                $nickNm.val(naverProfile.nickname);
            }
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

    if (typeof snsConnection !== 'undefined') {
        var $disconnectBtn = $('.js_btn_sns_disconnect');

        if ($disconnectBtn.length > 0) {
            $disconnectBtn.click(function () {
                if ($(this).data('sns') == 'naver') {
                    if (confirm(__('계정 연결을 해제하시겠습니까?'))) {
                        var $ajax = $.ajax('../member/naver/naver_login.php?mode=disconnect');
                        $ajax.done(function (response) {
                            alert(response.message);
                            if (response.url) {
                                window.location.href = response.url;
                            }
                        });
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
