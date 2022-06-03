$(function () {
    if (typeof appleProfile !== 'undefined') {
        var private_email = "privaterelay.appleid.com";
        if (appleProfile.email && appleProfile.email.indexOf(private_email) <= -1) {
            $('#email').val(appleProfile.email);
        }
    }

    if (typeof snsConnection !== 'undefined') {
        var $disconnectBtn = $('.js_btn_sns_disconnect');

        if ($disconnectBtn.length > 0) {
            $disconnectBtn.click(function () {
                if ($(this).data('sns') == 'apple') {
                    if (confirm(__('계정 연결을 해제하시겠습니까?'))) {
                        var $ajax = $.ajax('../member/apple/apple_login.php?state=disconnect');
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