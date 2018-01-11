<#import "/WEB-INF/ftl/sharders/pc/mobile/layout.ftl" as lay/>
<@lay.htmlHead title="我就是标题" keywords="我就是标题" description="我就是标题" pagename="register">

<link rel="stylesheet" href="/r/cms/resource/sharders/css/mobile/register_login.css">
<style>
    html,body{
        height: 100%;
    }
    .register-main{
        background-image: url("/r/cms/resource/sharders/img/background.png");
        min-height: 100%;
    }
</style>

<script type="text/javascript">
        $(function() {
           window.register =  $("#register-form").validate({
                rules: {
                    protocol:"required"
                },
                messages: {
                    protocol:"请先同意服务条款"
                },
               submitHandler: function() {
                   executeRegister();
               }
            });
            $("#guestbookCaptcha").click();
        });
</script>

</@lay.htmlHead>

<@lay.htmlBody isShowFooter=false >
<div class="ss-container register-main">
    <div class="ss-main">
        <section class="main-title">
            <h1 class="ss-main-title i18n" name="welcome-registration-sharderf">欢迎您注册豆匣协议</h1>
            <div class="ss-in-login"><span class="i18n" name="sharderf-account-number">已有账号?</span><a class="in-login i18n" href="/shardersF/login.do" name="sharderf-user-sign-in">登录</a></div>
        </section>
        <section class="register-form register_login">
            <form action="${base}/shardersF/register_.do?returnUrl=/shardersF/login.do" method="post"  class="ss-form default" id="register-form">
                <ul>
                    <li>
                        <label for="username"><i>*</i><span class="i18n" name="sharder-sign-in-username">用户名:</span></label>
                        <input id="username" type="text" vld="{rangelength:[${site.usernameMinLen},20],username:true,remote:'username_unique.jspx',messages:{remote:'用户名已存在'}}" name="username" class="username" />
                    </li>
                    <li >
                        <label for="identification"><i>*</i><span class="i18n" name="sharder-user-emil">手机/邮箱:</span></label>
                        <input type="text" id="identification" maxlength="30" vld="{remote:'/shardersF/user_center/is_not_exist.do',messages:{remote:'手机或邮箱已被使用！'}}" name="identification"  class="register-input" />
                    </li>
                    <li class="ss-verification-code-li" >
                        <label for="captcha"><i>*</i><span class="i18n" name="sharder-user-code">校验码:</span></label>
                        <input id="captcha" type="text"  name="captcha" class="captcha"/>
                        <input type="button"  name="校验码" onclick="registerVcode('identification',this)" value="获取验证码"/>
                    </li>
                    <li>
                        <label for="password"><i>*</i><span class="i18n" name="sharder-user-password">设置密码:</span></label>
                        <input id="password" type="password" name="loginPassword" vld="{rangelength:[${site.passwordMinLen},20]}" class="passwod password" autocomplete="off" disableautocomplete/>
                    </li>
                    <li>
                        <label for="confirm_password"><i>*</i><span class="i18n" name="sharder-user-pwd">确认密码:</span></label>
                        <input type="password" equalto="#password" vld="{rangelength:[${site.passwordMinLen},20]}" class="password password" autocomplete="off" disableautocomplete/>
                    </li>
                    <li>
                        <label for="verification code"><span class="i18n" name="sharder-sign-recommend">推荐人ID</span></label>
                        <input id="referrer" type="text" placeholder="推荐人ID(选填)" name="inviterId" class="" value="${inviterId!}"/>
                    </li>
                    <li class="ss-verification-code-li">
                        <label for="verification code"><i>*</i><span class="i18n" name="sharder-sign-verification-code">校验码:</span></label>
                        <input id="verification_code" type="text" maxlength="20" name="imgCaptcha" class="imgCaptcha" />
                        <i class="code-img"><img id="guestbookCaptcha" onclick="this.src='${base}/captcha.svl?d='+new Date()" alt="" src="${base}/captcha.svl"></i>
                    </li>
                    <li class="register-protocol">
                        <input type="checkbox" name="protocol" checked><span class="i18n" name="sharder-user-protocol">我已阅读并同意</span><a id="protocol" class="i18n" name="sharder-user-protocol-is">《Sharder用户协议》</a>
                    </li>
                    <li>
                        <input type="submit" value="立即注册" class="ss-main-btn theme"/>
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
            console.log(inviterId);
            console.log("========");
            $.cookie('inviterId',inviterId, { expires: 30});
        }else {
            console.log("=====+_____-");
            $("input[name='inviterId']").val($.cookie('inviterId'));
        }

        $("#protocol").click(function(){
            layer.open({
                type: 1,
                skin: 'popup-hint default register-protocol',
                closeBtn:1,
                area: ['300px', '500px'], //宽高
                title:"Sharder用户协议",
                content:"<div id='register-protocol'></div>"
            });
            $("#register-protocol").load("/r/cms/resource/sharders/register-protocol.html");
        })
    })
    
    function executeRegister() {
        var _form = $("#register-form");
        var reqeustUrl =_form .attr("action");
        var _data = _form.serialize();

        commAjax(reqeustUrl,"post",_data,registerResult);
    }
    
    function registerResult(result) {
        if(!isTrue(result.success)){
            alert(result.result.data.toString())
        }else{
            location.href="/shardersF/login.do";
        }
    }

</script>
</@lay.htmlBody>