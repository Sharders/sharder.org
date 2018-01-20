<@layout.htmlHead    pagename="crowd_funding">

</@layout.htmlHead>

<@layout.htmlBody>
<div class="ss-container ss-theme-background-color">
    <div class="invest ss-main ">
        <section>
            <h1 class="ss-main-title invest-main-h1"><span class="i18n" name="sharder-invest-crowd-funding">豆匣协议众筹轮</span></h1>
        </section>
        <#include "invest_timeline.ftl" />
        <section class="invest-item crowd-funding">
            <h3 class="ss-sub-title i18n" name="sharder-crowd-funding">众筹轮</h3>
            <p class="i18n" name="sharder-crowd-funding-time">2月23日9:00-3月23日23:59</p>
            <div class="ss-row-timeline"></div>
            <div class="clause">
                <h4 class="invset-h4 i18n" name="sharder-rule">规则</h4>
                <ul>
                    <li class="generalTextColor">
                        <span class="i18n" name="sharder-start-time">1.开始时间:</span>
                       <span class="i18n" name="sharder-crowd-funding-text1">北京时间2018年2月23日9:00，如下列任一目标达成则将立即停止早鸟轮。<br/>
                        &nbsp;&nbsp;&nbsp;&nbsp;A:xxxxxs个SS全部售出。<br/>
                        &nbsp;&nbsp;&nbsp;&nbsp;B:SS售出超XX个并到达截止时间2018年3月23日。</span>
                    </li>
                    <li class="generalTextColor">
                        <span class="i18n" name="sharder-subscription-ratio">2.兑换比例:</span>
                        <span class="i18n" name="sharder-crowd-funding-text2">&nbsp;&nbsp;&nbsp;&nbsp;北京时间2018年1月22日9:00起，1BTC=1SS<br/>
                        &nbsp;&nbsp;&nbsp;&nbsp;北京时间2018年1月22日9:00起，1BTC=1SS<br/>
                        &nbsp;&nbsp;&nbsp;&nbsp;北京时间2018年1月22日9:00起，1BTC=1SS</span>
                    </li>
                    <li class="generalTextColor">
                        <span class="i18n" name="sharder-investment-quota">3.参投限额:</span>
                       <span class="i18n" name="sharder-crowd-funding-text3">≥1ETH/人，或等额BTC，LTC。</span>
                    </li>
                    <li class="generalTextColor">
                        <span class="i18n" name="sharder-hair-tiem">4.发币时间:</span>
                        <span class="i18n" name="sharder-crowd-funding-text4">众筹结束后一周以内。</span>
                    </li>
                    <li class="generalTextColor">
                        <span class="i18n" name="sharder-examine-time">5.审核时间</span>
                        <span class="i18n" name="sharder-crowd-funding-text5">早鸟轮结束以后将进入审核阶段，并于72小时内公布认购结果。</span>
                    </li>
                    <li class="generalTextColor">
                        <span class="i18n" name="sharder-raise-time">6.众筹时间</span>
                        <span class="i18n" name="sharder-crowd-funding-text6">早鸟轮结束以后，众筹将会在官网以及交易所进行公开IEO,具体信息以官方信息为准。</span>
                    </li>
                </ul>
            </div>

            <div class="participation">
                <p class="ss-main-title invset-h4 i18n" name="sharder-participate">参与</p>
                <div class="pay-text crowd-funding-text">
                    <p class="generalTextColor i18n" name="sharder-crowd-funding-text7">感谢你参加豆匣早鸟轮，你可以用直接从交易所或其他数字货币钱包发送ETH和BTC到以下地址。</p>
                    <p class="generalTextColor i18n" name="sharder-crowd-funding-text7">感谢你参加豆匣早鸟轮，你可以用直接从交易所或其他数字货币钱包发送ETH和BTC到以下地址。</p>
                    <p class="generalTextColor i18n" name="sharder-crowd-funding-text7">感谢你参加豆匣早鸟轮，你可以用直接从交易所或其他数字货币钱包发送ETH和BTC到以下地址。</p>
                </div>
                <div id="early-birdwalletAddr_qr_code"></div>
                <div class="pay-addr">
                    <span class="i18n" name="sharder-wallet-addr">钱包地址:</span><span id="sharder-addr">0xd63F6D2f8cC2D166c43f9c82595af9498132fe32</span><button onclick="jsCopy()" class="i18n" name="sharder-copy">复制</button>
                </div>
            </div>
        </section>
    </div>
</div>
<script src="${resSys}/resource/sharders/js/jquery.qrcode-0.12.0.min.js" type="text/javascript"></script>
<script>
    function setQr(text) {
        $("#early-birdwalletAddr_qr_code").empty();
        jQuery("#early-birdwalletAddr_qr_code").qrcode({
            render: "canvas",
            text:text
        });
        var qr=$("#early-birdwalletAddr_qr_code canvas");
        qr.css("width","156px");
        qr.css("height","156px");
    }
    setQr($("#sharder-addr").text());
</script>
<script>
    function jsCopy() {
        var text = document.getElementById("sharder-addr").innerText;
        var input = document.createElement("input");
        input.value = text;
        document.body.appendChild(input);
        input.select();
        document.execCommand("Copy");
        input.remove();
        layer.msg("复制成功");
    }
</script>
</@layout.htmlBody>