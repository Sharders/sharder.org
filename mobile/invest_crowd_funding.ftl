<#import "/WEB-INF/ftl/sharders/pc/mobile/layout.ftl" as lay/>
<@lay.htmlHead    pagename="invest_crowd_funding">
<link rel="stylesheet" href="/r/cms/resource/sharders/css/mobile/invest_item.css">
<link rel="stylesheet" href="/r/cms/resource/sharders/css/mobile/invest_crowd_funding.css">
</@lay.htmlHead>
<@lay.htmlBody>
<div class="ss-mian" id="invest_item">
    <section class="ss-main-title">
        <h3 class="ss-head i18n" name="sharder-invest-crowd-funding">众筹轮</h3>
        <#include "invest_timeline.ftl" />
    </section>
    <section class="ss-main-early-bird">
        <div class="sharder-line">
            <h3 class="sharder-early-bird i18n" name="sharder-crowd-funding">参与众筹轮</h3>
            <p  class="sharder-early-bird-text i18n" name="sharder-crowd-funding-time">2月23日9:00-3月23日23:59</p>
            <p class="sharder-line-p"><span style="width: 30%"></span><i>30%</i></p>
        </div>
        <ul class="ss-early-bird-text">
            <li class="generalTextColor">
                <span class="crude i18n" name="sharder-start-time" >1.开始时间:</span>
                <span class="i18n" name="sharder-crowd-funding-text1">
                    北京时间2018年3月23日23:59，如下列任一目标达成则将立即停止众筹轮。<br/>
                &nbsp;&nbsp;A:7500000个SS全部售出。<br/>
                &nbsp;&nbsp;B:SS售出超1950个ETH并到达截止时间2018年3月23日。
                </span>
            </li>
            <li class="generalTextColor">
                <span class="crude i18n" name="sharder-subscription-ratio">2.兑换比例:</span>
                <span class="i18n" name="sharder-crowd-funding-t">北京时间2018年3月23日9:00起</span><br />
                1 BTC = ${BTC_A_PRICE}SS,1 ETH = ${ETH_B_PRICE} SS
            </li>
            <li class="generalTextColor">
                <span class="crude i18n" name="sharder-investment-quota">3.参投限额:</span>
                <span class="i18n" name="sharder-crowd-funding-text3">≥1ETH/人，或等额BTC。</span>
            </li>
            <li class="generalTextColor">
                <span class="crude i18n" name="sharder-hair-tiem">4.发币时间:</span>
                <span class="i18n" name="sharder-crowd-funding-text4">众筹结束后一周以内。</span>
            </li>
            <li class="generalTextColor">
                <span class="crude i18n" name="sharder-examine-time">5.</span>
                <span class="i18n" name="sharder-crowd-funding-text5">早鸟轮结束以后将进入审核阶段，并于72小时内公布认购结果。</span>
            </li>
            <li class="generalTextColor">
                <span class="crude i18n" name="sharder-raise-time">6.</span>
                <span class="i18n" name="sharder-crowd-funding-text6">早鸟轮结束以后，众筹将会在官网以及交易所进行公开IEO,具体信息以官方信息为准。</span>
            </li>
            <#--<li class="generalTextColor">-->
                <#--<span class="crude i18n" name="sharder-subscribe">7.白名单:</span>-->
                <#--<span  class="i18n" name="sharder-invset-text8">早鸟轮结束以后，众筹将会在官网以及交易所进行公开IEO,具体信息以官方信息为准。</span>-->
            <#--</li>-->
        </ul>
    </section>
    <section class="sharder-pay">
        <div class="main-participate-in" id="">
            <h2 class="i18n" name="Participatory-mode-1">参与方式一:官网直投</h2>
            <ul>
                <li class="main-participate-head-title i18n" name="sharder-exchange-transfer">此方式你可以使用拥有私钥的以太坊钱包以及从交易所直接转账</li>
                <li class="button">

                    <input type="radio" id="eth" name="SS" checked="checked" style="display: none">
                    <label for="eth" v-on:click="selectedPayType('ETH'),zero=''">
                        <img src="/r/cms/resource/sharders/img/ETH.png"  class="btn-eth">ETH
                    </label>
                    <input type="radio" id="btc" name="SS"  style="display: none">
                    <label for="btc" v-on:click="selectedPayType('BTC'),zero=''">
                        <img src="/r/cms/resource/sharders/img/BTC.png" class="btn-btc">BTC
                    </label>
                <#--<input type="radio" id="ltc" name="SS" style="display: none">-->
                <#--<label for="ltc">-->
                <#--<img src="/r/cms/resource/sharders/img/LTC.png"  class="btn-ltc">LTC-->
                <#--</label>-->
                </li>
                <li class="input">
                    <input type="number" placeholder="输入支持数量" name="payAmount" class="i18n" oninput="investTransition(app.payType,this)" :value="zero" input-type="icoin">
                    <span class="dengyu">=</span>
                    <input type="number" oninput="investTransition(app.payType,this)" :value="zero" maxlength="4" input-type="ss">
                    <p><span class="unit btc">{{payType}}</span><span class="unit ss" maxlength="10">SS</span></p>
                </li>
                <li id="transfer"><button class="complete-transfer i18n" name="sharder-transfer" v-on:click="transfer()">获得转账地址</button></li>
                <#include  'invest_investment.ftl'/>
            </ul>
        </div>
    </section>
    <section class="walletAddr_qr_codes">
        <div class="main-participate-in">
            <h2 class="i18n" name="Participatory-mode-2">参与方式二:智能合约</h2>
            <p class="par-text i18n" name="sharder-crowd-funding-text7">此方式你必须使用拥有私钥的以太坊钱包地址进行转账 <br> 注意：不能从交易所提币转账</p>
            <div id="walletAddr_qr_codes"></div>
            <p class="par-addr"><span class="i18n" name="sharder-wallet-addr">转账地址：</span><span id="qr_code_text">U38YJA734HGFQJ723KDU89</span></p>
        </div>
    </section>
