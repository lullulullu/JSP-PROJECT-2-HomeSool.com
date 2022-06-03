/**
 * 상품상세 상품 리뷰&문의 페이징
 * @param type qa or review
 * @param queryStirng
 */

$(document).ready(function () {

    var getData = function (id, target) {
        id = id.toLowerCase();
        switch (id) {
            case 'bdid' :
            case 'sno' :
            case 'notice' :
                return $(target).closest('.js_detail').data(id);
                break;
            case 'memosno' :
                return $(target).closest('.js_data_comment_row').data(id);
            case 'memoauth' :
                return $(target).closest('.js_data_comment_row').data(id);
        }
    }

    /**
     * 댓글작성
     */
    $('body').delegate('.js_comment_btn_write', 'click', function (e) {
        var bdId = getData('bdId', this);
        var sno = getData('sno', this);
        var notice = getData('notice', this);
        var domRoot = domSelect(bdId, sno, notice);
        var isSecret = 'n';

        if ($('#info_collection_agree_write').length > 0) {
            if($('#info_collection_agree_write').is(':checked') == false) {
                alert(__('개인정보 수집항목에 동의해주세요.'));
                return;
            }
        }

        if(gd_is_valid_form(domRoot.commentFormWrite.element) == false) {
            return false;
        }

        if (domRoot.commentFormWrite.isSecret.is(':checked') || domRoot.commentFormWrite.isSecret.val() === 'y' ) {
            isSecret = 'y';
        }

        $.ajax({
            method: "POST",
            url: "../board/memo_ps.php",
            data: {
                mode: 'write',
                bdSno: sno,
                bdId: bdId,
                memo: domRoot.commentFormWrite.memo.val(),
                writerNm: domRoot.commentFormWrite.writerNm.val(),
                writerPw: domRoot.commentFormWrite.password.val(),
                isSecret: isSecret,
            },
            dataType: 'json'
        }).success(function (data) {
            if (data['result'] == 'ok') {
                alert(data['msg']);
                domRoot = domSelect(bdId, sno, 'n');
                var memoCnt = domRoot.dataRow.find('.js_comment_count').html();
                var regex = /[^0-9]/g;
                if (typeof memoCnt != 'undefined') {
                    memoCnt = memoCnt.replace(regex, '');
                    memoCnt = Number(memoCnt) + 1;
                    domRoot.dataRow.find('.js_comment_count').html("(" + memoCnt + ")");
                }
                else {
                    var memoHtml = '&nbsp;<span class="c-red js_comment_count">(1)</span>';
                    domRoot.dataRow.find('a.js_btn_view').after(memoHtml);
                }
                gd_show_ajax_detail(bdId, sno, true, notice);
            }
            else {
                alert(data['msg']);
                return;
            }
        }).error(function (e) {
            alert(e.responseText);
        });
    });

    /**
     * 댓글수정
     */
    $('body').delegate('.js_comment_btn_modify', 'click', function () {
        var mode = 'modify';
        var bdId = getData('bdId', this);
        var sno = getData('sno', this);
        var notice = getData('notice', this);
        var memoSno = getData('memosno', this);
        var auth = getData('memoauth', this);
        var commentFormAction = domSelect(bdId, sno, notice).commentFormAction(memoSno);

        if (auth === 'c' && commentFormAction.secretReply.val() === 'y') {
            passwordLayer.show();
            passwordLayer.btn.unbind('click').bind('click', function () {
                checkReplyPassWord();
            });
        } else {
            showModifyArea();
        }

        function checkReplyPassWord() {
            $.ajax({
                method: "POST",
                url: "../board/memo_ps.php",
                data: {
                    mode: 'checkPassWord',
                    bdSno: sno,
                    sno: memoSno,
                    bdId: bdId,
                    writerPw: passwordLayer.value(),
                },
                dataType: 'json'
            }).success(function (data) {
                if (data['result'] === 'ok') {
                    writerPw = passwordLayer.value();
                    passwordLayer.close();
                    showModifyArea(writerPw);
                }
                else {
                    alert(data['msg']);
                    return;
                }
            }).error(function (e) {
                alert(e.responseText);
            });
        }

        function showModifyArea(writerPw) {
            commentFormAction.init();
            if (commentFormAction.element.is(':visible')) {
                commentFormAction.element.hide();
            }
            else {
                commentFormAction.element.show();
            }

            commentFormAction.writerNm.prop('readonly', true);
            $.ajax({
                method: "POST",
                url: "../board/memo_ps.php",
                data: {
                    mode: 'getMemo',
                    bdId: bdId,
                    bdSno: sno,
                    sno: memoSno,
                    writerPw: writerPw,
                },
                dataType: 'json'
            }).success(function (data) {
                if (data['result'] == 'ok') {
                    commentFormAction.writerNm.val(data.writerNm);
                    commentFormAction.memo.val(data.memo);
                }
                else {
                    alert(data['msg']);
                    return;
                }
            });
        }

        commentFormAction.btn.unbind('click').bind('click', function () {
            var isSecret = 'n';

            if ($('#info_collection_agree_action').length > 0) {
                if($('#info_collection_agree_action').is(':checked') == false) {
                    alert(__('개인정보 수집항목에 동의해주세요.'));
                    return;
                }
            }

            if(gd_is_valid_form(commentFormAction.element) == false) {
                return false;
            }

            if ($('#secretReplyModify').is(":checked") || commentFormAction.isSecret.val() === 'y') {
                isSecret = 'y';
            }

            $.ajax({
                method: "POST",
                url: "../board/memo_ps.php",
                data: {
                    mode: mode,
                    bdId: bdId,
                    bdSno: sno,
                    sno: memoSno,
                    writerNm: commentFormAction.writerNm.val(),
                    writerPw: commentFormAction.password.val(),
                    memo: commentFormAction.memo.val(),
                    isSecret: isSecret,
                },
                dataType: 'json'
            }).success(function (data) {
                if (data['result'] == 'ok') {
                    alert(data['msg']);
                    gd_show_ajax_detail(bdId, sno, true, notice);
                }
                else {
                    alert(data['msg']);
                    return;
                }
            }).error(function (e) {
                alert(e.responseText);
            });
        });
    });

    /**
     * 댓글답글
     */
    $('body').delegate('.js_comment_btn_reply', 'click', function () {
        var mode = 'reply';
        var bdId = getData('bdId', this);
        var sno = getData('sno', this);
        var isSecret = 'n';
        var notice = getData('notice', this);
        var memoSno = getData('memosno', this);
        var commentFormAction = domSelect(bdId, sno, notice).commentFormAction(memoSno);
        commentFormAction.init();

        if (commentFormAction.element.is(':visible')) {
            commentFormAction.element.hide();
        }
        else {
            $('.js_action_form').hide();
            commentFormAction.element.show();
        }

        commentFormAction.writerNm.prop('readonly', false);
        commentFormAction.btn.unbind('click').bind('click', function () {
            if ($('#info_collection_agree_action').length > 0) {
                if($('#info_collection_agree_action').is(':checked') == false) {
                    alert(__('개인정보 수집항목에 동의해주세요.'));
                    return;
                }
            }

            if ($('#secretReplyModify').is(":checked") || commentFormAction.isSecret.val() === 'y') {
                isSecret = 'y';
            }

            if (!gd_is_valid_form(commentFormAction.element)) {
                return false;
            }

            $.ajax({
                method: "POST",
                url: "../board/memo_ps.php",
                data: {
                    mode: mode,
                    bdId: bdId,
                    bdSno: sno,
                    sno: memoSno,
                    writerNm: commentFormAction.writerNm.val(),
                    writerPw: commentFormAction.password.val(),
                    memo: commentFormAction.memo.val(),
                    isSecret: isSecret,
                },
                dataType: 'json'
            }).success(function (data) {
                if (data['result'] == 'ok') {
                    alert(data['msg']);
                    gd_show_ajax_detail(bdId, sno, true, notice);
                }
                else {
                    alert(data['msg']);
                    return;
                }
            }).error(function (e) {
                alert(e.responseText);
            });
        });
    });

    /**
     * 댓글 삭제
     */
    $('body').delegate('.js_comment_btn_delete', 'click', function () {
        var bdId = getData('bdId', this);
        var sno = getData('sno', this);
        var notice = getData('notice', this);
        var memoSno = getData('memosno', this);
        var auth = getData('memoauth', this);

        if (auth == 'c') {
            passwordLayer.show();
            passwordLayer.btn.unbind('click').bind('click', function () {
                gd_memo_delete_ajax_process();
            });
            return;
        }
        if (!confirm(__('정말 삭제하시겠습니까?'))) {
            return false;
        }
        gd_memo_delete_ajax_process();

        function gd_memo_delete_ajax_process() {
            $.ajax({
                method: "POST",
                url: "../board/memo_ps.php",
                data: {
                    mode: 'delete',
                    bdSno: sno,
                    sno: memoSno,
                    bdId: bdId,
                    writerPw: passwordLayer.value(),
                },
                dataType: 'json'
            }).success(function (data) {
                if (data['result'] == 'ok') {
                    alert(data['msg']);
                    gd_show_ajax_detail(bdId, sno, true, notice);
                }
                else {
                    alert(data['msg']);
                    return;
                }
            }).error(function (e) {
                alert(e.responseText);
            });
        }
    });

    /**
     * 비밀댓글확인
     */
    $('body').delegate('.js_comment_btn_secret', 'click', function () {
        var bdId = getData('bdId', this);
        var sno = getData('sno', this);
        var memoSno = getData('memosno', this);
        var auth = getData('memoauth', this);

        var commentContent = domSelect(bdId, sno);

        if (auth == 'c') {
            passwordLayer.show();
            passwordLayer.btn.unbind('click').bind('click', function () {
                viewSecretMemoAjaxProcess();
            });
            return;
        }

        function viewSecretMemoAjaxProcess() {
            $.ajax({
                method: "POST",
                url: "../board/memo_ps.php",
                data: {
                    mode: 'getSecretMemo',
                    bdSno: sno,
                    sno: memoSno,
                    bdId: bdId,
                    writerPw: passwordLayer.value(),
                },
                dataType: 'json'
            }).success(function (data) {
                if (data['result'] == 'ok') {
                    commentContent.commentRow(memoSno).find('p > em').text(data['memo']);
                    passwordLayer.close();
                }else {
                    alert(data['msg']);
                    return;
                }
            }).error(function (e) {
                alert(e.message);
            });
        }
    });

    /**
     * 상세 보기
     */
    $('body').delegate('.js_btn_view', 'click', function () {
        var bdId = $(this).closest('.js_data_row').data('bdid');    //전역변수등록
        var sno = $(this).closest('.js_data_row').data('sno');  //전역변수등록
        var auth = $(this).closest('.js_data_row').data('auth');
        var notice = $(this).closest('.js_data_row').data('notice');
        var domRoot = domSelect(bdId, sno, notice);

        if (domRoot.detail.is(':visible') == true && domRoot.detail.html().length > 0) {
            domRoot.detail.hide();
            domRoot.dataRow.children('.board_tit').removeClass('on');
            return;
        } else {
            if (auth == 'n') {
                alert(__('권한이 없습니다.'));
                return;
            } else if (auth == 'c') {
                passwordLayer.show();
                passwordLayer.btn.unbind('click').bind('click', function () {
                    gd_show_ajax_detail(bdId, sno, false, notice);
                });
                return;
            }

            if (domRoot.detail.html().length > 0) {
                domRoot.detail.show();
                return;
            }
        }
        gd_show_ajax_detail(bdId, sno, false, notice);
    });

    //수정
    $('body').delegate('.js_btn_modify', 'click', function () {
        var bdId = getData('bdId', this);
        var sno = getData('sno', this);
        var auth = $(this).data('auth');

        switch (auth) {
            case 'n' :
                alert(__('권한이 없습니다.'));
                break;
            case 'y' :
                gd_modify_write();
                break;
            case 'c' :
                passwordLayer.show();
                passwordLayer.btn.unbind('click').bind('click', function () {
                    $.ajax({
                        method: "POST",
                        url: "../board/board_ps.php",
                        data: {mode: 'modifyCheck', sno: sno, bdId: bdId, writerPw: passwordLayer.value()},
                        dataType: 'json'
                    }).success(function (data) {
                        if (data['result'] == 'ok') {
                            gd_modify_write();
                            passwordLayer.close();
                        }
                        else {
                            alert(data['msg']);
                            return;
                        }
                    }).error(function (e) {
                        alert(e.responseText);
                    });
                });
                break;
        }

        function gd_modify_write() {
            var url="../board/popup_goods_board_write.php?mode=modify&bdId="+bdId+"&sno="+sno+"&oldPassword="+passwordLayer.value();
            window.open(url,'review','width=780,height=850,left=300,scrollbars=yes');
        }
    });

    //삭제
    $('body').delegate('.js_btn_delete', 'click', function () {
        var bdId = getData('bdId', this);
        var sno = getData('sno', this);
        var auth = $(this).data('auth');
        switch (auth) {
            case 'n' :
                alert(__('권한이 없습니다.'));
                break;

            case 'y' :
                if (confirm(__('정말 삭제하시겠습니까?'))) {
                    gd_delete_ajax_process();
                }
                break;
            case 'c' :
                passwordLayer.show();
                passwordLayer.btn.unbind('click').bind('click', function () {
                    gd_delete_ajax_process();
                });
                break;
        }

        function gd_delete_ajax_process() {
            $.ajax({
                method: "POST",
                url: "../board/board_ps.php",
                data: {mode: 'delete', sno: sno, bdId: bdId, writerPw: passwordLayer.value()},
                dataType: 'json'
            }).success(function (data) {
                if (data['result'] == 'ok') {
                    alert(data['msg']);
                    self.location.reload();
                }
                else if (data['result'] == 'confirmPassword') {
                    passwordLayer.show();
                }
                else {
                    alert(data['msg']);
                    return;
                }
            }).error(function (e) {
                alert(e.responseText);
            });
        }
    });

    $('body').delegate('.js_btn_recommend', 'click', function () {
        var bdId = getData('bdId', this);
        var sno = getData('sno', this);
        $.get('../board/board_ps.php', {
            'mode': 'recommend',
            'bdId': bdId,
            'sno': sno
        }, function (data, status) {
            if (status == 'success') {
                alert(data['message']);
                $('#recommendCount').find('strong').html(data['recommendCount']);
            }
            else {
                alert('request fail. ajax status (' + status + ')');
            }
        }, 'json');
    });

    $('img.js-smart-img').each(function () {
        $(this).css('max-width', '100%');
    });
});

