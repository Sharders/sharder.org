<@layout.htmlHead title="我就是标题" keywords="我就是标题" description="我就是标题">
<link rel="stylesheet" href="/r/cms/resource/sharders/css/register_login.css">

<style>
    html,body{
        height: 100%;
    }
    .register-main{
        background-image: url("/r/cms/resource/sharders/img/background.png");
        height: 100%;
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
            <h1 class="ss-main-title">欢迎您登录豆匣协议</h1>
        </section>

        <section class="register-form"><!--invest/invest.do-->
            <form action="${base}/login.jspx?returnUrl=/shardersF/invest/invest.do&failureUrl=/shardersF/login.jspx" method="post" class="ss-form default" id="login-form">
                <ul>

                    <li>
                        还没有账号?<a class="in-login" href="register.do">立即注册</a>
                    </li>
                    <li>
                        <label for="username">账号:</label>
                        <input id="username" type="text" placeholder="手机号码或邮箱" name="username" class="required login-input" />
                    </li>
                    <li>
                        <label for="password">密码:</label>
                        <input id="password" name="password" class="required password-input" type="password" placeholder="密码" />
                    </li>
                    <#if (errorTimes??&&errorTimes<=0)||(errorRemaining?? && errorRemaining<=0)>
                        <li class="ss-verification-code-li">
                            <label for="verification code"><i>*</i>校验码:</label>
                            <input id="verification_code" type="text" maxlength="20" name="captcha" class="captcha" />
                            <i class="code-img"><img id="guestbookCaptcha" onclick="this.src='${base}/captcha.svl?d='+new Date()" alt="" src="${base}/captcha.svl"></i>
                        </li>
                    </#if>
                    <li>
                        <input type="submit" value="立即登录" class="ss-main-btn theme" />
                    </li>
                </ul>
            </form>
        </section>

    </div>
</div>
</@layout.htmlBody>