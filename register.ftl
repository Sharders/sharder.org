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

<script type="text/javascript">
        $(function() {
            $("#register-form").validate({
                rules: {
                    protocol:"required"
                },
                messages: {
                    protocol:"请先同意服务条款"
                }
            });
            $("#guestbookCaptcha").click();
        });
</script>

</@layout.htmlHead>

<@layout.htmlBody isShowFooter=false>
<div class="ss-container register-main">
    <div class="ss-main">
        <section class="main-title">
            <h1 class="ss-main-title">欢迎您注册豆匣协议</h1>
        </section>
        <section class="register-form">
            <form action="${base}/shardersF/register.do?returnUrl=/forum/index.jhtml" method="post"  class="ss-form default" id="register-form">
                <ul>
                    <li class="register-method">
                        <a class="selected">{{regTitle}}</a>
                        <a @click="selectRegMethod">{{candidateTitle}}</a>
                    </li>
                    <li>
                        已有账号?<a class="in-login" href="login.do">登录</a>
                    </li>
                    <li>
                        <label for="username"><i>*</i>用户名:</label>
                        <input id="username" type="text" placeholder="用户名" vld="{rangelength:[${site.usernameMinLen},20],username:true,remote:'username_unique.jspx',messages:{remote:'用户名已存在'}}" name="username" class="username" />
                        <input type="hidden" name="inviterId" id="inviterId" value="${inviterId!''}">
                    </li>
                    <li v-if="regTitle=='手机注册'">
                        <label for="password"><i>*</i>手机号:</label>
                        <input id="phone" type="text" placeholder="手机号" name="phone" class="phone"/>
                    </li>
                    <li v-else>
                        <label for="password"><i>*</i>邮箱:</label>
                        <input type="text" id="email" maxlength="30" vld="{remote:'email_unique.jspx',messages:{remote:'email已被使用！'}}" name="email" placeholder="用于找回密码" class="register-input" />
                    </li>
                    <li class="ss-verification-code-li" >
                        <label for="phone"><i>*</i>校验码:</label>
                        <input id="phone" type="text" placeholder="校验码" name="phone" class="phone"/>
                        <input type="button"  name="校验码" class="" value="获取验证码"/>
                    </li>
                    <li>
                        <label for="password"><i>*</i>设置密码:</label>
                        <input id="password" type="password" name="loginPassword" vld="{rangelength:[${site.passwordMinLen},20]}" class="passwod" />
                    </li>
                    <li>
                        <label for="confirm_password"><i>*</i>确认密码:</label>

                        <input type="password" equalto="#password" vld="{rangelength:[${site.passwordMinLen},20]}" class="password" />
                    </li>
                    <li>
                        <label for="verification code">推荐人ID(选填):</label>
                        <input id="referrer" type="text" placeholder="推荐人ID(选填)" name="inviterId" class="" value=""/>
                    </li>
                    <li class="ss-verification-code-li">
                        <label for="verification code"><i>*</i>校验码:</label>
                        <input id="verification_code" type="text" maxlength="20" name="captcha" class="captcha" />
                        <i class="code-img"><img id="guestbookCaptcha" onclick="this.src='${base}/captcha.svl?d='+new Date()" alt="" src="${base}/captcha.svl"></i>
                    </li>
                    <li class="register-protocol">
                        <input type="checkbox" name="protocol"><label>我已阅读并同意<a id="protocol">《Sharder用户协议》</a></label>
                    </li>
                    <li>
                        <input type="submit" value="立即注册" class="ss-main-btn theme" />
                    </li>
                </ul>
            </form>
        </section>
    </div>
</div>
<script src="${resSys}/resource/sharders/js/layer.js" type="text/javascript"></script>
<script>
    $().ready(function () {
        $("#protocol").click(function(){
            layer.open({
                type: 1,
                skin: 'popup-hint default register-protocol',
                closeBtn:1,
                area: ['710px', '800px'], //宽高
                title:"Sharder用户协议",
                content:"<div id='register-protocol'></div>"
            });
            $("#register-protocol").load("/r/cms/resource/sharders/register-protocol.html");
        })
    })

    var app = new Vue({
        el:'#register-form',
        data:{
            regTitle:"手机注册",
            candidateTitle:"使用邮箱注册",
        },
        methods:{
            selectRegMethod:function () {

                if("使用邮箱注册" == app.candidateTitle){
                    app.regTitle = "使用邮箱注册";
                    app.candidateTitle = "手机注册";

                }else{
                    app.regTitle = "手机注册";
                    app.candidateTitle = "使用邮箱注册";
                }
            }
        }
    })
</script>
</@layout.htmlBody>