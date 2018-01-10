<@layout.htmlHead title="我就是标题" keywords="我就是标题" description="我就是标题" pagename="invest_item">

</@layout.htmlHead>

<@layout.htmlBody>
<div class="ss-container ss-theme-background-color">
    <div class="invest ss-main" id="invest_item">
        <section>
            <h1 class="ss-main-title invest-main-h1"><span class="i18n" name="sharder-angel-wheels">Sharder天使轮</span></h1>
        </section>

        <#include "invest_timeline.ftl" />
        <section class="in-user-center">
            <button class="ss-main-btn"><span class="i18n" name="sharder-timeline-text1">你当前白名单额度为</span>:${maxSubscribe!} <span class="i18n" name="sharder-timeline-text2">ETH或等价数字货币</span></button>
            <p class="i18n" name="sharder-invest-item-text1">白名单所获得的额度在天使轮购买豆匣币（SS）时，可额外获得20%的豆匣币（SS）奖励。</p>
        </section>


        <section class="invest-item">
            <h3 class="ss-sub-title i18n" name="sharder-angel-wheel">天使轮</h3>
            <p class="i18n" name="sharder-invest-time-start-end">1月22日9:00-2月4日23:59</p>
            <div class="ss-row-timeline"></div>
            <div class="clause">
                <h4 class="invset-h4 i18n" name="sharder-rule">规则</h4>
                <ul>
                    <li class="generalTextColor">
                        <span class="crude i18n" name="sharder-start-time">1.开始时间:</span>
                        <span class="i18n" name="sharder-invest-item-text2">北京时间2018年1月22日9:00，如下列任一目标达成则将立即停止天使轮。<br/>
                        &nbsp;&nbsp;&nbsp;&nbsp;A:38135593个SS全部售出。<br/>
                        &nbsp;&nbsp;&nbsp;&nbsp;B:SS售出超XX个并到达截止时间2018年2月4日。</span>
                    </li>
                    <li class="generalTextColor">
                        <span class="crude i18n" name="sharder-subscription-ratio">2.兑换比例:</span>
                        <span class="i18n" name="sharder-invest-item-text3">由于虚拟货币市场价格波动性，我们会在天使轮开始时间（北京时间2018年1月22日9:00）前一周确定锁定价格和兑换数量。<br/>
                        &nbsp;&nbsp;&nbsp;&nbsp;锁定价格：以交易所“币安”（官网www.binance.com）两周内的收盘价均价确定锁定价格和兑换数量。</span>
                    </li>
                    <li class="generalTextColor">
                        <span class="crude i18n" name="sharder-investment-quota">3.参投限额:</span>
                        <span class="i18n" name="sharder-invest-item-text4">≥1ETH/人，或等额BTC，LTC。</span>
                    </li>
                    <li class="generalTextColor">
                        <span class="crude i18n" name="sharder-time-currency">4.发币时间:</span>
                        <span class="i18n" name="sharder-invest-item-text5">众筹结束后一周以内。</span>
                    </li>
                    <li class="generalTextColor">
                        <span class="crude">5.</span>
                        <span class="i18n" name="sharder-invest-item-text6">天使轮结束以后将进入审核阶段，并于72小时内公布认购结果。</span>
                    </li>
                    <li class="generalTextColor">
                        <span class="crude">6.</span>
                        <span class="i18n" name="sharder-invest-item-text7">天使轮结束以后，众筹将会在官网以及XXX进行公开IEO,具体信息以官方信息为准。</span>
                    </li>
                    <li class="generalTextColor">
                        <span class="crude i18n" name="sharder-subscribe">7.白名单:</span>
                        <span class="i18n" name="sharder-invest-item-text8">天使轮结束以后，众筹将会在官网以及XXX进行公开IEO,具体信息以官方信息为准。</span>
                    </li>
                </ul>
            </div>

            <div class="participation">
                <p class="ss-main-title invset-h4 i18n" name="sharder-angel-wheel-participate">参与</p>
                <p><span class="i18n" name="sharder-available-subscribe">可用的白名单额度: </span><span>{{available}}ETH</span>=<span>{{available*currency.ETH/currency.BTC}}BTC</span>=<span>{{available*currency.ETH/currency.LTC}}LTC</span></p>
                <ul class="pay-types">
                    <li><input type="radio" class="ss-radio-hidden" id="btc" value="BTC" checked="checked" name="payType"/><label for="btc" class="ss-label-btn" v-on:click="selectedPayType('BTC'),zero=''">
                        <img src="/r/cms/resource/sharders/img/BTC.png"><span class="i18n" name="sharder-BTC">比特币(BTC)</span></label></li>
                    <li><input type="radio" class="ss-radio-hidden" id="eth" value="ETH" name="payType"/><label for="eth" class="ss-label-btn" v-on:click="selectedPayType('ETH'),zero=''">
                        <img src="/r/cms/resource/sharders/img/ETH.png"><span class="i18n" name="sharder-ETH">以太坊(ETH)</span></label></li>
                    <li><input type="radio" class="ss-radio-hidden" id="ltc" value="LTC" name="payType"/><label for="ltc" class="ss-label-btn" v-on:click="selectedPayType('LTC'),zero=''">
                        <img src="/r/cms/resource/sharders/img/LTC.png"><span class="i18n" name="sharder-LTC">莱特币(LTC)</span></label></li>
                </ul>
                <ul class="pay-number">
                    <li><input type="number" oninput="investTransition(app.payType,this)" input-type="icoin" placeholder="请输入支持的数量" name="payAmount" :value="zero" maxlength="4"><span class="sign">{{payType}}</span><span>=</span></li>
                    <li><input type="number" oninput="investTransition(app.payType,this)" input-type="cny" :value="zero" maxlength="10"><span class="sign">&yen;</span><span>=</span></li>
                    <li><input type="number" oninput="investTransition(app.payType,this)" input-type="ss" :value="zero" maxlength="10"><span class="sign">SS</span></li>
                </ul>

                <div class="pay-text">
                    <p class="generalTextColor i18n" name="sharder-invest-item-text9">感谢你参加豆匣天使轮，你可以用直接从交易所或其他数字货币钱包发送ETH和BTC到以下地址。</p>
                    <p class="generalTextColor i18n" name="sharder-invest-item-text10">参加天使轮将会默认优先使用白名单额度，如果提交了信息但未完成转账。提交扣除的白名单额度将在24小时回复。</p>
                    <p class="pay-akey generalTextColor i18n" name="sharder-invest-item-text11">转账成功后为了保证你的资金安全，转账后请加客服微信，并将转账成功的截图发给我们。我们将对您进行一对一的确认。</p>
                </div>
                <div>
                    <div class="qr-code" id="walletAddr_qr_code"></div>
                </div>
                <div class="pay-addr">
                    <span class="i18n" name="sharder-addr-wallet">钱包地址:</span><span id="sharder-addr">{{walletAddr}}</span><button onclick="jsCopy()" class="i18n" name="sharder-copy">复制</button>
                </div>
                <button class="ss-main-btn pay-btn i18n" name="sharder-completed-transfer" v-on:click="prompt()">已完成转账</button>
            </div>
        </section>
         <section class="service-qr-code">
                <div>
                    <div class="qr-div">
                        <p class="ss-sub-title i18n" name="sharder-customer-service-weChat">客服微信</p>
                        <img class="qr-code" src="https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1514444411757&di=8b28333e9577133eef6ba83eab57a9ff&imgtype=0&src=http%3A%2F%2Fwww.eccn.com%2Fevents%2F2017%2Fosram%2Fimages%2Fweixin.gif">
                    </div>
                    <div class="qr-div">
                        <p class="ss-sub-title i18n" name="shar-customer-service-QQ">客服QQ</p>
                        <img class="qr-code" src="https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1514444411757&di=8b28333e9577133eef6ba83eab57a9ff&imgtype=0&src=http%3A%2F%2Fwww.eccn.com%2Fevents%2F2017%2Fosram%2Fimages%2Fweixin.gif">
                    </div>
                    <div class="qr-div">
                        <p class="ss-sub-title i18n" name="sharder-customer-service-QQS">官方QQ群</p>
                        <img class="qr-code" src="https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1514444411757&di=8b28333e9577133eef6ba83eab57a9ff&imgtype=0&src=http%3A%2F%2Fwww.eccn.com%2Fevents%2F2017%2Fosram%2Fimages%2Fweixin.gif">
                    </div>
                </div>
         </section>
    </div>
