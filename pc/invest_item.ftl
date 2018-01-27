<@layout.htmlHead    pagename="invest_item">

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
            <h1 class="ss-main-title invest-main-h1"><span class="i18n" name="sharder-angel-wheels">豆匣早鸟轮</span></h1>
        </section>

        <#include "invest_timeline.ftl" />



        <section class="invest-item">
            <h3 class="ss-sub-title i18n" name="sharder-angel-wheel">早鸟轮</h3>
            <p class="i18n" name="sharder-invest-time-start-end">1月29日9:00-2月11日23:59</p>
            <div class="ss-row-timeline"></div>
            <div class="clause">
                <h4 class="invset-h4 i18n" name="sharder-rule">规则</h4>
                <ul>
                    <li class="generalTextColor">
                        <span class="crude i18n" name="sharder-start-time">1.开始时间:</span>
                        <span class="i18n" name="sharder-invest-item-time">北京时间2018年1月29日09:00。</span>
                    </li>
                    <li class="generalTextColor">
                        <span class="crude i18n" name="sharder-finish-condition">2.结束条件:</span>
                        <span class="i18n" name="sharder-invset-finish1">
                            1) 7,500,0000个SS全部售出。
                        </span>
                        <span class="i18n" name="sharder-invset-finish2">
                            2) 到达截止时间2018年2月11日23:59。
                        </span>
                    </li>
                    <li class="generalTextColor">
                        <span class="crude i18n" name="sharder-investment-quota">3.参投限额:</span>
                        <span class="i18n" name="sharder-invest-item-text4">≥1ETH/人或等额BTC。</span>
                    </li>
                    <li class="generalTextColor">
                        <span class="crude i18n" name="sharder-time-currency">4.兑换时间:</span>
                        <span class="i18n" name="sharder-invest-issue-token">早鸟轮结束以后进入审核阶段，于72小时内公布认购结果。公开众筹结束后一周内完成Token兑换。</span>
                    </li>
                </ul>
            </div>

            <div class="participation">
                <form action="#" id="invest_form">
                    <p class="ss-main-title invset-h4 i18n" name="add_img_container">直投</p>
                    <p><span class="i18n" name="sharder-available-subscribe">可用的白名单额度: </span><span>{{available}}ETH</span>=<span>{{available*currency.ETH/currency.BTC}}BTC</span>
                        <#--=<span>{{available*currency.ETH/currency.LTC}}LTC</span>-->
                    </p>
                    <ul class="pay-types">
                        <li><input type="radio" class="ss-radio-hidden" id="btc" value="BTC" checked="checked" name="payType"/><label for="btc" class="ss-label-btn" v-on:click="selectedPayType('BTC'),zero=''">
                            <img src="/r/cms/resource/sharders/img/BTC.png"><span class="i18n" name="sharder-BTC">比特币(BTC)</span></label></li>
                        <li><input type="radio" class="ss-radio-hidden" id="eth" value="ETH" name="payType"/><label for="eth" class="ss-label-btn" v-on:click="selectedPayType('ETH'),zero=''">
                            <img src="/r/cms/resource/sharders/img/ETH.png"><span class="i18n" name="sharder-ETH">以太坊(ETH)</span></label></li>
                        <#--<li><input type="radio" class="ss-radio-hidden" id="ltc" value="LTC" name="payType"/><label for="ltc" class="ss-label-btn" v-on:click="selectedPayType('LTC'),zero=''">-->
                            <#--<img src="/r/cms/resource/sharders/img/LTC.png"><span class="i18n" name="sharder-LTC">莱特币(LTC)</span></label></li>-->
                    </ul>
                    <ul class="pay-number">
                        <li><input type="number" oninput="investTransition(app.payType,this)" input-type="icoin" placeholder="请输入支持的数量" class="i18n" name="payAmount" :value="zero" maxlength="4"><span class="sign">{{payType}}</span><span>≈</span></li>
                        <li><input type="number" oninput="investTransition(app.payType,this)" input-type="cny" :value="zero" maxlength="10"><span class="sign">&yen;</span><span>≈</span></li>
                        <li><input type="number" oninput="investTransition(app.payType,this)" input-type="ss" :value="zero" maxlength="12"><span class="sign">SS</span></li>
                    </ul>
                    <button type="button" class="ss-main-btn pay-btn i18n" name="sharder-transfer" v-on:click="transfer()" id="transfer">获取转账地址</button>

                    <div id="transfer_details" style="display: none">
                        <div class="pay-text">
                            <p class="generalTextColor"><span class="i18n" name="sharder-invest-item-text9">感谢你参加豆匣早鸟轮，你可以用直接从数字货币钱包发送</span>{{payType}}<span class="i18n" name="sharder-invest-item-text12">到以下地址。</span></p>
                            <p class="generalTextColor i18n" name="sharder-invest-item-text10">参加早鸟轮将会优先使用白名单额度，如提交了认购申请但未完成转账。扣除的白名单额度将在24小时内恢复。</p>
                            <p class="pay-akey generalTextColor i18n" name="sharder-invest-item-text11">转账成功后为了保证您的资金安全，转账后请加客服微信并将转账成功的截图发给我们。我们将为您进行一对一的确认。</p>
                        </div>
                        <div>
                            <div class="qr-code" id="walletAddr_qr_code"></div>
                        </div>
                        <div class="pay-addr">
                            {{payType}}<span class="i18n" name="sharder-addr-wallet">钱包地址:</span><span id="sharder-addr">{{walletAddr}}</span><button type="button" onclick="jsCopy()" class="i18n" name="sharder-copy">复制</button>
                            <input type="hidden" name="shardersWalletAddr" :value="walletAddr">
                        </div>
                        <div class="trade_prove">
                            <div class="user-wallet-addr">
                                <label for="user_wallet_addr" >请填写<span style="color: red;">您转账</span>的钱包地址:</label>
                                <input id="user_wallet_addr" name="payWalletAddr">
                            </div>

                            <p class="hint-info">转币成功截图<span class="hint-info">(注意：截图需包含转款地址，收款地址，转款金额等信息，可传多张截图)</span></p>
                            <div id="add_img"></div>
                        </div>
                        <input type="hidden" name="tradeImgAddr">
                        <button type="button" class="ss-main-btn pay-btn i18n" name="sharder-completed-transfer" v-on:click="prompt()">已完成转账</button>
                    </div>
                </form>
            </div>
        </section>
         <section class="service-qr-code">
                <div>
                    <div class="qr-div">
                        <p class="ss-sub-title i18n" name="sharder-customer-service-weChat">客服微信</p>
                        <img class="qr-code" src="/r/cms/resource/sharders/img/index/weixingqr.png">
                    </div>
                    <div class="qr-div">
                        <p class="ss-sub-title i18n" name="shar-customer-service-QQ">客服QQ</p>
                        <img class="qr-code" src="/r/cms/resource/sharders/img/kefuQQ.png">
                    </div>
                    <div class="qr-div">
                        <p class="ss-sub-title i18n" name="sharder-customer-service-QQS">官方QQ群</p>
                        <img class="qr-code" src="/r/cms/resource/sharders/img/index/qqyidong.png">
                    </div>
                </div>
         </section>
    </div>
</div>
<div class="popup i18n" name ="sharder-Thank" style="display: none">感谢您支持豆匣众筹。转账完成以后请您及时联系我们的客服人员进行一对一确认。</div>
<#include "/WEB-INF/ftl/sharders/hint/hint.ftl">
<#--<script src="${resSys}/resource/sharders/js/jquery.zeroclipboard.js" type="text/javascript"></script>-->
<script src="${resSys}/resource/sharders/js/jquery.qrcode-0.12.0.min.js" type="text/javascript"></script>
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