<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width,initial-scale=1,minimum-scale=1,maximum-scale=1,user-scalable=no" />
    <title class="i18n" name="">邀请注册</title>
    <link rel="stylesheet"  href="/r/cms/resource/sharders/css/mobile/share.css">
    <link rel="shortcut icon" href="https://oss.sharder.org/sharder/favicon.ico" />
    <script src="/r/cms/jquery.js?v=${version!}" type="text/javascript"></script>
</head>
<body class="mhome">
<div class="ss-share-main ss-main">
    <img src="/r/cms/resource/sharders/img/teamphoto/share-background.png" class="main">
    <h1 class="ss-title1 ss-title i18n" name="">豆匣协议（Sharder Protocol）</h1>
    <h2 class="ss-title2 ss-title i18n" name="">构建跨链共享经济生态<br/>改变存储世界和人类数据价值融通交换方式</h2>

    <img src="/r/cms/resource/sharders/img/teamphoto/share-yy.png" class="yy">
    <div class="items">
        <h3 class="ss-title3 ss-title i18n" name="">邀请好友注册获取空投奖励！</h3>
        <img src="/r/cms/resource/sharders/img/share-button-zh.png" class="button">
        <#--<p class="ss-title4 ss-title i18n" name="">邀请好友成功参投更有超高返点奖励</p>-->
        <section class="ss-share">
            <a href="${registerUrl!}"><button class="main-btn i18n" id="lijicanyu">立即参与</button></a>
            <p class="detail">${inviterId!}</p>

            <img src="/r/cms/resource/sharders/img/teamphoto/share-gb.png" class="gb">
        </section>
    </div>
</div>
<script>
    var lang = "${Request.language!}";
    if(lang != "zh-CN"){
        $(".ss-share-main .ss-title3").html("Refer others to sign up Sharder and get airdrop. ");
        $(".ss-share-main .ss-title2").html("The sharing economy based on the underlying Sharder Protocol will radically change the way people store data and trade digital assets.");
        $(".ss-share-main .ss-title1").html("Sharder Protocol");
        $(".ss-share-main .items img.button").attr("src","/r/cms/resource/sharders/img/share-button-en.png");
        $("#lijicanyu").html("Join now");
    }
</script>
</body>
</html>