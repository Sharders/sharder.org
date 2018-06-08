<#import "/WEB-INF/ftl/sharders/pc/mobile/layout.ftl" as lay/>
<@lay.htmlHead    pagename="login">
<link rel="stylesheet" href="/r/cms/resource/sharders/css/mobile/register_login.css">

<style>
    html,body{
        height: 100%;
    }
    .register-main{
        background-image: url("/r/cms/resource/sharders/img/background.png");

        min-height: 100%;
    }
    #sharder_captcha #Captcha{
        width: 90px;
        display: inline-block;
        padding-left: 72px;
    }
    .ss-form.default label.error{
        left:0;
    }
</style>
<script>
    $(function() {
        $("#login-form").validate();
    });
</script>
</@lay.htmlHead>

<@lay.htmlBody isShowFooter=false>
<div class="ss-container register-main login-main">
    <div class="ss-main">

        <section class="main-title">
            <h1 class="ss-main-title i18n" name="welcome-login-sharder">Welcome to Sharder!</h1>
            <div class="ss-in-login"><span class="i18n" name="sharderf-account-number">Don't have an account?</span><a class="in-login i18n" href="/register.ss" name="sharder-register-immediately"> Sign up</a></div>
        </section>

        <section class="register-form register_login">
            <form action="${base}/login.jspx" method="post" class="ss-form default" id="login-form">
                <ul>
                    <li>
                        <label for="username" class="i18n" name="sharder-account-number"> UID:</label>
                        <input id="username" type="text" placeholder="Nickname" name="username" class="required login-input i18n" />
                    </li>

                    <li id="sharder_password">
                        <label for="password" class="i18n" name="sharder-user-password">Password</label>
                        <input id="password" name="password" class="required password-input i18n" type="password" placeholder="password" />
                    </li>

                    <li id="sharder_captcha" style="display: none">
                        <label for="Captcha" class="i18n" name="sharder-check-code">Ver. Code</label>
                        <input id="Captcha" name="userCaptcha" class="dengluyanzhenma" type="text" maxlength="6" required/>
                        <input type="button" class="fashongduanxin i18n" name="sharder-send" onclick="loginCaptcha('username',this)" value="Send" />
                        <input type="hidden" name="captchaToken" />
                    </li>

                    <#--<#if (errorTimes??&&errorTimes<=0)||(errorRemaining?? && errorRemaining<=0)>-->
                        <#--<li class="ss-verification-code-li">-->
                            <#--<label for="verification code"><i>*</i><span class="i18n" name="sharder-user-code"> Captcha </span></label>-->
                            <#--<input id="verification_code" type="text" maxlength="20" name="captcha"  class="imgCaptcha" />-->
                            <#--<i class="code-img"><img id="guestbookCaptcha" onclick="this.src='${base}/captcha.svl?d='+new Date()" alt="" src="${base}/captcha.svl"></i>-->
                        <#--</li>-->
                    <#--</#if>-->
                    <li>
                        <input type="submit" value=" Log in" name="sharderf-user-sign-in" class="ss-main-btn theme i18n" />
                    </li>

                    <#if message??>
                        <#if message=="true">
                            <span class="i18n" name="sharder-login-operation">You must log in to continue the operation.</span>
                        <#else>
                        ${message}
                        </#if>
                        <input type="hidden" name="message" value="${message}"/>
                    </#if>

                    <#if processUrl??><input type="hidden" name="processUrl" value="${processUrl}"/></#if>
                    <#if returnUrl??><input type="hidden" name="returnUrl" value="${returnUrl}"/><#else><input type="hidden" name="returnUrl" value="/"/></#if>
                    <#if error??>
                        <div class="error-message">
                            <#if error=="org.apache.shiro.authc.IncorrectCredentialsException">
                            <@s.ma code="error.userPasswordInfo" args=["3"]/>
                            <#elseif error=="org.apache.shiro.authc.UnknownAccountException">
                                <@s.m "error.badCredentials"/>
                            <#elseif error=="com.jeecms.common.security.CaptchaErrorException">
                                <@s.m "error.invalidCaptcha"/>
                            <#elseif error=="com.jeecms.common.security.DisabledException">
                                <@s.m "error.userDisabled"/>
                            <#elseif error=="com.jeecms.common.security.InactiveException">
                                <@s.m "error.userInActive"/>
                            <#elseif error=="org.apache.shiro.authc.LockedAccountException">
                                <@s.ma code="error.userDisabledLogin" args=["30"]/>
                            </#if>
                        </div>
                    </#if>
                    <#if success??>
                        <#if success>
                            <span class="i18n" name="sharder-login-successfully">Register successfully!</span>
                        </#if>
                    </#if>

                    <#if errorInfo??>
                        <#if errorInfo == 'USER_NOT_EXIST'>
                            <span class="i18n" name="user_not_exist" style="color: red">User doesn't exist</span>
                        </#if>
                        <#if errorInfo == 'VERIFICATION_CODE_ERROR'>
                            <span class="i18n" name="verification_code_error" style="color: red">Wrong verification code</span>
                        </#if>
                        <#if errorInfo == 'SYSTEM_IS_BUSY'>
                            <span class="i18n" name="xitongfanmang" style="color: red">System busy</span>
                        </#if>
                    </#if>

                    <li class="forget-pwd">
                        <button type="button" class="dengluqiehuan i18n" onclick="qiehuanFunc()" id="sharde_denglufangshi" name="shiyongyanzhengma">Log in with verification code</button>
                        <a class="i18n underline" name="sharder-forget-password" href="/passWord/forgotPwd.ss">Forget password?</a>
                    </li>
                </ul>
            </form>
        </section>
    </div>
</div>
<div style="display: none">
    <span id="shiyongyanzhengma" class="i18n" name="shiyongyanzhengma">Log in with verification code</span>
    <span id="shiyongmimadenglu" class="i18n" name="shiyongmimadenglu">Log in with password</span>
</div>
<script>
    var qiehuan = false;
    var loginUrl = "${base}/login.jspx";
    function qiehuanFunc() {
        $("#sharder_password").css("display","none");
        $("#sharder_captcha").css("display","none");
        if(qiehuan){
            $("#sharder_password").css("display","block");
            $("#sharde_denglufangshi").text($("#shiyongyanzhengma").text());
            $("#login-form").attr("action",loginUrl);
        }else {
            $("#sharder_captcha").css("display","block");
            $("#sharde_denglufangshi").text($("#shiyongmimadenglu").text());
            $("#login-form").attr("action","/login_captcha.ss");
        }
        qiehuan = !qiehuan;
    }


    jquery_validate_info();
</script>
</@lay.htmlBody>