//패스워드입력 레이어 창
var passwordLayer = {
    element: $('.js_password_layer'),
    btn: $('.js_password_layer').find('.js_submit'),
    value: function () {
        return $('.js_password_layer').find('input[name="writerPw"]').val();
    },
    show: function () {
        this.element.removeClass('dn');
        this.element.currentCenter();
        $('#layerDim').removeClass('dn');
        $('#scroll_left, #scroll_right').addClass('dim');
        $('.password_layer .ly_cont .text').focus();
    },
    close: function () {
        $('.js_password_layer').find('input[name="writerPw"]').val('');
        $('.password_layer .ly_close').trigger('click');
    }
}

//상품문의,후기 작성 레이어창
var writerLayer = {
    element: $('#lyWritePop'),
    show: function (data) {
        $('#layerDim').removeClass('dn');
        this.element.removeClass('dn');
        this.element.html(data);
        this.element.currentCenter();
    },
    close: function () {
        this.element.find('.layer_close').trigger('click');
    },
}

//페이징
function goGoodsAjaxPage(bdId, queryStirng) {
    var ajaxDataEl = '';
    var page = gd_get_query_variable(queryStirng, 'page');
    var goodsNo = gd_get_query_variable(queryStirng, 'goodsNo');
    if (bdId == 'goodsreview') {
        ajaxDataEl = $('#ajax-goods-goodsreview-list');
    }
    else if (bdId == 'goodsqa') {
        ajaxDataEl = $('#ajax-goods-goodsqa-list');
    }
    else {
        alert('error illgal board id');
        return;
    }
    $.ajax({
        method: "GET",
        cache: false,
        url: "./goods_board_list.php",
        data: {bdId: bdId, goodsNo: goodsNo, page: page, gboard: 'y'},
        dataType: 'text'
    }).success(function (data) {
        ajaxDataEl.hide();
        ajaxDataEl.fadeIn('fast');
        ajaxDataEl.html(data);
    }).error(function (e) {
        alert(e.responseText);
    });
}