</div>
    <#include "/WEB-INF/ftl/sharders/hint/hint.ftl">
<div style="display: none">
    <div class="popup i18n" name ="sharder-Thank" >感谢您支持豆匣众筹。转账完成以后请您及时联系我们的客服人员进行一对一确认。</div>
    <#--<span class="i18n" name="copyok" style="display: none">复制成功</span>-->
</div>
<span class="i18n" name="nihaimeishurujine" style="display: none">你还没输入金额哦</span>
<script src="${resSys}/resource/sharders/js/jquery.qrcode-0.12.0.min.js" type="text/javascript"></script>

<script>
    function jsCopy() {
        var text = document.getElementById("walletQr-text").innerText;
        var input = document.createElement("input");
        input.value = text;
        document.body.appendChild(input);
        input.select();
        document.execCommand("Copy");
        input.remove();
        layer.msg($("span[name='copyok']").text());
    }


    var config = new Object();

    var walletAddrs = new Array();
        <#list config ? keys as key >
        config.${key} =  "${config[key]!}";
        </#list>
        <#list walletAddr as addr>
        var walletAddr = new Object();
        walletAddr.addr = "${addr.addr!}";
        walletAddr.type = "${addr.type!}";
        walletAddrs.push(walletAddr);
        </#list>
    var number = 0;
        <#if maxSubscribe ?? && nowSubscribe??>
        number = ${maxSubscribe-nowSubscribe};
        </#if>

</script>

<script src="/r/cms/resource/sharders/js/invest_item.js"></script>

<script>
    function setQr(text) {
        $("#walletAddr_qr_codes").empty();
        jQuery("#walletAddr_qr_codes").qrcode({
            render: "canvas",
            text:text
        });
        var qr=$("#walletAddr_qr_codes canvas");
        qr.css("width","156px");
        qr.css("height","156px");
        qr.css("padding","6px");
        qr.css("border","2px solid");
    }
    setQr($("#qr_code_text").text());
</script>

</@lay.htmlBody>