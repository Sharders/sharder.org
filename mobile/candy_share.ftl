<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width,initial-scale=1,minimum-scale=1,maximum-scale=1,user-scalable=no" />
    <title class="i18n" name="candyShare">糖果分享</title>
    <meta id="i18n_pagename" content="message">
    <link rel="stylesheet"  href="/r/cms/resource/sharders/css/mobile/candyShare.css?v=${version!}">
    <link rel="shortcut icon" href="https://oss.sharder.org/sharder/favicon.ico" />
    <script src="/r/cms/jquery.js" type="text/javascript"></script>
    <script src="/r/cms/resource/sharders/layui/layui.js"></script>
    <script src="/r/cms/resource/sharders/js/utils.js"></script>
    <script src="/r/cms/resource/sharders/js/candy_share.js?v=${version!}"></script>
    <script src="/r/cms/resource/i18n/js/jquery.i18n.properties.js"></script>
    <script src="/r/cms/resource/i18n/js/language.js"></script>
    <script src="/r/cms/resource/js/jquery.cookie.js"></script>
</head>
<body>
    <div class="mhome">
        <div class="chose-lang">
            <#include "/WEB-INF/ftl/sharders/lang.ftl">
        </div>
        <img src="/r/cms/resource/sharders/img/mobile/candyshare/head.png" class="head-img">
        <div class="content">
            <p class="i18n" name="sendCandy">糖果大放送</p>
            <p><span class="i18n" name="freeGet">免费领取</span>${param.SSOnePrice!'0'}<span class="i18n" name="SSsharder">SS豆匣</span></p>
            <div class="content-data">
                <label class="label-data i18n" name="sharder-phone-emil">手机/邮箱：</label>
                <input type="text" name="account" class="info">
            </div>
            <div class="content-data">
                <label class="label-data i18n"  name="sharder-user-code" >校验码:</label>
                <input type="text" name="code" class="input-code">
                <a class="code i18n" name="getCode">获取验证码</a>
            </div>
            <div class="now-get">
                <p class="i18n" name="nowget">立即领取</p>
            </div>
            <p class="activity i18n" name="activety-desc">本次活动数量有限，领完即止，豆匣协议保留最终解释权</p>
            <p class="activity-time i18n" name="time">活动倒计时：<span class="time"></span></p>
            <div class="foot">
                <a href="http://www.sharder.org">www.sharder.org</a>
            </div>
                <input type="hidden" id="url">
        </div>
    </div>
    <input type="hidden" id="tokenCode">
    <div class="cowling">
        <div class="reward"></div>
        <div class="cowling-content">
            <div class="cowling-close"> <img src="/r/cms/resource/sharders/img/mobile/candyshare/close.svg"></div>
            <img class="cowling-img" src="/r/cms/resource/sharders/img/mobile/candyshare/reward.png" >
            <p class="cowling-text i18n" name="get-success">领取成功！请使用领取的手机或邮箱账号登录豆匣官网查看奖励。（未在官网注册用户请使用验证码登录）</p>
            <a class="cowling-chakan i18n" name="now-chakan" href="/login_success.ss">立即查看<a/>
            <a class="cowling-chakan share2 i18n" id="share" name="share-url">分享链接<a/>
                <p class="cowling-shuoming"><span class="i18n" name="copy-share">复制链接分享给好友,好友领取后您将再获得</span>${param.SSTwoPrice!'0'}<span class="i18n" name="dxjl">豆匣奖励</span></p>
        </div>
    </div>
</body>
<script>
    layer = layui.layer;
    layui.use(['util', 'laydate', 'layer','form'], function(){
        var util = layui.util;
        //倒计时
        var thisTimer, setActiveCountdown = function(y, M, d, H, m, s,serverTime){
            var endTime = new Date(y, M||0, d||1, H||0, m||0, s||0);//结束日期
            clearTimeout(thisTimer);
            util.countdown(endTime, serverTime, function(date, serverTime, timer){
                var str = date[0] + '天' + date[1] + '时' +  date[2] + '分' + date[3] + '秒';
                lay('.time').html(str);
                thisTimer = timer;
            });
        };
        <#if flag??>
            setCloseMsg("${msg!''}");
        <#else >
            setTime();
        </#if>

        function setTime() {
            var systemTime="${systemTime?string("yyyy-MM-dd HH:mm:ss")}";
            var aEndTime = "${param.endTime!'0'}";
            var end = new Date(Date.parse(aEndTime.replace(/-/g, "/")));
            var systime = new Date(Date.parse(systemTime.replace(/-/g, "/")));
            setActiveCountdown(end.getFullYear(),end.getMonth(),end.getDate(),end.getHours(),end.getMinutes(),end.getSeconds(),systime);
        }
    });

    function setCloseMsg(msg) {
        msg =  setLangage(msg);
        layer.msg(msg, {
            shade: [0.5, '#393D49'],
            time:0,
            area: ['166px;', 'auto']
        });
        $(".time").html("${msg!''}");
        $("input").attr("disabled","disabled");
        if(msg=="糖果发放已结束"){
            $(".time").html("活动结束");
        }
    }

    function setLangage(msg) {

    }
</script>
</html>