function gd_load_goodsBoardList(bdId, goodsNo, sno) {
    $.ajax({
        method: "GET",
        url: "./goods_board_list.php",
        data: {bdId: bdId, goodsNo: goodsNo, gboard: 'y'},
        dataType: 'text',
        cache: false,
        async: true,
    }).success(function (data) {
        $('#ajax-goods-' + bdId + '-list').html(data);
        if (typeof sno != 'undefined') {
            gd_show_ajax_detail(bdId, sno, true, '');
        }
    }).error(function (e) {
        alert(e.responseText);
    });
}

var gd_show_ajax_detail = function (bdId, sno, isReload, notice) {
    var domRoot = domSelect(bdId, sno, notice);
    $.ajax({
        method: "get",
        url: "./goods_board_view.php",
        async: true,
        cache: false,
        data: {sno: sno, bdId: bdId, writerPw: passwordLayer.value()},
        dataType: 'json'
    }).success(function (data) {
        if (data.result == 'fail') {
            alert(data.contents);
            $('.js_password_layer').find('input[name="writerPw"]').val('');
            return;
        }

        //초기화
        $('.js_data_row').find(".js_btn_view").removeClass('this');
        domRoot.dataRow.find('.js_btn_view').removeClass('this').addClass('this');    //볼드처리 제거
        domRoot.dataRow.children('.board_tit').addClass('on');
        if (isReload) {
            domRoot.detail.html(data.contents);
            domRoot.detail.fadeIn('slow');

            //공지사항이 리스트에 포함되어 노출시 서로의 내용을 갱신처리
            if(domRoot.detailReverse.length > 0){
                if($.trim(domRoot.detailReverse.html()).length > 0){
                    domRoot.detailReverse.html(data.contents);
                }
            }
        } else {
            if (domRoot.detail.html().length == 0) {
                domRoot.detail.hide();
                domRoot.detail.html(data.contents);
                domRoot.detail.fadeIn('slow');
            }
            else {
                domRoot.detail.fadeIn('slow');
            }
        }
        passwordLayer.close();
    }).error(function (e) {
        alert('fail');
        alert(e.responseText);
    });
};