</div>
<div class="popup">感谢您支持豆匣众筹。转账完成以后请您及时联系我们的客服人员进行一对一确认。</div>
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
        alert("复制成功");
    }
</script>
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

    var app = new Vue({
        el:'#invest_item',
        data:{
            payType:'',
            zero:'',
            walletAddr:'',
            currency:'',
            available:number,
        },
        methods:{
            selectedPayType:function (payType) {
                console.log(payType +"");
                app.payType = payType;
                app.setWalletAddr(payType);
                app.currency={"BTC":config.LOCK_PRICE_BTC,"ETH":config.LOCK_PRICE_ETH,"LTC":config.LOCK_PRICE_LTC};
            },
            setWalletAddr:function (payType) {

               var _walletAddr =  getWalletAddr(walletAddrs,payType);
               console.log("dizhi"+_walletAddr);
                app.walletAddr = _walletAddr;
                $("#walletAddr_qr_code").empty();
               if(isNotNull(_walletAddr)){
                    jQuery("#walletAddr_qr_code").qrcode({
                        render: "canvas",
                        text:_walletAddr
                    });
                   var qr=$("#walletAddr_qr_code canvas");
                   qr.css("padding","10px");
                   qr.css("width","156px");
                   qr.css("height","156px");
                   qr.css("border","2px solid");
               }
               $(".participation .pay-types li img").css("background-color","#ffffff");
               $(".participation .pay-types li img").css("border-radius","50%");
            },
            prompt:function () {
                var style = $(".popup").css("display");
                if(style == "none"){
                    $(".popup").css("display","block");
                    setTimeout('$(".popup").css("display","none")',5000);
                }
            },
        }
    })
    app.selectedPayType("BTC");
</script>
</@layout.htmlBody>