<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width,initial-scale=1,minimum-scale=1,maximum-scale=1,user-scalable=no" />
    <title class="i18n" name="candyShare">糖果分享</title>
    <meta id="i18n_pagename" content="message">
    <meta class="i18n" name="keywords" content="豆匣 sharder SS 豆匣协议 豆荚 区块链存储 豆匣矿机 重庆区块链 领取空投"/>
    <meta class="i18n" name="description" content="豆匣协议是国内首个跨链分布式存储协议，豆匣将改变整个存储世界和人类数据价值融通交换的方式."/>
    <link rel="stylesheet"  href="/r/cms/resource/sharders/css/mobile/candyShare.css?v=${version!}">
    <link rel="shortcut icon" href="https://oss.sharder.org/sharder/favicon.ico" />
    <script src="/r/cms/jquery.js" type="text/javascript"></script>
    <script src="/r/cms/resource/sharders/layui/layui.js"></script>
    <script src="/r/cms/resource/i18n/js/jquery.i18n.properties.js"></script>
    <script src="/r/cms/resource/i18n/js/language.js"></script>
    <script src="/r/cms/resource/js/jquery.cookie.js"></script>
    <script src="/r/cms/resource/sharders/js/utils.js"></script>
    <script src="/r/cms/resource/sharders/js/candy_share.js?v=${version!}"></script>
</head>
<body>
    <div class="mhome">
        <div class="chose-lang">
            <#include "/WEB-INF/ftl/sharders/lang.ftl">
        </div>
        <img src="/r/cms/resource/sharders/img/mobile/candyshare/head.png" class="head-img">
        <div class="content">
            <p class="i18n" name="sendCandy">糖果大放送</p>
            <p><span class="freeget i18n" name="freeGet">免费领取</span>55<span class="i18n" name="SSsharder">SS豆匣</span></p>
            <form action="/api/activity/airdrop.ss" method="post" id="airdrop-from">
                <div class="content-data">
                    <label class="label-data label-data-email i18n" name="sharder-phone-emil">手机/邮箱：</label>
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
                <input type="hidden" name="tokenCode" id="tokenCode">
                <input type="hidden" name="inviterId" id="inviterId">
            </form>
            <p class="activity i18n" name="activety-desc">本次活动数量有限，领完即止，豆匣协议保留最终解释权</p>
            <p class="activity-time"><span  class="i18n" name="time">活动倒计时：</span> <span class="time"></span></p>
            <div class="foot">
                <a href="http://www.sharder.org">www.sharder.org</a>
            </div>
                <input type="hidden" id="url">
        </div>
    </div>

    <div class="cowling">
        <div class="reward"></div>
        <div class="cowling-content">
                <div class="cowling-close"> <img src="/r/cms/resource/sharders/img/mobile/candyshare/close.svg"></div>
                <img class="cowling-img" src="/r/cms/resource/sharders/img/mobile/candyshare/reward.png" >
                <div class="w2">
                    <p class="cowling-text i18n" name="get-success">领取成功！请使用领取的手机或邮箱账号登录豆匣官网查看奖励。（未在官网注册用户请使用验证码登录）</p>
                    <a class="cowling-chakan i18n" name="now-chakan" href="/user_center/bounty/april.ss">立即查看</a>
                    <a class="cowling-chakan share2 i18n" id="share" name="share-url">分享链接</a>
                    <p class="cowling-shuoming"><span class="i18n" name="copy-share">复制链接分享给好友,好友领取后您将再获得100%返利</span></p>
                </div>
        </div>
    </div>
<div class="cowling-share">
    <div class="reward reward-share"></div>
    <div class="uprow">
        <img src="/r/cms/resource/sharders/img/mobile/candyshare/uprow.png">
        <p class="i18n" name="share-to-friend">请点击右上角分享给好友</p>
    </div>
    <div class="sharetips">
        <p><span class="i18n" name="share-option">点击浏览器下方</span>"<img src="/r/cms/resource/sharders/img/mobile/candyshare/gengduo.png">"<span class="i18n" name="share-option-to-frend">分享给好友</span></p>
        <p>&nbsp;&nbsp;&nbsp;<span class="i18n" name="share-option-Safari">Safari浏览器请点击</span>"<img src="/r/cms/resource/sharders/img/mobile/candyshare/fenxiang.png">"<span class="i18n" name="share-option-Safari-share">分享</span></p>
        <img src="/r/cms/resource/sharders/img/mobile/candyshare/jiantou.png" class="jiantou">
    </div>