var domSelect = function (bdId, sno, notice) {

    var addDataAttribute = '';
    var addDataAttributeReverse = '';
    var reverseArray = {'y':'n', 'n':'y'};
    if($.trim(notice) !== ''){
        addDataAttribute = "[data-notice=" + notice + "]";
        addDataAttributeReverse = "[data-notice=" + reverseArray[notice] + "]";
    }

    var formWrite = $(".js_detail[data-bdid=" + bdId + "][data-sno=" + sno + "]"+addDataAttribute).find("td:first").find('.js_form_write');
    return {
        dataRow: $(".js_data_row[data-bdid=" + bdId + "][data-sno=" + sno + "]"+addDataAttribute),
        detail: $(".js_detail[data-bdid=" + bdId + "][data-sno=" + sno + "]"+addDataAttribute),
        detailReverse: $(".js_detail[data-bdid=" + bdId + "][data-sno=" + sno + "]"+addDataAttributeReverse),
        commentRow: function (memoSno) {
            return this.detail.find('.js_data_comment_row[data-memosno=' + memoSno + ']');
        },
        commentFormWrite: {
            element: formWrite,
            writerNm: formWrite.find('input[name=writerNm]'),
            password: formWrite.find('input[name=password]'),
            memo: formWrite.find('textarea[name=memo]'),
            isSecret: formWrite.find('input[name=isSecretReply]'),
        },
        commentFormAction: function (memoSno) {
            return {
                element: this.commentRow(memoSno).find('.js_action_form'),
                writerNm: this.commentRow(memoSno).find('input[name=writerNm]'),
                password: this.commentRow(memoSno).find('input[name=password]'),
                memo: this.commentRow(memoSno).find('textarea[name=memo]'),
                isSecret: this.commentRow(memoSno).find('input[name=isSecretReply]'),
                btn: this.commentRow(memoSno).find('.js_comment_btn_action'),
                secretReply: this.commentRow(memoSno).find('input[name=secretReply]'),
                init: function () {
                    this.writerNm.val(null);
                    this.password.val(null);
                    this.memo.val(null);
                },
            }
        }
    }
};

