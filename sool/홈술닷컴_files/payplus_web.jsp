


var KCP_Script_SV      = true;
var KCP_DOMAIN         = KCP_Script_SV? "https://pay.kcp.co.kr/":"https://testpay.kcp.co.kr/";

var KCP_NPAY_DOMAIN    = KCP_Script_SV? "https://npay.kcp.co.kr/":"https://testnpay.kcp.co.kr/";
var KCP_NPAY_JS        = KCP_Script_SV? "web_cross_hub.js":"web_cross_hub_test.js";

var KCP_SPAY_DOMAIN    = 'https://spay.kcp.co.kr/';

var kcpDocHeadTag      = document.getElementsByTagName("head")[0];
var KCP_NPAY_SRV_JS	   = 'https://npay.kcp.co.kr/plugin/web_cross_hub.js';
var KCP_SPAY_SRV_JS    = 'https://spay.kcp.co.kr/plugin/kcp_spay_cross_hub.js';


var KCP_SCRIPT_TYPE    = "type=\"text/javascript\"";

var REAL_CHECK         = KCP_Script_SV? "Y":"N";
var KCP_NUA            = navigator.userAgent;
var KCP_PROTOCOL       = document.location.protocol;
var CHARSET            = "UTF-8";
var USE_MCT_JQUERY     = '';

/** �ڹٽ�ũ��Ʈ �ڵ� ���� ó�� - ���� */
var KCP_Script_VERSION = "";

try
{
    var pattern = /^[A-Z0-9]+$/;
    var n       = 32;
    var str     = "";

    if(!/^[0-9]+$/.test(n)) n = 0x10;

    for(var i=0; i<n; i++)
    {
        var rnd = Math.round( Math.random() * 1000 );

        if( !pattern.test( String.fromCharCode(rnd) ) )
        {
            n = n+1;
        }
        else
        {
            str += String.fromCharCode(rnd);
        }
    }

    KCP_Script_VERSION = str;
}
catch(e){}
/** �ڹٽ�ũ��Ʈ �ڵ� ���� ó�� - �� */


function ChkBrowser()
{
    if( ( KCP_NUA.indexOf( 'MSIE'        ) > 0 ) ||
        ( KCP_NUA.indexOf( 'Trident/7.0' ) > 0 ) ||
        ( KCP_NUA.indexOf( 'Edge'        ) > 0 )
    )
    {
        return true;
    }

    return false;
}

function ChkBrowserType()
{
    var IE_CHECK = "Y";

    if( ( KCP_NUA.indexOf( 'MSIE'        ) > 0 ) ||
        ( KCP_NUA.indexOf( 'Trident/7.0' ) > 0 )
    )
    {
        IE_CHECK = "Y";
    }
    else if( KCP_NUA.indexOf( 'Edge' ) > 0 )
    {
        IE_CHECK = "E";
    }
    else if( KCP_NUA.indexOf( "Firefox" ) > -1 )
    {
        IE_CHECK = "F";
    }
    else if( KCP_NUA.indexOf( "OPR" ) > -1 )
    {
        IE_CHECK = "N";
    }
    else if( KCP_NUA.indexOf( "Safari" ) > -1 && KCP_NUA.indexOf( "Version" ) > -1 )
    {
        IE_CHECK = "N";
    }
    else if( KCP_NUA.indexOf( "Chrome" ) > -1 )
    {
        IE_CHECK = "C";
    }
    else
    {
        IE_CHECK = "N";
    }

    return IE_CHECK;
}

