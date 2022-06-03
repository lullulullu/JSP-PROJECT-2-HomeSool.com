/**
 * Created by yoonar on 2019-03-04.
 */
$(document).ready(function () {
    var $wonderLoginBtn = $('.js_btn_wonder_login');

    if ($wonderLoginBtn.length > 0) {
        $wonderLoginBtn.click(function () {
            var url = $wonderLoginBtn.data('wonder-url');
            var win = gd_popup({
                url: url, target: "wonderLogin", width: 500, height: 700, resizable: "no", scrollbars: "no"
            });
            win.focus();
            return win;
        });
    }

    var $snsConnectBtn = $('.js_btn_sns_connect');

    if ($snsConnectBtn.length > 0) {
        $snsConnectBtn.click(function () {
            if ($(this).data('sns') == 'wonder') {
                var url = $(this).data('wonder-url');
                var win = gd_popup({
                    url: url, target: "wonderLogin", width: 500, height: 700, resizable: "no", scrollbars: "no"
                });
                win.focus();
                return win;
            }
        });
    }

    if (typeof wonderProfile !== 'undefined') {
        if (wonderProfile.gender) {
            var $sexFl = $(':radio[name="sexFl"]');
            if ($sexFl.length > 0) {
                var gender = wonderProfile.gender == '2' ? 'w' : 'm';
                var $checkedSexFl = $sexFl.filter('*[value="' + gender + '"]');
                $checkedSexFl.prop('checked', true);
                $checkedSexFl.next('label').addClass('on');
            }
        }
        if (wonderProfile.email) {
            $('#memId').val(wonderProfile.email);
            var $email = $('#email');
            if ($email.length > 0) {
                $email.val(wonderProfile.email);
            }
        }
        if (wonderProfile.name) {
            $('input[name="memNm"]').val(wonderProfile.name);
        }
        if (wonderProfile.nickname) {
            var $nickNm = $('input[name="nickNm"]');
            if ($nickNm.length > 0) {
                $nickNm.val(wonderProfile.nickname);
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
                if ($(this).data('sns') == 'wonder') {
                    if (confirm(__('계정 연결을 해제하시겠습니까?'))) {
                        var $ajax = $.ajax('../member/wonder/wonder_login.php?mode=disconnect');
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
