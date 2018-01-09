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
            location="${base}/logout.jspx?returnUrl=/shardersF/index.do";
        });
    });
</script>
[#if user??]
<div class="login-user">
    <div>欢迎您 <span class="username">${user.username}</span><a href="${base}/shardersF/user_center/index.do" class="user_center">个人中心</a><a id="logout" class="logout">安全退出</a></div>
</div>
[#else]
<div class="login">
    <a class="tc" href="${base}/shardersF/login.do"><div class="login_btn">登录</div></a>
    <a href="${base}/shardersF/register.do"><div class="register_btn">注册</div></a>
</div>
[/#if]