function ChkBrowserVer()
{
    try{
        var b_ver = 0;

        if( ( KCP_NUA.indexOf( 'MSIE'        ) > 0 ) ||
            ( KCP_NUA.indexOf( 'Trident/7.0' ) > 0 ) ||
            ( KCP_NUA.indexOf( 'Edge'        ) > 0 )
        )
        {
            b_ver = 999;
        }
        else if( KCP_NUA.indexOf( "Firefox" ) > -1 )
        {
            // Mozilla/5.0 (Windows NT 6.1; WOW64; rv:40.0) Gecko/20100101 Firefox/40.0
            b_ver = Number( KCP_NUA.substr( KCP_NUA.indexOf( " Firefox/" ) + 9, 4 ) );
        }
        else if( KCP_NUA.indexOf( "OPR" ) > -1 )
        {
            // Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.155 Safari/537.36 OPR/31.0.1889.174
            b_ver = Number( KCP_NUA.substr( KCP_NUA.indexOf( " OPR/" ) + 5, 4 ) );
        }
        else if( KCP_NUA.indexOf( "Safari" ) > -1 && KCP_NUA.indexOf( "Version" ) > -1 )
        {
            // Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/534.57.2 (KHTML, like Gecko) Version/5.1.7 Safari/534.57.2
            b_ver = Number( KCP_NUA.substr( KCP_NUA.indexOf( " Version/" ) + 9, 3 ) );
        }
        else if( KCP_NUA.indexOf( "Chrome" ) > -1 )
        {
            // Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.155 Safari/537.36
            b_ver = Number( KCP_NUA.substr( KCP_NUA.indexOf( " Chrome/" ) + 8, 4 ) );
        }

        return b_ver;
    }
    catch(e)
    {
        return 999;
    }
}


	/*****************************************
	 * IE ���� üũ
	 *
	 * @param uAgent
	 * @returns {Number}
	 *****************************************/
	function detectIEVer()
	{
        var rv 		= -1;
        var agent 	= navigator.userAgent.toLowerCase();
        var appName = navigator.appName;

        // IE ȣȯ�� ������
        if( agent.indexOf('msie 7') > -1 && agent.indexOf('trident') > -1 )
        {
        	try
        	{
            	var bStyle = document.body.style;
            	var canvas = document.createElement('canvas');

            	if( !canvas.getContext('webgl') ) return 10;

            	if( !('msTransition' in bStyle) && !('transition' in bStyle )) return 9;

                if( !('getContext' in canvas) ) return 8;

                return 11;
        	}
        	catch(e)
        	{
        		if( !('getContext' in canvas) )	return 8;
        		else							return 7;
        	}
        }
        else
        {
            if ( appName == 'Microsoft Internet Explorer') {
                 var re = new RegExp("msie ([0-9]{1,}[\.0-9]{0,})");

                 if (re.exec(agent) != null)		rv = parseFloat(RegExp.$1);
            }
            else if( appName == "Netscape")
            {
            	rv = 11;
            }

            if(rv == -1 )	return rv;
            else			return rv;
        }
	}


/******************************************************************************
// Title	: ���� ������ ��ũ��� üũ
// Date		: 2015.12.15
// By		: ktw
******************************************************************************/
function ChkBrowserQuirksMode(browType)
{
	var isQuirks 	= "S";
	var ieVer 		= "";

	if( browType == 'Y' )
	{
		ieVer = detectIEVer();

		// IE10 ���� ������ ��� ��ũ��� ���� �Ǻ� ó��
		if( Number(ieVer) < 11 )
		{
			isQuirks = (document.compatMode === 'CSS1Compat') ? 'S' : 'Q';
		}

	}

	return isQuirks;
}


/******************************************************************************
// Title	: EXE or WEB ��� ���� ���� ó�� ( KCP_PAY_MODULE = exe or web )
// Date		: 2015.12.15
// By		: ktw
******************************************************************************/
function KCP_Pay_Execute( payform )
{
	try
	{
		if( typeof payform.KCP_PAY_MODULE != "undefined" && payform.KCP_PAY_MODULE.value != "" )
		{
			var kcpPayModule 	= payform.KCP_PAY_MODULE.value.toLowerCase();

			DO_KCP_ModuleExecute(kcpPayModule, payform);
		}
		else
		{
			DO_KCP_DefaultExecute(payform.pay_method.value, payform);
		}
	}
	catch(e)
	{
		DO_KCP_DefaultExecute(payform.pay_method.value, payform);
	}
}


/******************************************************************************
// Title	: form �� KCP_PAY_MODULE ���� ���� ����â ����
// Return	: boolean
// Date		: 2015.12.15
// By		: ktw
******************************************************************************/
function DO_KCP_ModuleExecute( kcpPayModule, payform )
{
	if( kcpPayModule == "kcp_exe" )
	{
		kcpTx_install_exe( payform );
		return true;
	}
	else if( kcpPayModule == "kcp_web" )
	{
		KCP_Pay_Execute_Web( payform );
		return true;
	}
	else
	{
		DO_KCP_DefaultExecute( payform.pay_method.value, payform );
	}
}


/******************************************************************************
// Title	: form �� pay_method ���� ���� ����â ����
// Date		: 2015.12.15
// By		: ktw
******************************************************************************/
function DO_KCP_DefaultExecute( payMethodVal, payform )
{
	var paySiteCdVal 		= payform.site_cd.value;
	var KCP_NPAY_USABLE		= CHECK_KCP_Moudle_type(payMethodVal, paySiteCdVal, payform);

	if( KCP_NPAY_USABLE )
	{
		KCP_Pay_Execute_Web( payform );
	}
	else
	{
		kcpTx_install_exe( payform );
	}
}


