<!DOCTYPE html>
<head>
    <title>豆匣协议-白皮书</title>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <meta name="viewport" content="width=device-width,initial-scale=1,minimum-scale=1,maximum-scale=1,user-scalable=no" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <#--<link rel="shortcut icon" type="image/x-icon" href="${systemSetting().shortcuticon}" />-->
    <link rel="stylesheet" href="/r/cms/resource/css/bootstrap.min.css" type="text/css" />
    <link rel="stylesheet" href="/r/cms/pdf/css/pdf.css" type="text/css" />
    <#--<link href="/r/cms/pdf/css/jquery.touchPDF.css" rel="stylesheet" media="screen" />-->
</head>

<body>
    <div class="container con2">
        <div class="fn-item">
            <iframe width="100%" id="iframe1"  scrolling="auto" allowtransparency="yes" style="height: 100%"></iframe>
        </div>
        <div class="row row2">
            <div class="col-xs-4">
                <div class="left-1">
                    <div class="tech">技术白皮书<br>TECHNICAL WHITE PAPER</div>
                    <div class="zh-en">
                        <a href="/pdflist.ss?type=urlTechZh" target="_blank">
                            <button class="down-btn">中文<i class="fa fa-arrow-circle-o-down" aria-hidden="true"></i></button>
                        </a>
                        <#--<a href="/pdflist.ss?type=urlTechEn" target="_blank">-->
                        <a href="JavaScript:alert('正在架设中...')" target="_blank">
                            <button class="down-btn">英文<i class="fa fa-arrow-circle-o-down" aria-hidden="true"></i></button></a>
                    </div>
                </div>
            </div>
            <div class="col-xs-4" style="text-align: center;">
                <a href="${url!''}" target="_blank">
                    <button class="chakan">查看<i class="fa fa-arrow-circle-o-down" aria-hidden="true"></i></button></a>
            </div>
            <div class="col-xs-4">
                <div class="right-2">
                    <div class="tech">经济白皮书<br>ECONOMIC WHITE PAPER</div>
                    <div  class="zh-en">
                        <a href="/pdflist.ss?type=urlEncoZh" target="_blank">
                            <button class="down-btn">中文<i class="fa fa-arrow-circle-o-down" aria-hidden="true"></i></button></a>
                        <#--<a href="/pdflist.ss?type=urlEncoEn" target="_blank">-->
                        <a href="JavaScript:alert('正在架设中...')" target="_blank">
                            <button class="down-btn">英文<i class="fa fa-arrow-circle-o-down" aria-hidden="true"></i></button></a>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div>
</body>
<script src="/thirdparty/ueditor/third-party/jquery-1.10.2.js"></script>
<script>
    $(function(){
        $("#iframe1").attr("src",'/r/cms/pdf/generic/web/viewer.html?file=' + encodeURIComponent('/previewpdf.ss?type=${chose}'));
    });
</script>
</html>