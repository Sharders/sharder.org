<#import "/WEB-INF/ftl/sharders/pc/mobile/layout.ftl" as lay/>

<@lay.htmlHead    pagename="invest_item">
<link rel="stylesheet" href="/r/cms/resource/sharders/css/mobile/invest_crowd_funding.css">
<link rel="stylesheet" href="/r/cms/resource/sharders/css/mobile/invest_item.css">

</@lay.htmlHead>
<@lay.htmlBody>
<div class="ss-mian" id="invest_item">
    <section class="ss-main-title">
        <h3 class="ss-head i18n" name="sharder-angel-wheels">早鸟轮</h3>
        <ul>
            <li><span class="ss-time i18n" name="sharder-time-start-end">1月18日-1月28日</span>
                <span class="ss-time i18n" name="sharder-angel-time-start-end">1月29日-2月11日</span>
                <span class="ss-time i18n" name="sharder-crowd-funding-time-start-end">2月23日-3月23</span></li>
            <li>
                <img src="/r/cms/resource/sharders/img/yuan.png" class="ss-img">
                <img src="/r/cms/resource/sharders/img/yuan.png" class="ss-img sharder-img">
                <img src="/r/cms/resource/sharders/img/yuan.png" class="ss-img">
            </li>
            <li class="ss-line"></li>
            <li>
                <span class="ss-text i18n" name="sharder-subscribe-reserve">白名单预约</span>
                <span class="ss-text i18n" name="sharder-angel">早鸟轮</span>
                <span class="ss-text i18n" name="sharder-crowd-funding">众筹轮</span>
            </li>
        </ul>
        <div class="sharder-link">
            <button class="i18n" name="yijieshu">已结束</button>
        <#--<a href="/user_center/index.ss"><button class="subscribe-btn i18n" name="">获得优惠</button></a>-->
            <#--<a href="/invest/invest_item.ss"><button class="angel-btn subscribe-btn i18n" name="canyutianshilun">正在进行</button></a>-->
            <a href="javascript:;"><button class="angel-btn subscribe-btn i18n" name="yijieshu">已结束</button></a>
        <#--<button class="i18n" name="">已结束</button>-->
        <#--<button class="angel-btn i18n" name="">参与早鸟</button>-->
        <#--<a href="/invest/invest_crowd_funding.ss">-->
        <#--<button class="crowd-funding-btn subscribe-btn">正在进行</button>-->
        <#--</a>-->
            <#--<button class="crowd-funding-btn i18n" name="canyuzhongchoulun">参与众筹</button>-->
            <button class="crowd-funding-btn i18n"name="jinqingqidai">敬请期待</button>
        </div>
    </section>
    <section class="ss-main-early-bird">
        <div class="sharder-line">
            <h3 class="sharder-early-bird i18n" name="sharder-angel-wheel">参与早鸟轮</h3>
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
                <span class="i18n" name="sharder-invset-finish1">1) 7,500,0000个SS全部售出。</span><br/>
                <span class="i18n" name="sharder-invset-finish2">2) 到达截止时间2018年2月11日23:59。</span>
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
                <span class="i18n" name="sharder-time-referral-rule">早鸟轮结束以后进入审核阶段，于72小时内公布认购结果。公开众筹结束后一周内完成Token兑换。</span>
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
                    <div id="transfer_details" style="display: none">
                        <li>
                            <div class="pay-text">
                                <#--<p class="generalTextColor"><span class="i18n" name="sharder-invest-item-text9">感谢你参加豆匣早鸟轮，你可以用直接从数字货币钱包发送</span>{{payType}}<span class="i18n" name="sharder-invest-item-text12">到以下地址。</span></p>-->
                                <p class="generalTextColor i18n" name="sharder-invest-item-text10">参加早鸟轮将会优先使用白名单额度，如提交了认购申请但未完成转账。扣除的白名单额度将在24小时内恢复。</p>
                                <#--<p class="pay-akey generalTextColor i18n" name="sharder-invest-item-text11">转账成功后为了保证您的资金安全，转账后请加客服微信并将转账成功的截图发给我们。我们将为您进行一对一的确认。</p>-->
                            </div>
                            <div id="walletAddr_qr_code"></div>
                            <p class="bg-walletQr"><span class="i18n"  name="sharder-addr-wallet">转账地址: </span><span id="walletQr-text">{{walletAddr}}</span><img src="/r/cms/resource/sharders/img/copyicon.svg" class="copy-icon" onclick="copyTextById('walletQr-text')"></p>
                        </li>
                        <li>
                            <div class="trade_prove">
                                <div class="user-wallet-addr">
                                    <label for="user_wallet_addr" ><span class="i18n" name="sharder-invest-item1">请填写</span><span style="color: red;" class="i18n" name="sharder-invest-item2">您转账</span><span class="i18n" name="sharder-invest-item3">的钱包地址</span>:</label>
                                    <input id="user_wallet_addr" name="payWalletAddr">
                                </div>

                                <p class="hint-info"><span class="i18n" name="sharder-invest-item4">转币成功截图</span><span class="hint-info i18n" name="sharder-invest-item5">(注意：截图需包含转款地址，收款地址，转款金额等信息，可传多张截图)</span></p>
                                <div id="add_img"></div>
                            </div>
                            <input type="hidden" name="tradeImgAddr">
                        </li>
                        <li>
                            <button type="button" class="complete_transfer i18n" name="sharder-completed-transfer" v-on:click="prompt()">已完成转账</button>
                        <#--<button class="complete_transfer i18n tesu" name="sharder-copy" onclick="jsCopy()">复制地址</button></li>-->
                    </div>
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
    <div class="popup i18n" name ="sharder-Thank" >感谢您支持豆匣众筹。转账完成以后请您及时联系我们的客服人员进行一对一确认。</div>
    <span class="i18n" name="copyok" style="display: none">复制成功</span>
</div>
    <#include "/WEB-INF/ftl/sharders/hint/hint.ftl">
<span class="i18n" name="nihaimeishurujine" style="display: none">你还没输入金额哦</span>

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