/******************************************************************************
// Title	: NPay pay_method ����â �б� ����
// Date		: 2016.08.08
// By		: ktw
******************************************************************************/
function CHECK_KCP_Moudle_type(payMethodVal, paySiteCdVal, payform)
{
/*
	var browType = ChkBrowserType();


	// ��ũ ����� ��� EXE�θ� ����â ȣ��

	if( ChkBrowserQuirksMode(browType) == "Q" )
	{
		return false;
	}
*/

	var KCP_NPAY_USE_IDX    = [0, 1, 2, 3, 4, 8];
	var kcpTmpArrPayMethod	= payMethodVal.split('');

	var card_cert_type = "";

	try
	{
		// ���ݿ����� - NPay �̱���
		if( "CASH" == payMethodVal.toUpperCase() )			return true;

		if( typeof payform.card_cert_type != "undefined" && payform.card_cert_type.value != "" )
		{
			// ��ġ����
			if( (payMethodVal.toUpperCase()).indexOf("AUTH") > -1 && payform.card_cert_type.value == "BATCH" )
			{
				return true;
			}
		}
		else
		{
			// ��������(ī��)
			if( "AUTH:CARD"  == payMethodVal.toUpperCase() )	return true;

			// ��������(����������)
			if( "AUTH:CERT"  == payMethodVal.toUpperCase() )	return true;
		}
	}
	catch(e)
	{
		return false;
	}


	if( kcpTmpArrPayMethod.length == 12)
	{
		try
		{
			for(var idx=0 ; idx < KCP_NPAY_USE_IDX.length ; idx++)
			{
				kcpTmpArrPayMethod.splice(KCP_NPAY_USE_IDX[idx], 1, "N");
			}

			var kcpUsableIdx = 0;


			// splice�� PayMethod�迭�� ������ ��� ���
			var kcpSpliceArrPayMethod = kcpTmpArrPayMethod;

			for(var arrIdx=0 ; arrIdx < kcpSpliceArrPayMethod.length ; arrIdx++)
			{
				if( "1" == kcpSpliceArrPayMethod[arrIdx] )
				{
					kcpUsableIdx ++;
					break;
				}
			}

			if(kcpUsableIdx == 0) return true;
		}
		catch(e)
		{
			return false;
		}
	}
	else
	{
		return false;
	}
}


document.write( "<style type='text/css'>                                                                                  " );
document.write( "    .kcpTransDiv{                                                                                        " );
document.write( "        filter:alpha(opacity=10); -khtml-opacity: 0.1; -moz-opacity: 0.1; opacity: 0.1; top:0px; left:0; " );
document.write( "        background-color:#000000; width:100%; height:100%; position:absolute; z-index:10000;             " );
document.write( "    }                                                                                                    " );
document.write( "</style>                                                                                                 " );
document.write( "<div id='kcp_content'  style='background-color: white;'></div>                                           " );
document.write( "<div id='kcp_mask' class='kcpTransDiv' style='display:none'></div>                                       " );
document.write( "<div id='kcp_progress' class='spin_container'></div>                                                     " );

document.write( "<script " + KCP_SCRIPT_TYPE + " src=\"" + KCP_DOMAIN      + "plugin/js/ajax.js?"                        + KCP_Script_VERSION + "\" charset=\"EUC-KR\" ></script>" );
document.write( "<script " + KCP_SCRIPT_TYPE + " src=\"" + KCP_DOMAIN      + "plugin/cross_service/extends/util.js?"     + KCP_Script_VERSION + "\" charset=\"EUC-KR\" ></script>" );
document.write( "<script " + KCP_SCRIPT_TYPE + " src=\"" + KCP_DOMAIN      + "plugin/cross_service/extends/spin.min.js?" + KCP_Script_VERSION + "\" ></script>" );
document.write( "<script " + KCP_SCRIPT_TYPE + " src=\"" + KCP_DOMAIN      + "plugin/js/payplus_webExe.js?"              + KCP_Script_VERSION + "\" charset=\"EUC-KR\" ></script>" );

document.write( "<script " + KCP_SCRIPT_TYPE + " src=\"" + KCP_NPAY_DOMAIN + "plugin/" + KCP_NPAY_JS + "?"               + KCP_Script_VERSION + "\" charset=\"EUC-KR\" ></script>" );
