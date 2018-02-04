<@layout.htmlHead>

<style>
    .show{
        display: block !important;
    }
    /*转账样式 start*/
    .trade_prove {
        width: 900px;
        text-align: left;
        margin: auto;
        margin-top: 40px;
    }
    .trade_prove .user-wallet-addr{
        font-size: 16px;
        color: #333;
        margin-bottom: 20px;
    }
    input[name='payWalletAddr']{
        margin-top: 10px;
        height: 30px;
        width: 100%;
        border-radius: 4px;
        border: 1px solid #ddd;
    }
    .trade_prove p.hint-info{
        color: #333;
        font-size: 16px;
        margin-bottom: 10px;
    }
    .trade_prove span.hint-info{
        font-weight:bold;
    }
    /*转账样式 end*/
</style>
</@layout.htmlHead>

<@layout.htmlBody>
<div class="ss-container ss-theme-background-color">
    <div class="invest ss-main" id="invest_item">
        <section>
            <h1 class="ss-main-title invest-main-h1"><span class="i18n" name="sharder-sharder-presale">豆匣早鸟轮</span></h1>
        </section>

        <#include "invest_timeline.ftl" />



        <section class="invest-item">
            <h3 class="ss-sub-title i18n" name="sharder-angel-wheels">早鸟轮</h3>
            <#--<p class="i18n" name="sharder-invest-time-start-end">1月29日9:00-2月11日23:59</p>-->
            <p>1ETH = ${ETH_B_PRICE!}SS , 1BTC = ${BTC_A_PRICE!}SS</p>
        <#--<div class="ss-row-timeline"></div>-->
            <div class="sharder-row-timeline">
                <#--<#if usePhaseIIAmount ?? && phaseIIAmount ??>-->
                    <#--<span style="width: ${(usePhaseIIAmount/phaseIIAmount)*100}%"></span>-->
                    <#--<#else >-->
                        <#--<span style="width: 0%"></span>-->
                <#--</#if>-->
                    <span style="width: 100%"></span>
            </div>
            <div class="clause">
                <h4 class="invset-h4 i18n" name="sharder-rule">规则</h4>
                <ul>
                    <li class="generalTextColor">
                        <span class="crude i18n" name="sharder-finish-condition">1.结束条件:</span>
                        <span class="i18n" name="sharder-invset-finish-million">
                            1) 7,500,0000个SS全部售出。
                        </span>
                        <span class="i18n" name="sharder-invset-finish-time">
                            2) 到达截止时间2018年2月11日23:59。
                        </span>
                    </li>
                    <li class="generalTextColor">
                        <span class="crude i18n" name="sharder-invest-limit">2.参投限额:</span>
                        <span class="i18n" name="sharder-invest-limit-rule">≥1ETH/人或等额BTC。</span>
                    </li>
                    <li class="generalTextColor">
                        <span class="crude i18n" name="sharder-invest-whitelist">3.白名单:</span>
                        <span class="i18n" name="sharder-invest-whitelist-rule">使用白名单额度参与认购可获得20%的奖励。</span>
                    </li>
                    <li class="generalTextColor">
                        <span class="crude i18n" name="sharder-time-referral">4.邀请奖励:</span>
                        <span class="i18n" name="sharder-time-referral-rule">早鸟轮结束以后进入审核阶段，于72小时内公布认购结果。公开众售结束后一周内完成Token兑换。</span>
                    </li>
                    <li class="generalTextColor">
                        <span class="crude i18n" name="sharder-time-token">5.豆匣SS:</span>
                        <span class="i18n" name="sharder-invest-issue-token-currency">豆匣SS是ERC20标准的token，SS将于众售结束后7个工作日内发送至您的ETH地址。</span>
                    </li>
                </ul>
            </div>

            <div class="participation">
                <form action="#" id="invest_form">
                    <p class="ss-main-title invset-h4 i18n" name="add_img_container">直投</p>
                    <p><span class="i18n" name="sharder-available-subscribe">可用的白名单额度: </span><span>{{available}}ETH</span>/<span>{{(available*currency.ETH/currency.BTC).toFixed(4)}}BTC</span>
                    <#--=<span>{{available*currency.ETH/currency.LTC}}LTC</span>-->
                    </p>



                    <ul class="pay-types">
                        <li><input type="radio" class="ss-radio-hidden" id="btc" value="BTC"  name="payType"/><label for="btc" class="ss-label-btn" v-on:click="selectedPayType('BTC'),zero=''">
                            <img src="/r/cms/resource/sharders/img/BTC.png"><span class="i18n" name="sharder-BTC">比特币(BTC)</span></label></li>
                        <li><input type="radio" class="ss-radio-hidden" id="eth" value="ETH" name="payType" checked="checked"/><label for="eth" class="ss-label-btn" v-on:click="selectedPayType('ETH'),zero=''">
                            <img src="/r/cms/resource/sharders/img/ETH.png"><span class="i18n" name="sharder-ETH">以太坊(ETH)</span></label></li>
                    <#--<li><input type="radio" class="ss-radio-hidden" id="ltc" value="LTC" name="payType"/><label for="ltc" class="ss-label-btn" v-on:click="selectedPayType('LTC'),zero=''">-->
                    <#--<img src="/r/cms/resource/sharders/img/LTC.png"><span class="i18n" name="sharder-LTC">莱特币(LTC)</span></label></li>-->
                    </ul>
                    <ul class="pay-number">
                        <li><input type="number" oninput="investTransition(app.payType,this)" input-type="icoin" placeholder="请输入支持的数量" class="i18n" name="payAmount" :value="zero" maxlength="4"><span class="sign">{{payType}}</span><span>≈</span></li>
                        <li><input type="number" oninput="investTransition(app.payType,this)" input-type="cny" :value="zero" maxlength="10"><span class="sign cny">&yen;</span><span>≈</span></li>
                        <li><input type="number" oninput="investTransition(app.payType,this)" input-type="ss" :value="zero" maxlength="12"><span class="sign">SS</span></li>
                    </ul>
                    <button type="button" class="ss-main-btn pay-btn i18n" name="sharder-transfer" v-on:click="transfer()" id="transfer">获取转账地址</button>
                    <#include  'invest_investment.ftl'/>
                </form>
            </div>
        </section>
        <section class="service-qr-code">
            <div>
                <div class="qr-div">
                    <p class="ss-sub-title i18n" name="sharder-customer-service-weChat">客服微信</p>
                    <img class="qr-code" src="/r/cms/resource/sharders/img/index/weixin2.jpg">
                </div>
                <#--<div class="qr-div">-->
                    <#--<p class="ss-sub-title i18n" name="shar-customer-service-QQ">客服QQ</p>-->
                    <#--<img class="qr-code" src="/r/cms/resource/sharders/img/kefuQQ.png">-->
                <#--</div>-->
                <div class="qr-div">
                    <p class="ss-sub-title i18n" name="sharder-customer-service-QQS">官方QQ群</p>
                    <img class="qr-code" src="/r/cms/resource/sharders/img/index/qqyidong.png">
                </div>
                <p class="i18n" name="custom-service">客服工作时间：10:00  - 21:00</p>
            </div>
        </section>
    </div>
</div>
<div class="popup i18n" name ="sharder-Thank" style="display: none">感谢您支持豆匣众售。转账完成以后请您及时联系我们的客服人员进行一对一确认。</div>
    <#include "/WEB-INF/ftl/sharders/hint/hint.ftl">
<#--<script src="${resSys}/resource/sharders/js/jquery.zeroclipboard.js" type="text/javascript"></script>-->
<script src="${resSys!}/resource/sharders/js/jquery.qrcode-0.12.0.min.js" type="text/javascript"></script>
<script>
    function jsCopy() {
        var text = document.getElementById("sharder-addr").innerText;
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
</@layout.htmlBody>