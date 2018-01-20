<#import "/WEB-INF/ftl/sharders/pc/mobile/layout.ftl" as lay/>
<@lay.htmlHead    pagename="invest_item">
<link rel="stylesheet" href="/r/cms/resource/sharders/css/mobile/invest_crowd_funding.css">
<link rel="stylesheet" href="/r/cms/resource/sharders/css/mobile/invest_item.css">
</@lay.htmlHead>
<@lay.htmlBody>
<div class="ss-mian">
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
            <button class="i18n" name="canyubaimingdan">已结束</button>
        <#--<a href="/user_center/index.ss"><button class="subscribe-btn i18n" name="">获得优惠</button></a>-->
        <a href="/invest/invest_item.ss"><button class="angel-btn subscribe-btn i18n" name="canyubaimingdan">正在进行</button></a>
            <#--<button class="i18n" name="">已结束</button>-->
        <#--<button class="angel-btn i18n" name="">参与早鸟</button>-->
            <#--<a href="/invest/invest_crowd_funding.ss">-->
                <#--<button class="crowd-funding-btn subscribe-btn">正在进行</button>-->
            <#--</a>-->
        <button class="crowd-funding-btn i18n" name="canyubaimingdan">参与众筹</button>
        </div>
    </section>
    <section class="ss-main-early-bird">
        <div class="sharder-line">
            <h3 class="sharder-early-bird i18n" name="sharder-angel-wheel">参与早鸟轮</h3>
            <p  class="sharder-early-bird-text i18n" name="sharder-invest-time-start-end">1月29日9:00-2月11日23:59</p>
            <p class="sharder-line-p"><span style=" width: 1%;"></span><i>1%</i></p>
        </div>
        <ul class="ss-early-bird-text">
            <li class="generalTextColor">
                <span class="crude i18n" name="sharder-start-time">1.开始时间:</span>
                <span class="i18n" name="sharder-invest-item-text2">
                    北京时间2018年2月21日23:59，如下列任一目标达成则将立即停止早鸟轮。<br/>
                &nbsp;&nbsp;A:7500000个SS全部售出。<br/>
                &nbsp;&nbsp;B:SS售出超1950个ETH并到达截止时间2018年2月11日。
                </span>
            </li>
            <li class="generalTextColor">
                <span class="crude i18n" name="sharder-subscription-ratio">2.兑换比例:</span>
                <span class="i18n" name="sharder-invset-text4">
                        由于虚拟货币市场价格波动性，我们会在早鸟轮开始时间（北京时间2018年1月29日9:00）前一周确定锁定价格和兑换数量。<br/>
                        &nbsp;&nbsp;锁定价格：以交易所“币安”（官网www.binance.com）一周内的收盘价均价确定锁定价格和兑换数量。</span>
            </li>
            <li class="generalTextColor">
                <span class="crude i18n" name="sharder-investment-quota">3.参投限额:</span>
                <span class="i18n" name="sharder-invest-item-text4">≥1ETH/人，或等额BTC，LTC。</span>
            </li>
            <li class="generalTextColor">
                <span class="crude i18n" name="sharder-hair-time">4.发币时间:</span>
                <span class="i18n" name="sharder-invset-text5">众筹结束后一周以内。</span>
            </li>
            <li class="generalTextColor">
                <span class="crude">5.</span>
                <span class="i18n" name="sharder-invset-text6">早鸟轮结束以后将进入审核阶段，并于72小时内公布认购结果。</span>
            </li>
            <li class="generalTextColor">
                <span class="crude">6.</span>
                <span class="i18n" name="sharder-invset-text7">早鸟轮结束以后，众筹将会在官网以及交易所进行公开IEO,具体信息以官方信息为准。</span>
            </li>
            <li class="generalTextColor">
                <span class="crude i18n" name="sharder-subscribe">7.白名单:</span>
                <span  class="i18n" name="sharder-invset-text8">早鸟轮结束以后，众筹将会在官网以及交易所进行公开IEO,具体信息以官方信息为准。</span>
            </li>
        </ul>
        <div class="main-participate-in" id="">
            <h2 class="i18n" name="sharder-angel-wheel-participate">参与</h2>
            <ul>
                <li class="main-participate-head-title"><span class="i18n" name="sharder-user-subscribe-quota">你当前的白名单额度为:</span><span class="color">100ETH</span></li>
                <li class="button">
                    <input type="radio" id="btc" name="SS" style="display: none">
                    <label for="btc">
                        <img src="/r/cms/resource/sharders/img/BTC.png" class="btn-btc">BTC
                    </label>
                    <input type="radio" id="eth" name="SS" style="display: none">
                    <label for="eth">
                       <img src="/r/cms/resource/sharders/img/ETH.png"  class="btn-eth">ETH
                    </label>
                    <input type="radio" id="ltc" name="SS" style="display: none">
                    <label for="ltc">
                        <img src="/r/cms/resource/sharders/img/LTC.png"  class="btn-ltc">LTC
                    </label>
                </li>
                <li class="input">
                    <input type="text" placeholder="输入支持数量"><span class="dengyu">=</span><input type="text">
                    <p><span class="unit btc">BTC</span><span class="unit ss">SS</span></p>
                </li>
                <li id="transfer"><button class="complete-transfer i18n" name="sharder-transfer" v-on:click="transfer()">获得转账地址</button></li>
                <div id="transfer_details" style="display: none">
                    <li>
                        <p>
                            <span class="i18n" name="sharder-invest-item-text9">感谢你参与早鸟轮，你可以从交易所或其他虚拟币钱包转到以下早鸟轮募集地址。</span><br />
                            <span class="i18n" name="sharder-invest-item-text10">参与早鸟轮将会默认优先使用白名单，你可以从如果你提交了信息但未进行转账，提交扣除的额度将在24小时内恢复。</span><br />
                            <span class="color-red i18n" name="sharder-invest-item-text11">为了保障你的资金安全，转账以后请你联系我们的官方客服人员，并将转账截图发送给我们，我们将对你一对一的确认。</span>
                        </p>
                        <div id="walletQr"></div>
                        <p class="bg-walletQr"><span class="i18n"  name="sharder-addr-wallet">转账地址: </span><span id="walletQr-text">测试地址二维码</span></p>
                    </li>
                    <li><button class="complete-transfer i18n" name="sharder-completed-transfer">完成转账</button></li>
                </div>
            </ul>
        </div>
    </section>
    <section class="sharder-contact">
        <lu>
            <li>
                <p class="i18n" name="sharder-customer-service-weChat">客服微信</p>
                <img src="/r/cms/resource/sharders/img/index/weixingqr.png" class="customer-service qq">
            </li>
            <li>
                <p class="i18n" name="shar-customer-service-QQ">客服QQ</p>
                <img src="/r/cms/resource/sharders/img/index/qqyidong.png"class="customer-service wechat" >
            </li>
            <li>
                <p class="i18n" name="sharder-customer-service-QQS">官方QQ群</p>
                <img src="/r/cms/resource/sharders/img/index/qqyidong.png" class="customer-service qqs">
            </li>
        </lu>
    </section>
