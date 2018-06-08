<style>
    #invest_protocol {
        padding-left: 20px;
        padding-right: 20px;
        word-wrap: break-word;
    }

    #crowdsale_terms {
        background-color: #ffffff;
        color: #333333;
        position: relative;
    }

    #crowdsale_terms .info .terms {
        color: #0BA0D1;
        text-decoration: none;
        border-bottom: 1px solid #0BA0D1;
    }

    #crowdsale_terms .info input[type='checkbox'] {
        width: 20px;
        height: 20px;
        margin-right: 10px;
        position: relative;
        top: 6px;
    }

    #crowdsale_terms .content {
        margin: auto;
        width: 98%;
        text-align: center;
    }

    #crowdsale_terms input[type='button'] {
        border-radius: 60px;
        width: 460px;
        color: #ffffff;
        margin: 60px 0px;
        height: 60px;
        border: none;
        background-color: #0BA0D1;
        cursor: pointer;
        font-size: 20px;
    }

    #crowdsale_terms #terms {
        position: absolute;
    }

    #crowdsale_terms .file_kyc {
        width: 460px;
        height: 140px;
        border-radius: 4px;
        cursor: pointer;
        position: relative;
        z-index: 999999;
        opacity: 0;
    }

    #crowdsale_terms .file_kyc_div {
        width: 460px;
        height: 140px;
        border-radius: 4px;
        border: 2px dashed #999999;
        margin: auto;
        background: url("/r/cms/resource/sharders/img/upload.png") no-repeat center;
    }

    #crowdsale_terms .kyc_title {
        padding: 20px 0px;
        font-size: 14px;
        color: #0BA0D1;
    }

    #crowdsale_terms .kyc_info {
        margin-top: 10px;
        font-size: 14px;
        color: #333333;
    }

    @media (min-width: 640px) {
        #crowdsale_terms {
            margin-top: 20px;
        }

        #crowdsale_terms h2.title {
            padding-bottom: 20px;
            padding-top: 50px;
            font-size: 26px;
            font-weight: bold;
            color: #333333;
        }

        #crowdsale_terms .content .text-info {
            font-size: 20px;
            padding-bottom: 22px;
        }

        #crowdsale_terms .content .info {
            font-size: 20px;
            padding-bottom: 20px;
            text-align: left;
            padding-left: 33%;
        }

        #crowdsale_terms #terms {
            margin-left: -19%;
            margin-top: 3px;
            width: 18px;
            height: 18px;
        }
    }

    @media (max-width: 640px) {
        #crowdsale_terms .content .text-info {
            font-size: 12px;
            padding-bottom: 14px;
            text-align: center;
            width: 91%;
            margin: auto;
        }

        #crowdsale_terms h2.title {
            padding-bottom: 11px;
            padding-top: 20px;
            font-size: 17px;
            font-weight: bold;
            color: #333333;
        }

        #crowdsale_terms input[type='button'] {
            width: 250px;
            height: 30px;
            font-size: 13px;
        }

        #crowdsale_terms .content .info {
            font-size: 12px;
            padding-bottom: 10px;
            text-align: left;
            padding-left: 15%;
        }

        #crowdsale_terms .info input[type='checkbox'] {
            width: 12px;
            height: 12px;
            top: 3px;
            margin-right: 4px;
        }

        #crowdsale_terms input[type='button'] {
            margin-bottom: 20px;
            margin-top: 20px;
        }

        #crowdsale_terms #terms {
            margin-left: -39%;
        }

        #crowdsale_terms .file_kyc_div {
            width: 90%;
            height: 120px;
        }

        #crowdsale_terms .file_kyc {
            width: 100%;
            height: 120px;
        }

        #crowdsale_terms .file_kyc_div {
            background-size: 37px;
        }

        #crowdsale_terms .kyc_info {
            font-size: 12px;
        }
    }

</style>
<section id="crowdsale_terms">
    <div class="content">
        <form id="confirm_protocol_form" enctype="multipart/form-data">
            <h2 class="title i18n" name="sharder-to-inform">敬告:中国、美国及加拿大公民或居民</h2>
            <p class="text-info i18n" name="sharder-to-inform-text">如果您是中国公民、美国公民(美国绿卡持有者)或加拿大公民，则不得参与本次众售。</p>
            <input type="checkbox" id="terms" name="through" value="yes"/>
            <p class="info">
                <span class="i18n" name="sharder-legitimate-users">我不是中国，美国及加拿大公民或居民</span><br/>
                <span class="i18n" name="sharder-have-read">我已阅读并接受</span><a
                    href="${sharderCfg('token_invest_protocol_url')!}" class="terms i18n" name="sharder-user-agreement">《TOKEN
                SALE AGREEMENT》</a><span class="i18n" name="sharder-terms-of">条款</span>
            </p>
            <p class="kyc_title i18n" name="sharder-card-information">上传身份证信息</p>
            <div class="file_kyc_div">
                <input type="file" name="kyc_img" id="file_kyc" class="file_kyc" onchange="changImg(this)"/>
            </div>
            <p class="kyc_info i18n" name="sharder-inform-info">您可以上传护照、驾驶执照及身份证照片(支持JPEG，PNG格式。大小5M以内)</p>
            <input type="button" value="确认并参与众售" class="i18n" name="sharder-participate-in" onclick="confirmProtocol()">
        </form>
    <#--<form action="/user_center/kyc/certification.ss" method="post" enctype="multipart/form-data">-->
    <#--选择文件:<input type="file" name="kyc_img">-->
    <#--<input type="submit" value="上传">-->
    <#--</form>-->
    </div>
</section>

<script>
    function changImg(file) {
        if (file.files && file.files[0]) {
            var reader = new FileReader();
            reader.onload = function (evt) {
                $("#crowdsale_terms .file_kyc_div").css("background", "url(" + evt.target.result + ") no-repeat center");
                $("#crowdsale_terms .file_kyc_div").css("background-size", "contain");
            }
            reader.readAsDataURL(file.files[0]);
        }
    }

    function confirmProtocol() {
        if (!$("#terms").is(':checked') || $("#file_kyc").val() == '') {
            if (i18nLanguage = "en") {
                layer.msg("Please accept the terms of the《TOKEN SALE AGREEMENT》and upload your id card information!");
            } else {
                layer.msg("请接受《TOKEN SALE AGREEMENT》条款，并上传身份证信息！");
            }
            return false;
        }
        var url = "/user_center/kyc/certification.ss";
        var data = $("#confirm_protocol_form").serialize();

        var formData = new FormData();
        formData.append("kyc_img", $("#file_kyc")[0].files[0]);
        formData.append("through", $("#terms").val());

        $.ajax({
            url: url,
            type: 'POST',
            data: formData,
            dataType: 'json',
            contentType: false, //禁止设置请求类型
            processData: false, //禁止jquery对DAta数据的处理,默认会处理
            //禁止的原因是,FormData已经帮我们做了处理
            success: function (result) {
                console.info(result);
                if (result.through == 'yes') {
                    location.reload();
                } else {
                    layer.msg("图片上传失败，图片必须jpg或png格式且小于5M");
                }
            }
        });
    }

    function viewProtocol() {
        layer.open({
            title: 'TOKEN SALE AGREEMENT',
            type: 1,
            area: ['80%', '80%'],
            content: "<ul id='invest_protocol'></ul>",
        });
        $("#invest_protocol").load("/r/cms/resource/sharders/invest-protocol.html");
    }
</script>