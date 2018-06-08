<#import "/WEB-INF/ftl/sharders/pc/mobile/layout.ftl" as lay/>
<@lay.htmlHead    pagename="register">

<link rel="stylesheet" href="/r/cms/resource/sharders/css/mobile/register_login.css">
<style>
    html,body{
        height: 100%;
    }
    .register-main{
        background-image: url("/r/cms/resource/sharders/img/background.png");
        min-height: 100%;
    }

    .mall{
        margin-left: 35%;
    }
</style>

<script type="text/javascript">
    $(function() {
        window.register =  $("#register-form").validate({
            rules: {
                protocol:"required"
            },
            messages: {
                protocol:"Please agree to the terms of service first."
            },
            submitHandler: function() {
                executeRegister();
            }
        });

    });
</script>

</@lay.htmlHead>

<@lay.htmlBody isShowFooter=false >
<div class="ss-container register-main">
    <div class="ss-main">
        <section class="main-title">
            <h1 class="ss-main-title i18n" name="welcome-registration-sharderf">Welcome to Sharder!</h1>
            <div class="ss-in-login"><span class="i18n" name="sharderf-account-number-exist">Have an account?</span><a class="in-login i18n" href="/login.ss" name="sharderf-user-sign-in"> Log in</a></div>
        </section>
        <section class="register-form register_login">
            <form action="${base}/register_.ss" method="post"  class="ss-form default" id="register-form">
                <ul>
                <#--<li>-->
                <#--<label for="username"><i>*</i><span class="i18n" name="sharder-sign-in-username">用户名:</span></label>-->
                <#--<input id="username" type="text" vld="{rangelength:[${site.usernameMinLen},20],username:true,remote:'username_unique.jspx',messages:{remote:'用户名已存在'}}" name="username" class="username" />-->
                <#--</li>-->
                    <input  type="hidden"  name="username" id="username"/>
                    <li >
                        <label for="identification"><i>*</i><span class="i18n" name="sharder-account-number"> UID:</span></label>
                        <input type="text" id="identification" maxlength="50" vld="{remote:'/user_center/is_not_exist.ss',messages:{remote:'手机或邮箱已被使用！'}}" name="identification" placeholder="Mobile phone number or email address."  class="register-input identification i18n" />
                    </li>
                    <li class="ss-verification-code-li" >
                        <label for="captcha"><i>*</i><span class="i18n" name="sharder-user-code">Captcha</span></label>
                        <input id="captcha" type="text"  name="captcha" class="captcha" maxlength="6"/>
                        <input type="button"  class="i18n" name="sharder-send" onclick="registerVcode('identification',this)" value="Send"/>
                    </li>
                    <li>
                        <label for="password"><i>*</i><span class="i18n" name="sharder-user-password"> Password</span></label>
                        <input id="password" type="password" name="loginPassword" vld="{rangelength:[6,20]}" class="passwod password" autocomplete="off" disableautocomplete/>
                    </li>
                    <li>
                        <label for="confirm_password"><i>*</i><span class="i18n" name="sharder-user-pwd">Confirm password</span></label>
                        <input type="password" equalto="#password" vld="{rangelength:[6,20]}" class="password password" autocomplete="off" disableautocomplete/>
                    </li>
                    <#--<li>-->
                        <#--<label for="verification code"><span class="i18n" name="sharder-sign-recommend">Inviter ID (Optional)</span></label>-->
                        <#--<input id="referrer" type="text" name="inviterId" class="" value="${inviterId!}"/>-->
                    <#--</li>-->
                    <li class="ss-verification-code-li">
                        <label for="verification code"><i>*</i><span class="i18n" name="sharder-check-code">Ver. Code</span></label>
                        <input id="verification_code" type="text" maxlength="20" name="imgCaptcha" class="imgCaptcha" />
                        <i class="code-img"><img id="guestbookCaptcha" onclick="this.src='${base}/captcha.svl?d='+new Date()" alt="" src="${base}/captcha.svl"></i>
                    </li>
                    <li class="register-protocol">
                        <input type="checkbox" name="protocol" checked><span class="i18n" name="sharder-user-protocol">I have read and agree</span>
                        <a id="protocol" class="i18n underline" name="sharder-user-protocol-is">《Terms of Service》</a>
                        <#--<br><a id="mall-protocol" class="i18n underline mall" name="sharder-mall-protocol-is">《Terms of Mall》</a>-->
                    </li>
                    <li>
                        <input type="submit" value=" Sign up" class="ss-main-btn theme i18n" name="sharder-register-immediately"/>
                    </li>
                </ul>
                <input type="hidden" name="captchaToken" value="">
            </form>
        </section>
    </div>
</div>
<script>
    $().ready(function () {

        var inviterId = "${inviterId!}";
        if(inviterId != null && inviterId != ''){
            $("input[name='inviterId']").attr("readonly",true);
            $.cookie('inviterId',inviterId, { expires: 30});
        }else {
            var inviterId2 = $.cookie('inviterId');
            if(inviterId2 != null || inviterId2 != ""){
                $("input[name='inviterId']").attr("readonly",true);
                $("input[name='inviterId']").val(inviterId2);
            }

        }

        $("#protocol").click(function(){
            layer.open({
                type: 1,
                skin: 'popup-hint default register-protocol',
                closeBtn:1,
                area: ['300px', '80%'], //宽高
                title:"Sharder用户协议",
                content:"<div id='register-protocol'></div>"
            });
            $("#register-protocol").load("/r/cms/resource/sharders/register-protocol.html");
        })

        $("#mall-protocol").click(function(){
            layer.open({
                type: 1,
                skin: 'popup-hint default register-protocol',
                closeBtn:1,
                area: ['300px', '80%'], //宽高
                title:"豆匣商城用户协议",
                content:"<div id='register-protocol'></div>"
            });
            $("#register-protocol").load("/r/cms/resource/sharders/mall-register-protocol.html");
        })

    })

    function executeRegister() {
        layer.load(2);
        $("#username").val($("#identification").val());
        var _form = $("#register-form");

        $("#register-form input[type='submit']").attr("disabled",true);
        var reqeustUrl =_form .attr("action");
        var _data = _form.serialize();
        commAjax(reqeustUrl,"post",_data,registerResult);
    }
    function registerResult(result) {
        layer.closeAll('loading');
        $("#guestbookCaptcha").click();
        if(!isTrue(result.success)){
            layer.msg(result.result.data.toString());
            $("#register-form input[type='submit']").removeAttr("disabled");
        }else{
            //注册成功 删除cookie
            layer.msg("Registered successfully",function () {
                $.cookie('inviterId', '', { expires: -1 });
                location.href="/login.ss";
            },1000);
        }
    }

    jquery_validate_info();
</script>
</@lay.htmlBody>