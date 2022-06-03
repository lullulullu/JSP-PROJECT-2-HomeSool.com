/**
 * This is commercial software, only users who have purchased a valid license
 * and accept to the terms of the License Agreement can install and use this
 * program.
 *
 * Do not edit or add to this file if you wish to upgrade Godomall5 to newer
 * versions in the future.
 *
 * @copyright ⓒ 2016, NHN godo: Corp.
 * @link http://www.godo.co.kr
 */

/**
 * 사업자 번호 유효성 체크를 위한 플러그인
 * value는 숫자만 10자리로 해서 문자열로 넘긴다.
 */
$.validator.addMethod( "businessnoKR", function( value, element, params ) {
    if (params === false) {
        return true;
    }

    var checkvalue = new Array(1, 3, 7, 1, 3, 7, 1, 3, 5, 1);
    var tmpvalue, i, chkSum=0, c2, remander;
    value = value.replace(/-/gi,'');

    for (i=0; i<=7; i++) chkSum += checkvalue[i] * value.charAt(i);
    c2 = "0" + (checkvalue[8] * value.charAt(8));
    c2 = c2.substring(c2.length - 2, c2.length);
    chkSum += Math.floor(c2.charAt(0)) + Math.floor(c2.charAt(1));
    remander = (10 - (chkSum % 10)) % 10 ;

    return this.optional( element ) || (Math.floor(value.charAt(9)) == remander);
}, "사업자 번호를 정확하게 입력하세요." );
