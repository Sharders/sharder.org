<@layout.htmlHead    pagename="crowd_funding">

</@layout.htmlHead>

<@layout.htmlBody>
<div class="ss-container ss-theme-background-color" id="invest_item">
    <div class="invest ss-main ">
        <section>
            <h1 class="ss-main-title invest-main-h1"><span class="i18n" name="sharder-invest-crowd-funding">豆匣协议众筹轮</span></h1>
        </section>
        <#include "invest_timeline.ftl" />
        <section class="invest-item crowd-funding">
            <h3 class="ss-sub-title i18n" name="sharder-crowd-funding">众筹轮</h3>
            <p class="i18n" name="sharder-crowd-funding-time">2月23日9:00-3月23日23:59</p>
        <#--<div class="ss-row-timeline"></div>-->
            <div class="sharder-row-timeline">
                <span style="width: 10%"></span>
            </div>
            <div class="clause">
                <h4 class="invset-h4 i18n" name="sharder-rule">规则</h4>
                <ul>
                    <li class="generalTextColor">
                        <span class="i18n title" name="sharder-start-time">1.开始时间:</span>
                        <span class="i18n" name="sharder-crowd-funding-text1">北京时间2018年2月23日9:00，如下列任一目标达成则将立即停止早鸟轮。<br/>
                        &nbsp;&nbsp;&nbsp;&nbsp;A:xxxxxs个SS全部售出。<br/>
                        &nbsp;&nbsp;&nbsp;&nbsp;B:SS售出超XX个并到达截止时间2018年3月23日。</span>
                    </li>
                    <li class="generalTextColor">
                        <span class="i18n title" name="sharder-subscription-ratio">2.兑换比例:</span>
                        <span class="i18n" name="sharder-crowd-funding-text2">北京时间2018年1月22日9:00起，1BTC=1SS<br/>
                        &nbsp;&nbsp;&nbsp;&nbsp;北京时间2018年1月22日9:00起，1BTC=1SS<br/>
                        &nbsp;&nbsp;&nbsp;&nbsp;北京时间2018年1月22日9:00起，1BTC=1SS</span>
                    </li>
                    <li class="generalTextColor">
                        <span class="i18n title" name="sharder-investment-quota">3.参投限额:</span>
                        <span class="i18n" name="sharder-crowd-funding-text3">≥1ETH/人，或等额BTC。</span>
                    </li>
                    <li class="generalTextColor">
                        <span class="i18n title" name="sharder-hair-tiem">4.发币时间:</span>
                        <span class="i18n" name="sharder-crowd-funding-text4">众筹结束后一周以内。</span>
                    </li>
                    <li class="generalTextColor">
                        <span class="i18n title" name="sharder-examine-time">5.审核时间</span>
                        <span class="i18n" name="sharder-crowd-funding-text5">早鸟轮结束以后将进入审核阶段，并于72小时内公布认购结果。</span>
                    </li>
                    <li class="generalTextColor">
                        <span class="i18n title" name="sharder-raise-time">6.众筹时间</span>
                        <span class="i18n" name="sharder-crowd-funding-text6">早鸟轮结束以后，众筹将会在官网以及交易所进行公开IEO,具体信息以官方信息为准。</span>
                    </li>
                </ul>
            </div>

        <#--<div class="participation">-->
        <#--<p class="ss-main-title invset-h4 i18n" name="sharder-participate">参与</p>-->
        <#--<div class="pay-text crowd-funding-text">-->
        <#--<p class="generalTextColor i18n" name="sharder-crowd-funding-text7">感谢你参加豆匣早鸟轮，你可以直接从数字货币钱包发送ETH或BTC到以下地址。</p>-->
        <#--<p class="generalTextColor i18n" name="sharder-crowd-funding-text7">感谢你参加豆匣早鸟轮，你可以直接从数字货币钱包发送ETH或BTC到以下地址。</p>-->
        <#--<p class="generalTextColor i18n" name="sharder-crowd-funding-text7">感谢你参加豆匣早鸟轮，你可以直接从数字货币钱包发送ETH或BTC到以下地址。</p>-->
        <#--</div>-->
        <#--<div id="early-birdwalletAddr_qr_code"></div>-->
        <#--<div class="pay-addr">-->
        <#--<span class="i18n" name="sharder-wallet-addr">钱包地址:</span><span id="sharder-addr">0xd63F6D2f8cC2D166c43f9c82595af9498132fe32</span><button onclick="jsCopy()" class="i18n" name="sharder-copy">复制</button>-->
        <#--</div>-->
        <#--</div>-->
        </section>
        <section class="sharder-top-up" >
            <div class="participation">
                <form action="#" id="invest_form">
                    <div class="pay-text crowd-funding-text">
                        <h3>参与方式一:官网直投</h3>
                        <p class="generalTextColor i18n" name="sharder-crowd-funding-text7">此方式你可以使用拥有私钥的以太坊钱包以及从交易所直接提币转账</p>
                    </div>
                    <ul class="pay-types">
                        <li><input type="radio" class="ss-radio-hidden" id="eth" value="ETH" checked="checked" name="payType"/><label for="eth" class="ss-label-btn" v-on:click="selectedPayType('ETH'),zero=''">
                            <img src="/r/cms/resource/sharders/img/ETH.png"><span class="i18n" name="sharder-ETH">以太坊(ETH)</span></label></li>
                        <li><input type="radio" class="ss-radio-hidden" id="btc" value="BTC" name="payType"/><label for="btc" class="ss-label-btn" v-on:click="selectedPayType('BTC'),zero=''">
                            <img src="/r/cms/resource/sharders/img/BTC.png"><span class="i18n" name="sharder-BTC">比特币(BTC)</span></label></li>
                    <#--<li><input type="radio" class="ss-radio-hidden" id="ltc" value="LTC" name="payType"/><label for="ltc" class="ss-label-btn" v-on:click="selectedPayType('LTC'),zero=''">-->
                    <#--<img src="/r/cms/resource/sharders/img/LTC.png"><span class="i18n" name="sharder-LTC">莱特币(LTC)</span></label></li>-->
                    </ul>
                    <ul class="sharder-pay-number">
                        <li><input type="number" oninput="investTransition(app.payType,this)" input-type="icoin" placeholder="请输入支持的数量" class="i18n" name="payAmount" :value="zero" maxlength="4"><span class="sign">{{payType}}</span></li>
                        <li><input type="number" oninput="investTransition(app.payType,this)" input-type="cny" :value="zero" maxlength="10"><span class="sign">&yen;</span></li>
                        <li><input type="number" oninput="investTransition(app.payType,this)" input-type="ss" :value="zero" maxlength="12"><span class="sign">SS</span></li>
                    </ul>
                    <button type="button" class="ss-main-btn pay-btn i18n" name="sharder-transfer" v-on:click="transfer()" id="transfer">获取转账地址</button>
                    <div  id="transfer_details" style="display: none">
                        <div class="pay-text">
                            <p class="generalTextColor">你可以从交易所或其他钱包地址转账到官网直投地址</p>
                            <p class="pay-akey generalTextColor i18n" name="sharder-invest-item-text11">转账完成后请你填写转账信息并上传转账截图。以便我们进行确认</p>
                        </div>
                        <div>
                            <div class="qr-code" id="walletAddr_qr_code"></div>
                        </div>
                        <div class="pay-addr">
                            <span class="i18n" name="sharder-addr-wallet">地址:</span><span id="sharder-addr">{{walletAddr}}</span><button type="button" onclick="jsCopy('sharder-addr')" class="i18n" name="sharder-copy">复制</button>
                            <input type="hidden" name="shardersWalletAddr" :value="walletAddr">
                        </div>
                        <div class="trade_prove">
                            <div class="user-wallet-addr">
                                <h4>请填写您转账的钱包地址:</h4>
                                <input id="user_wallet_addr" name="payWalletAddr">
                            </div>
                            <p class="hint-info"><span class="i18" name="sharder-invest-item4">转币成功截图</span><span class="hint-info i18n" name="sharder-invest-item5">(注意：截图需包含转款地址，收款地址，转款金额等信息，可传多张截图)</span></p>
                            <div id="add_img"></div>
                        </div>
                        <input type="hidden" name="tradeImgAddr">
                        <button type="button" class="ss-main-btn pay-btn i18n" name="sharder-completed-transfer" v-on:click="prompt()">已完成转账</button>
                    </div>
                </form>
            </div>
            <div class="participation">
                <div class="pay-text crowd-funding-text">
                    <h3>参与方式二:智能合约</h3>
                    <p class="generalTextColor i18n" name="sharder-crowd-funding-text7">此方式你必须使用拥有私钥的以太坊钱包地址进行转账(不能从交易所提币)</p>
                </div>
                <div id="early-birdwalletAddr_qr_code"></div>
                <div class="pay-addr">
                    <span class="i18n" name="sharder-wallet-addr">钱包地址:</span><span id="sharder-addrs">0xd63F6D2f8cC2D166c43f9c82595af9498132fe32</span><button onclick="jsCopy('sharder-addrs')" class="i18n" name="sharder-copy">复制</button>
                </div>
                <p class="sharder-pay-text">参与所获得的豆匣SS将会自动发送到你的转账的以太坊账户地址</p>
            </div>
        </section>
    </div>
</div>
    <#include "/WEB-INF/ftl/sharders/hint/hint.ftl">
<script src="${resSys}/resource/sharders/js/jquery.qrcode-0.12.0.min.js" type="text/javascript"></script>
<script>
    function jsCopy(name) {
        var text = document.getElementById(name).innerText;
        var input = document.createElement("input");
        input.value = text;
        document.body.appendChild(input);
        input.select();
        document.execCommand("Copy");
        input.remove();
        layer.msg($("span[name='copyok']").text());
    }
</script>
<script>
    var config = new Object();

    var walletAddrs = new Array();
        <#list config ? keys as key >
        config.${key!"default"} =  "${config[key]!}";
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
</@layout.htmlBody>