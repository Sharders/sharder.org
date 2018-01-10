<@layout.htmlHead title="我就是标题" keywords="我就是标题" description="我就是标题"  pagename="login">
<link rel="stylesheet" href="/r/cms/resource/sharders/css/register_login.css">

<style>
    html,body{
        height: 100%;
    }
    .register-main{
        background-image: url("/r/cms/resource/sharders/img/background.png");
        min-height: 100%;
    }
</style>
<script>
    $(function() {
        $("#login-form").validate();
    });
</script>
</@layout.htmlHead>

<@layout.htmlBody isShowFooter=false>
<div class="ss-container register-main login-main">
    <div class="ss-main">
        <section class="main-title">
            <h1 class="ss-main-title i18n" name="welcome-registration-sharderf">欢迎您登录豆匣协议</h1>
        </section>

        <section class="register-form"><!--invest/invest.do-->
            <form action="${base}/login.jspx?returnUrl=/shardersF/login_success.do&failureUrl=/shardersF/login.do" method="post" class="ss-form default" id="login-form">
                <ul>

                    <li>
                        <span class="i18n" name="sharderf-account-number">没有账号?</span><a class="in-login i18n" href="/shardersF/register.do" name="sharder-log-in-immediately">立即注册</a>
                    </li>
                    <li>
                        <label for="username" class="i18n" name="sharder-account-number">账号:</label>
                        <input id="username" type="text" placeholder="手机号码或邮箱" name="username" class="required login-input" />
                    </li>
                    <li>
                        <label for="password" class="i18n" name="sharder-user-password">密码:</label>
                        <input id="password" name="password" class="required password-input" type="password" placeholder="密码" />
                    </li>
                    <#if (errorTimes??&&errorTimes<=0)||(errorRemaining?? && errorRemaining<=0)>
                        <li class="ss-verification-code-li">
                            <label for="verification code"><i>*</i><span class="i18n" name="sharder-user-code">校验码:</span></label>
                            <input id="verification_code" type="text" maxlength="20" name="captcha" class="captcha" />
                            <i class="code-img"><img id="guestbookCaptcha" onclick="this.src='${base}/captcha.svl?d='+new Date()" alt="" src="${base}/captcha.svl"></i>
                        </li>
                    </#if>
                    <li>
                        <input type="submit" value="立即登录" class="ss-main-btn theme" />
                    </li>
                    <li style="text-align: right">
                        <a class="i18n" name="sharder-forget-password" href="/shardersF/passWord/forgotPwd.do">忘记密码？</a>
                    </li>
                    <#if message??>
                        <#if message=="true">
                            您必须登录后才能继续刚才的操作
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
                            <@s.m "error.invalidPassword"/>
                            <#elseif error=="org.apache.shiro.authc.UnknownAccountException">
                                <@s.m "error.usernameNotExist"/>
                            <#elseif error=="com.jeecms.common.security.CaptchaErrorException">
                                <@s.m "error.invalidCaptcha"/>
                            <#elseif error=="com.jeecms.common.security.DisabledException">
                                <@s.m "error.userDisabled"/>
                            <#elseif error=="com.jeecms.common.security.InactiveException">
                                <@s.m "error.userInActive"/>
                            </#if>
                        </div>
                    </#if>
                    <#if success??>
                        <#if success>
                            注册成功！
                        </#if>
                    </#if>
                </ul>
            </form>
        </section>

    </div>
</div>
</@layout.htmlBody>