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
    <link rel="stylesheet" href="/r/cms/resource/sharders/layui/css/layui.css">
    <script src="/thirdparty/ueditor/third-party/jquery-1.10.2.js"></script>
    <script src="/r/cms/resource/i18n/js/jquery.i18n.properties.js"></script>
    <script src="/r/cms/resource/i18n/js/language.js"></script>
    <script src="/r/cms/resource/js/jquery.cookie.js"></script>
    <script src="/r/cms/resource/sharders/layui/layui.js"></script>
</head>
<body>
    <div class="container con2">
        <div class="fn-item">
            <iframe width="100%" id="iframe1"  scrolling="auto" allowtransparency="yes" style="height: 100%"></iframe>
        </div>
        <div class="pdf-btn">
            <button class="chakan i18m" name="down" onclick="PdffileList()">文件列表</button>
            <button class="chakan i18n" name="down" onclick="openDown('${url!''}')">下载</button>
        </div>
    </div>
    <div class="flow-0">
        <div class="flow-1"></div>
        <div class="flow-2">
            <img src="/r/cms/Spinner2.svg">
            <p class="i18n" name="pro">${filename!"文档"}加载中，请稍候</p>
        </div>
    </div>
</body>
<div id="pdfList" style="display: none">
    <#list pdfGroups as item>
        <p class="pdf-left-catalog" id="group-${item.id}">${item.groupName!''} <img src="/r/cms/resource/sharders/img/row.svg"></p>
        <div class="pdf-list">
            <#list item.pdfList as item2>
                <#if item2??>
                    <a href="/pdf/preview.ss?type=${item2.id}" ><p class="pdf-left-file" id="pdf-${item2.id}">${item2.filename}</p></a>
                </#if>
            </#list>
        </div>
    </#list>
</div>
<script>
    $(function(){
        initpdfList();
        $("#iframe1").attr("src",'/r/cms/pdf/generic/web/viewer.html?file=' + encodeURIComponent('/pdf/view.ss?url='+'${url!''}'));
        storage=window.localStorage;
        storage.a=1;
        $('.chose-lang').find('img').css('top','-2px');
    });
    var interval = setInterval('showProess()', 1000);
    function  showProess() {
        var storage=window.localStorage;
        if(storage['a']==2){
            clearInterval(interval);
            $('.flow-0').hide();
        }
    }

    function openDown(url) {
        window.location.href=url;
    }

    function initpdfList() {
        <#if catalog??>
            $('#group-${catalog!''}').next().slideToggle("slow");
            $('#group-${catalog!''}').find('img').css("transform","rotate(90deg)");
            $('#pdf-${type!''}').addClass("pdf-active");
        </#if>
            $('.pdf-down').hover(function () {
                $(this).find('a').css('color','#ffffff')
            },function () {
                $(this).find('a').css('color','#0ba0d1')
            });

            $('.pdf-left-catalog').click(function () {
                v =  $(this).next().css('display');
                $(this).next().slideToggle("slow");
                console.log(v);
                if(v=="none"){
                    $(this).find('img').css("transform","rotate(90deg)");
                }else {
                    $(this).find('img').css("transform","rotate(-0deg)");
                }

            });
    }
    
    function PdffileList() {
        layui.use('layer', function(){
            layer = layui.layer;
            layer.open({
                type: 1,
                skin: 'layui-layer-rim', //加上边框
                title:"文件列表",
                area: ['360px', '372px'], //宽高
                content: $('#pdfList')
            });
        })
    }
</script>
</html>