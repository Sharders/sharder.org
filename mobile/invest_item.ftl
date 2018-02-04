<#import "/WEB-INF/ftl/sharders/pc/mobile/layout.ftl" as lay/>

<@lay.htmlHead    pagename="invest_item">
<link rel="stylesheet" href="/r/cms/resource/sharders/css/mobile/invest_crowd_funding.css">
<link rel="stylesheet" href="/r/cms/resource/sharders/css/mobile/invest_item.css">

</@lay.htmlHead>
<@lay.htmlBody>
<div class="ss-mian" id="invest_item">
    <section class="ss-main-title">
        <h3 class="ss-head i18n" name="sharder-sharder-presale">早鸟轮</h3>
        <#include "invest_timeline.ftl" />
    </section>
    <section class="ss-main-early-bird">
        <div class="sharder-line">
            <h3 class="sharder-early-bird i18n" name="sharder-early-bird">参与早鸟轮</h3>
            <#--<p  class="sharder-early-bird-text i18n" name="sharder-invest-time-start-end">1月29日9:00-2月11日23:59</p>-->
            <p>1ETH = ${ETH_B_PRICE!}SS,1BTC = ${BTC_A_PRICE}SS</p>
            <#--<#if usePhaseIIAmount ?? && phaseIIAmount ??>-->
                <#--<p class="sharder-line-p"><span style=" width:${(usePhaseIIAmount/phaseIIAmount)*100}%;"></span><i>${(usePhaseIIAmount/phaseIIAmount)*100}%</i></p>-->
                <#--<#else >-->
                    <#--<p class="sharder-line-p"><span style=" width:0%;"></span><i>0%</i></p>-->
            <#--</#if>-->
            <p class="sharder-line-p"><span style=" width:100%;"></span><i>100%</i></p>
        </div>
        <ul class="ss-early-bird-text">
            <li class="generalTextColor">
                <span class="crude i18n" name="sharder-finish-condition">1.结束条件:</span><br/>
                <span class="i18n" name="sharder-invset-finish-million">1) 7,500,0000个SS全部售出。</span><br/>
                <span class="i18n" name="sharder-invset-finish-time">2) 到达截止时间2018年2月11日23:59。</span>
            </li>
            <li class="generalTextColor">
                <span class="crude i18n" name="sharder-invest-limit">2.参投限额:</span><br/>
                <span class="i18n" name="sharder-invest-limit-rule">≥1ETH/人或等额BTC。</span>
            </li>
            <li class="generalTextColor">
                <span class="crude i18n" name="sharder-invest-whitelist">3.白名单:</span><br/>
                <span class="i18n" name="sharder-invest-whitelist-rule">使用白名单额度参与认购可获得20%的奖励。</span>
            </li>
            <li class="generalTextColor">
                <span class="crude i18n" name="sharder-time-referral">4.邀请奖励:</span><br/>
                <span class="i18n" name="sharder-time-referral-rule">早鸟轮结束以后进入审核阶段，于72小时内公布认购结果。公开众售结束后一周内完成Token兑换。</span>
            </li>
            <li class="generalTextColor">
                <span class="crude i18n" name="sharder-time-token">5.豆匣SS:</span><br/>
                <span class="i18n" name="sharder-invest-issue-token-currency">豆匣SS是ERC20标准的token，SS将于众售结束后7个工作日内发送至您的ETH地址。</span>
            </li>
        </ul>
        <div class="main-participate-in" id="">
            <h2 class="i18n" name="add_img_container">直投</h2>
            <ul>
                <form id="invest_form">
                    <li class="main-participate-head-title"><span class="i18n" name="sharder-user-subscribe-quota">你当前的白名单额度为:</span><span class="color">${maxSubscribe!'0'}ETH</span></li>
                    <li class="button">

                        <input type="radio" id="eth" name="payType" value="ETH" checked="checked" style="display: none">
                        <label for="eth" v-on:click="selectedPayType('ETH'),zero=''">
                            <img src="/r/cms/resource/sharders/img/ETH.png"  class="btn-eth">ETH
                        </label>
                        <input type="radio" id="btc" name="payType" value="BTC"  style="display: none">
                        <label for="btc" v-on:click="selectedPayType('BTC'),zero=''">
                            <img src="/r/cms/resource/sharders/img/BTC.png" class="btn-btc">BTC
                        </label>
                    <#--<input type="radio" id="ltc" name="SS" style="display: none">-->
                    <#--<label for="ltc">-->
                    <#--<img src="/r/cms/resource/sharders/img/LTC.png"  class="btn-ltc">LTC-->
                    <#--</label>-->
                    </li>
                    <li class="input">
                        <input type="text" placeholder="输入支持数量" name="payAmount" class="i18n" oninput="investTransition(app.payType,this)" :value="zero" input-type="icoin">
                        <span class="dengyu">=</span>
                        <input type="text" oninput="investTransition(app.payType,this)" :value="zero" maxlength="4" input-type="ss">
                        <p><span class="unit btc">{{payType}}</span><span class="unit ss" maxlength="10">SS</span></p>
                    </li>
                    <li id="transfer"><button type="button" class="complete-transfer i18n" name="sharder-transfer" v-on:click="transfer()">获得转账地址</button></li>
                    <#include  'invest_investment.ftl'/>
            </ul>
        </div>
    </section>
    <section class="sharder-contact">
        <ul>
            <li>
                <p class="i18n" name="sharder-customer-service-weChat">客服微信</p>
                <img src="/r/cms/resource/sharders/img/index/weixin2.jpg" class="customer-service qq">
            </li>
            <#--<li>-->
                <#--<p class="i18n" name="shar-customer-service-QQ">客服QQ</p>-->
                <#--<img src="/r/cms/resource/sharders/img/kefuQQ.png"class="customer-service wechat" >-->
            <#--</li>-->
            <li>
                <p class="i18n" name="sharder-customer-service-QQS">官方QQ群</p>
                <img src="/r/cms/resource/sharders/img/index/qqyidong.png" class="customer-service qqs">
            </li>
        </ul>
        <p class="i18n" name="custom-service">客服工作时间：10:00  - 21:00</p>
    </section>
</div>
<div style="display: none">
    <div class="popup i18n" name ="sharder-Thank" >感谢您支持豆匣众售。转账完成以后请您及时联系我们的客服人员进行一对一确认。</div>
    <span class="i18n" name="copyok" style="display: none">复制成功</span>
</div>
    <#include "/WEB-INF/ftl/sharders/hint/hint.ftl">
<span class="i18n" name="sharder-entered-amount" style="display: none">你还没输入金额哦</span>

<script>



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

<script src="${resSys}/resource/sharders/js/jquery.qrcode-0.12.0.min.js" type="text/javascript"></script>
<script src="/r/cms/resource/sharders/js/invest_item.js"></script>

</@lay.htmlBody>