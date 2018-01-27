<!DOCTYPE html>
<head>
    <title class="i18n" name="title-douxia-white-book">豆匣协议-白皮书</title>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <meta id="i18n_pagename" content="message">
    <meta name="viewport" content="width=device-width,initial-scale=1,minimum-scale=1,maximum-scale=1,user-scalable=no" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <link rel="shortcut icon" href="https://oss.sharder.org/sharder/favicon.ico" />
    <link rel="stylesheet" href="/r/cms/resource/css/bootstrap.min.css" type="text/css" />
    <link rel="stylesheet" href="/r/cms/pdf/css/pdf.css" type="text/css" />
    <script src="/thirdparty/ueditor/third-party/jquery-1.10.2.js"></script>
    <script src="/r/cms/resource/i18n/js/jquery.i18n.properties.js"></script>
    <script src="/r/cms/resource/i18n/js/language.js"></script>
    <script src="/r/cms/resource/js/jquery.cookie.js"></script>
</head>

<body>
    <div class="container con2">
        <div class="fn-item">
            <div class="chose-lang">
              <#include "/WEB-INF/ftl/sharders/lang.ftl">
            </div>
            <iframe width="100%" id="iframe1"  scrolling="auto" allowtransparency="yes" style="height: 100%"></iframe>
        </div>
        <div class="row row2">
            <div class="col-xs-4 col ">
                <div class="left-1">
                    <#--<br>TECHNICAL WHITE PAPER-->
                    <div class="tech i18n" name="tech-white-book">技术白皮书</div>
                    <div class="zh-en">
                        <a href="/whitepaper/preview.ss?type=urlTechZh" target="_blank">
                            <button class="down-btn <#if "2"==flag>active</#if> i18n" name="ch">中文<i class="fa fa-arrow-circle-o-down" aria-hidden="true"></i></button>
                        </a>

                        <#--<a href="JavaScript:void('')" target="_blank">-->
                            <#--<button class="down-btn i18n closed"  name="zh">中文<i class="fa fa-arrow-circle-o-down" aria-hidden="true"></i></button>-->
                        <#--</a>-->
                        <#--<a href="/whitepaper/preview.ss?type=urlTechEn" target="_blank">-->
                        <a href="JavaScript:void('')" target="_blank">
                            <button class="down-btn i18n closed"  name="en">EN<i class="fa fa-arrow-circle-o-down" aria-hidden="true"></i></button>
                        </a>
                    </div>
                </div>
            </div>
            <div class="col-xs-4 col down-div">
                <span class="shu"></span><a href="${url!''}" target="_blank">
                    <button class="chakan i18n" name="down">下载<i class="fa fa-arrow-circle-o-down" aria-hidden="true"></i></button></a><span class="shu"></span>
            </div>
            <div class="col-xs-4 col">
                <div class="right-2">
                    <div class="tech i18n" name="white-book">白皮书</div>
                    <div  class="zh-en">
                        <a href="/whitepaper/preview.ss?type=urlEncoZh" target="_blank">
                            <button class="down-btn <#if "3"==flag>active</#if> i18n" name="ch">中文<i class="fa fa-arrow-circle-o-down" aria-hidden="true"></i></button></a>
                        <a href="/whitepaper/preview.ss?type=urlEncoEn" target="_blank">
                            <button class="down-btn <#if "4"==flag>active</#if> i18n" name="en">EN<i class="fa fa-arrow-circle-o-down" aria-hidden="true"></i></button></a>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div>
        <div class="flow-0">
            <div class="flow-1"></div>
            <div class="flow-2">
                <img src="/r/cms/Spinner2.svg">
                <p class="i18n" name="pro">白皮书加载中，请稍候......</p>
            </div>
        </div>
</body>
<script>
    $(function(){
        $("#iframe1").attr("src",'/r/cms/pdf/generic/web/viewer.html?file=' + encodeURIComponent('/whitepaper/download.ss?type='+'${chose}'));
        storage=window.localStorage;
        storage.a=1;
    });
    var interval = setInterval('showProess()', 1000);
    function  showProess() {
        var storage=window.localStorage;
        if(storage['a']==2){
            clearInterval(interval);
            $('.flow-0').hide();
        }
    }
</script>
</html>