</div>
    <script type="text/javascript">
        var pic =  setLangage("图片","pic","pic","pic");
        if(pic == "图片"){
            $(".head-img").attr("src","/r/cms/resource/sharders/img/mobile/candyshare/head.png");
            $(".cowling-img").attr("src","/r/cms/resource/sharders/img/mobile/candyshare/reward.png");
        }else {
            $(".cowling-img").attr("src","/r/cms/resource/sharders/img/mobile/candyshare/reward-english.png");
            $(".head-img").attr("src","/r/cms/resource/sharders/img/mobile/candyshare/english-head.png");
        }

        layer = layui.layer;
        layui.use(['util', 'laydate', 'layer','form'], function(){
            var util = layui.util;
            //倒计时
            var thisTimer, setActiveCountdown = function(y, M, d, H, m, s,serverTime){
                var endTime = new Date(y, M||0, d||1, H||0, m||0, s||0);//结束日期
                clearTimeout(thisTimer);
                util.countdown(endTime, serverTime, function(date, serverTime, timer){
                    var str = date[0] +  setLangage("天","d ","d ","d ")  + date[1] + setLangage("时","h ","h ","h ") +  date[2] + setLangage("分","m ","m ","m ") + date[3] + setLangage("秒","s","s","s");
                    lay('.time').html(str);
                    thisTimer = timer;
                });
            };
        <#if flag??>
            setCloseMsg("${msg!''}");
        <#else >
            setTime();
        </#if>

        <#if json??>
            <#if json.code==1>
                getSuccess("${json.userId!""}");   //第一次领取
            <#elseif json.code==2>
                getAgainSuccess("${json.userId!""}");  //第二次领取
            <#else>
                layer.msg("${json.msg!''}");
            </#if>
        </#if>

            function setTime() {
                var systemTime="${systemTime?string("yyyy-MM-dd HH:mm:ss")}";
                var aEndTime = "${param.endTime!'0'}";
                var end = new Date(Date.parse(aEndTime.replace(/-/g, "/")));
                var systime = new Date(Date.parse(systemTime.replace(/-/g, "/")));
                setActiveCountdown(end.getFullYear(),end.getMonth(),end.getDate(),end.getHours(),end.getMinutes(),end.getSeconds(),systime);
            }
        });

        function getAgainSuccess(id) {
            $('.cowling-text').css("min-height","100px").css("line-height","29px").html( setLangage( "您已经领取过奖励了，请点击下面分享链接给好友，获取更多奖励!",
                    "Reward granted. More reward available if you share the referral link below with others.",
                    "Reward granted. More reward available if you share the referral link below with others.",
                    "Reward granted. More reward available if you share the referral link below with others."));
            if(i18nLanguage != "zh-CN"){
                $('.cowling-text').css("line-height","18px")
            }
            getSuccess(id);
        }

        function getSuccess(id){
            var url = "http://"+window.location.host + "/candy/share.ss?inviterId="+id;
            $('.cowling').show("fast");
            $('#share').click(function () {
                if (/(iPhone|iPad|iPod|iOS|Android)/i.test(navigator.userAgent)) {   //如果是移动端的分享,就提示用浏览器自带的分享进行操作
                    if(is_weixn_qq()){
                        $(".cowling-share").show("fast").click(function () {
                            $(".cowling-share").hide("fast");
                            move();
                        }).find(".uprow").show("fast").parent(".cowling-share").find(".sharetips").hide();
                        stop();
                    }else {
                        $(".cowling-share").show("fast").click(function () {
                            $(".cowling-share").hide("fast");
                            move();
                        }).find(".sharetips").show("fast").parent(".cowling-share").find(".uprow").hide();
                        stop();
                    }
                } else {
                    jsCopy(url);
                };

            });
        }

        var mo=function(e){e.preventDefault();};

        /***禁止滑动***/
        function stop(){
            document.body.style.overflow='hidden';
            document.addEventListener("touchmove",mo,false);//禁止页面滑动
        }

        /***取消滑动限制***/
        function move(){
            document.body.style.overflow='';//出现滚动条
            document.removeEventListener("touchmove",mo,false);
        }

        function setCloseMsg(msg) {
            layer.msg(setCloseMsgLang(msg), {
                shade: [0.5, '#393D49'],
                time:0,
                area: ['166px;', 'auto']
            });
            $(".time").html(setCloseMsgLang(msg));
            $("input").attr("disabled","disabled");
            if(msg=="糖果发放已结束"){
                $(".time").html(setLangage("活动结束","Closed","Closed","Closed"));
            }
        }

        function setCloseMsgLang(msg) {
            if (msg == "活动已关闭") {
                return setLangage("活动已关闭", "Closed", "Closed", "Closed");
            } else if (msg == "活动已结束") {
                return setLangage("活动已结束", "Closed", "Closed", "Closed");
            } else if (msg == "活动未开始") {
                return setLangage("活动未开始", "Coming Soon", "Coming Soon", "Coming Soon");
            } else if (msg == "糖果发放已结束") {
                return setLangage("活动已结束", "Closed", "Closed", "Closed");
            }
        }

        function is_weixn_qq(){
            var ua = navigator.userAgent.toLowerCase();
            if(ua.match(/MicroMessenger/i)=="micromessenger") {
                return true;
            } else if (ua.match(/qq\//i) == "qq/") {
                return true;
            }
            return false;
        }

    </script>
</body>

</html>