/**
 * 리스트
 */
var gd_is_valid_form = function (elObj) {
    var writerNmEl = elObj.find('input[name=writerNm]');
    var passwordEl = elObj.find('input[name=password]');
    var memoEl = elObj.find('textarea[name=memo]');
    if (writerNmEl.length > 0) {
        if (writerNmEl.val() == '') {
            alert(__('이름을 입력해주세요.'));
            writerNmEl.focus();
            return false;
        }
    }

    if (passwordEl.length > 0) {
        if (passwordEl.val() == '') {
            alert(__('비밀번호를 입력해주세요.'));
            passwordEl.focus();
            return false;
        }
    }

    if (memoEl.length > 0) {
        if (memoEl.val() == '') {
            alert(__('댓글 내용을 입력해주세요.'));
            memoEl.focus();
            return false;
        }
    }

    return true;
};

function gd_open_write_layer(bdId, goodsNo, sno) {
    $.ajax({
        method: "GET",
        url: "../goods/goods_board_write.php",
        data: {mode: 'write', bdId: bdId, goodsNo: goodsNo, orderGoodsNo : sno},
        dataType: 'text'
    }).success(function (data) {
        writerLayer.show(data);
        gd_center_layer();
    }).error(function (e) {
        alert(e.responseText);
    });
};

function gd_open_write_popup(bdId, goodsNo,orderGoodsNo) {
    if(_.isUndefined(orderGoodsNo)){
        orderGoodsNo = 0;
    }
    var url="../board/popup_goods_board_write.php?mode=write&bdId="+bdId+"&goodsNo="+goodsNo+"&orderGoodsNo="+orderGoodsNo;
    window.open(url,'review','width=850,height=850,left=300,scrollbars=yes');
}
