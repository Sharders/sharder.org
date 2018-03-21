<@layout.htmlHead     pagename="login">
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
        $("#forgot-pwd-form").validate({
            submitHandler: function() {
                pc.verifyIdentity();
            }
        });
    });
    $(function() {
        $("#set-pwd-form").validate({
            submitHandler: function() {
                pc.setPwd();
            }
        });
    });

</script>
</@layout.htmlHead>

<@layout.htmlBody isShowFooter=false>
<div class="ss-container register-main forgot-pwd-main" id="forgot-pwd-main">
    <div class="ss-main">
        <section class="main-title">
            <h1 class="ss-main-title i18n" name="retrieve-login-password">Retrieve the login password</h1>
        </section>

        <section class="register-form verify-identity-form">
            <form action="${base}/passWord/forgotPwd.ss"  class="ss-form default" id="forgot-pwd-form">
                <ul>
                    <li>
                        <span class="i18n" name="sharderf-account-number-exist">Have an account?</span><a class="in-login i18n" href="/login.ss" name="sharderf-user-sign-in"> Log in</a>
                    </li>
                    <li>
                        <label for="identification_forgot_pwd" class="i18n" name="sharder-account-number"> UID:</label>
                        <input id="identification_forgot_pwd" type="text" placeholder="Mobile phone number or email address."  vld="{remote:'/user_center/isexist.ss',messages:{remote:'手机或邮箱不存在！'}}" name="identification"  class="required login-input i18n" />
                    </li>
                    <li class="ss-verification-code-li" >
                        <label for="captcha"><i>*</i><span class="i18n" name="sharder-check-code">Ver. Code</span></label>
                        <input id="captcha" type="text" placeholder="Check code" name="captcha" class="captcha i18n" />
                        <input type="button"  class="i18n" name="sharder-send" onclick="forgotPwdVcode(this)" value="Send"/>
                    </li>
                    <input type="hidden" name="captchaToken" value="">
                    <li>
                        <input type="submit" value="Next" class="ss-main-btn theme i18n" name="the-next-step" />
                    </li>
                </ul>
            </form>
        </section>

        <section class="register-form set-pwd-main" style="display: none;"><!--invest/invest.do-->
            <form action="${base}/passWord/forgotPwd.ss" method="post" class="ss-form default" id="set-pwd-form">
                <ul>
                    <li>
                        <label for="password"><i>*</i><span class="i18n" name="sharder-user-password">Password</span></label>
                        <input id="password" type="password" name="password" vld="{rangelength:[${site.passwordMinLen},20]}" class="passwod" autocomplete="off" disableautocomplete/>
                    </li>
                    <li>
                        <label for="confirm_password"><i>*</i><span class="i18n" name="sharder-user-pwd">Confirm password</span></label>

                        <input type="password" equalto="#password" vld="{rangelength:[${site.passwordMinLen},20]}" class="password" autocomplete="off" disableautocomplete/>
                    </li>
                    <input type="hidden" name="token" value="">
                    <li>
                        <input type="submit" value="Next" class="ss-main-btn theme i18n" name="the-next-step"/>
                    </li>
                </ul>
            </form>
        </section>
    </div>
</div>

<script>
    var pc = new Vue({
        el:'#forgot-pwd-main',
        data:{

        },
        methods:{
            verifyIdentity:function () {
//                alert("执行了");
                var requestUrl = "/user_center/verification_code.ss";
                var data = $("#forgot-pwd-form").serialize();
                layer.load(2);
                commAjax(requestUrl,"post",data,pc.verifyIdentityReuslt);

            },
            verifyIdentityReuslt:function(_result){
                layer.closeAll('loading');
                if (!isTrue(_result.success)){
                    layer.msg(_result.message);
                }else{
                    $(".verify-identity-form").css("display","none");
                    $(".set-pwd-main").css("display","block");
                    $("#set-pwd-form input[name='token']").val(_result.result.token);
                }
            },

            setPwd:function () {
                var requestUrl = "/passWord/forgotPwd.ss";
                var data = $("#set-pwd-form").serialize();
                commAjax(requestUrl,"post",data,pc.setPwdResult);
            },
            
            setPwdResult:function (result) {
                if (!isTrue(result.success)){
                    layer.msg(result.message);
                }else{
                    location.href="/login.ss";
                }

            }
        }
    })

</script>
</@layout.htmlBody>