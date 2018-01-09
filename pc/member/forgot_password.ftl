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
<div class="ss-container register-main forgot-pwd-main">
    <div class="ss-main">
        <section class="main-title">
            <h1 class="ss-main-title i18n" >找回登录密码</h1>
        </section>

        <section class="register-form"><!--invest/invest.do-->
            <form action="${base}/shardersF/passWord/forgotPwd.do" method="post" class="ss-form default" id="forgot-pwd-form">
                <ul>
                    <li>
                        <span class="i18n">已有账号?</span><a class="in-login i18n" href="/shardersF/login.do" >立即登录</a>
                    </li>
                    <li>
                        <label for="identification_forgot_pwd" class="i18n" name="sharder-account-number">账号:</label>
                        <input id="identification_forgot_pwd" type="text" placeholder="手机号码或邮箱" name="identification" class="required login-input" />
                    </li>
                    <li class="ss-verification-code-li" >
                        <label for="captcha"><i>*</i><span class="i18n" name="sharder-user-code">校验码:</span></label>
                        <input id="captcha" type="text" placeholder="校验码" name="captcha" class="captcha" />
                        <input type="button"  name="校验码" onclick="forgotPwdVcode(this)" value="获取验证码"/>
                    </li>
                    <input type="hidden" name="captchaToken" value="">
                    <li>
                        <input type="submit" value="下一步" class="ss-main-btn theme" />
                    </li>


                </ul>
            </form>
        </section>
    </div>
</div>

<script>

</script>
</@layout.htmlBody>