</div>
<script src="${resSys}/resource/sharders/js/jquery.qrcode-0.12.0.min.js" type="text/javascript"></script>
<script>
    function setQr(text) {
        $("#walletQr").empty();
        jQuery("#walletQr").qrcode({
            render: "canvas",
            text:text
        });
        var qr=$("#walletQr canvas");
        qr.css("width","156px");
        qr.css("height","156px");
    }
    setQr($("#walletQr-text").text());
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
            isShowTransfer:true,
        },
        methods:{
            selectedPayType:function (payType) {
                console.log(payType +"");
                app.payType = payType;
                app.setWalletAddr(payType);
                app.currency={"BTC":config.LOCK_PRICE_BTC,"ETH":config.LOCK_PRICE_ETH,"LTC":config.LOCK_PRICE_LTC};
            },
            transfer:function () {
                $("#transfer_details").css("display","block");
                $("#transfer").css("display","none");

            },
            prompt:function () {
                //这里需要判断输入金额
                var payAmount =  $("input[name='payAmount']").val();
                if(payAmount == null || payAmount<=0){
                    return;
                }
                var requestUrl = "/invest/invest.ss";
                var _data = $("#invest_form").serialize();
                commAjax(requestUrl,"post",_data,"");
                layer.msg($(".popup").text());
            },
        }
    })
    app.selectedPayType("BTC");
</script>
</@lay.htmlBody>