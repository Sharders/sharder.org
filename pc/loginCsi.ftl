[#if site.config.qqEnable]
<script type="text/javascript" src="http://qzonestyle.gtimg.cn/qzone/openapi/qc.js#appId=${site.config.qqID!}" charset="utf-8"></script>
[/#if]
[#if site.config.sinaEnable]
<script src="http://tjs.sjs.sinajs.cn/open/api/js/wb.js?appkey=${site.config.sinaID!}" type="text/javascript" charset="utf-8"></script>
[/#if]
[#if site.config.qqWeboEnable]
<script type="text/javascript" src="http://mat1.gtimg.com/app/openjs/openjs.js"></script>
[/#if]
<script type="text/javascript">
    $(function() {
        //优先执行第三方退出 在执行本地退出
        $('#logout').click(function () {
            [#if site.config.qqEnable]
            //退出qq
            if(QC.Login.check()){
                QC.Login.signOut();
            }
            [/#if]
            [#if site.config.sinaEnable]
            if(WB2.checkLogin()){
                WB2.logout(function() {
                    //callback function
                });
            }
            [/#if]
            [#if site.config.qqWeboEnable]
            T.init({
                appkey: ${site.config.qqWeboID!}
            });
            if(T.loginStatus()){
                T.logout(function (loginStatus) { // 登出用户
                    // 登录成功
                });
            }
            [/#if]
            location="${base}/logout.jspx?returnUrl=/index.ss";
        });
    });
</script>
[#if user??]
<div class="login-user">
    <div><span class="i18n" name="sharder-account-welcome">欢迎您 </span><span class="username">${user.username}</span><a href="${base}/user_center/index.ss" class="user_center ss-hover-effect i18n" name="account.center">个人中心</a><a id="logout" class="logout ss-hover-effect i18n" name="sharder-account-log-out">安全退出</a></div>
</div>
[#else]
<div class="login i18n">
    <a  href="${base}/login.ss"><div class="login_btn ss-hover-effect i18n"  name="account.denglu">登录</div></a>
    <a  href="${base}/register.ss" ><div class="register_btn ss-hover-effect i18n" name="account.zhuce">注册</div></a>
</div>
[/#if]