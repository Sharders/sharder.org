<@layout.htmlHead title="我就是标题" keywords="我就是标题" description="我就是标题">

</@layout.htmlHead>

<@layout.htmlBody>
<div class="ss-container ss-theme-background-color">
    <div class="invest ss-main" id="invest_item">
        <section>
            <h1 class="ss-main-title invest-main-h1"><span>Sharder天使轮</span></h1>
        </section>

        <#include "invest_timeline.ftl" />
        <section class="in-user-center">
            <button class="ss-main-btn">你当前白名单额度为:100ETH或等价数字货币</button>
            <p>白名单所获得的额度在天使轮购买豆匣币（SS）时，可额外获得20%的豆匣币（SS）奖励。</p>
        </section>


        <section class="invest-item">
            <h3 class="ss-sub-title">天使轮</h3>
            <p>1月22日9:00-2月4日23:59</p>
            <div class="ss-row-timeline"></div>
            <div class="clause">
                <h4 class="invset-h4">规则</h4>
                <ul>
                    <li class="generalTextColor">
                        <span>1.开始时间:</span>
                        北京时间2018年1月22日9:00，如下列任一目标达成则将立即停止天使轮。<br/>
                        &nbsp;&nbsp;&nbsp;&nbsp;A:38135593个SS全部售出。<br/>
                        &nbsp;&nbsp;&nbsp;&nbsp;B:SS售出超XX个并到达截止时间2018年2月4日。
                    </li>
                    <li class="generalTextColor">
                        <span>2.兑换比例:</span>
                        由于虚拟货币市场价格波动性，我们会在天使轮开始时间（北京时间2018年1月22日9:00）前一周确定锁定价格和兑换数量。<br/>
                        &nbsp;&nbsp;&nbsp;&nbsp;锁定价格：以交易所“币安”（官网www.binance.com）两周内的收盘价均价确定锁定价格和兑换数量。
                    </li>
                    <li class="generalTextColor">
                        <span>3.参投限额:</span>
                        ≥1ETH/人，或等额BTC，LTC。
                    </li>
                    <li class="generalTextColor">
                        <span>4.发币时间:</span>
                        众筹结束后一周以内。
                    </li>
                    <li class="generalTextColor">
                        <span>5.</span>
                        天使轮结束以后将进入审核阶段，并于72小时内公布认购结果。
                    </li>
                    <li class="generalTextColor">
                        <span>6.</span>
                        天使轮结束以后，众筹将会在官网以及XXX进行公开IEO,具体信息以官方信息为准。
                    </li>
                    <li class="generalTextColor">
                        <span>7.白名单:</span>
                        天使轮结束以后，众筹将会在官网以及XXX进行公开IEO,具体信息以官方信息为准。
                    </li>
                </ul>
            </div>

            <div class="participation">
                <p class="ss-main-title invset-h4">参与</p>
                <p>可用的白名单额度: <span>100ETH</span>=<span>5BTC</span>=<span>200LTC</span></p>
                <ul class="pay-types">
                    <li><input type="radio" class="ss-radio-hidden" id="btc" value="BTC" name="payType"/><label for="btc" class="ss-label-btn" v-on:click="selectedPayType('BTC'),zero=''">
                        <img src="/r/cms/resource/sharders/img/BTC.png">比特币(BTC)</label></li>
                    <li><input type="radio" class="ss-radio-hidden" id="eth" value="ETH" name="payType"/><label for="eth" class="ss-label-btn" v-on:click="selectedPayType('ETH'),zero=''">
                        <img src="/r/cms/resource/sharders/img/ETH.png">以太坊(ETH)</label></li>
                    <li><input type="radio" class="ss-radio-hidden" id="ltc" value="LTC" name="payType"/><label for="ltc" class="ss-label-btn" v-on:click="selectedPayType('LTC'),zero=''">
                        <img src="/r/cms/resource/sharders/img/LTC.png">莱特币(LTC)</label></li>
                </ul>
                <ul class="pay-number">
                    <li><input type="text" oninput="investTransition(app.payType,this)"  input-type="icoin" placeholder="请输入支持的数量" name="payAmount" :value="zero" maxlength="4"><span class="sign">{{payType}}</span><span>=</span></li>
                    <li><input type="text" oninput="investTransition(app.payType,this)" input-type="cny" :value="zero" maxlength="10"><span class="sign">&yen;</span><span>=</span></li>
                    <li><input type="text" oninput="investTransition(app.payType,this)" input-type="ss" :value="zero" maxlength="10"><span class="sign">SS</span></li>
                </ul>

                <div class="pay-text">
                    <p class="generalTextColor">感谢你参加豆匣天使轮，你可以用直接从交易所或其他数字货币钱包发送ETH和BTC到以下地址。</p>
                    <p class="generalTextColor">参加天使轮将会默认优先使用白名单额度，如果提交了信息但未完成转账。提交扣除的白名单额度将在24小时回复。</p>
                    <p class="pay-akey generalTextColor">转账成功后为了保证你的资金安全，转账后请加客服微信，并将转账成功的截图发给我们。我们将对您进行一对一的确认。</p>
                </div>
                <div>
                    <div class="qr-code" id="walletAddr_qr_code"></div>
                </div>
                <div class="pay-addr">
                    <span>钱包地址:</span><span id="sharder-addr">0xd63F6D2f8cC2D166c43f9c82595af9498132fe32</span><button>复制</button>
                </div>
                <button class="ss-main-btn pay-btn">已完成转账</button>
            </div>
        </section>
         <section class="service-qr-code">
                <div>
                    <div class="qr-div">
                        <p class="ss-sub-title">客服微信</p>
                        <img class="qr-code" src="https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1514444411757&di=8b28333e9577133eef6ba83eab57a9ff&imgtype=0&src=http%3A%2F%2Fwww.eccn.com%2Fevents%2F2017%2Fosram%2Fimages%2Fweixin.gif">
                    </div>
                    <div class="qr-div">
                        <p class="ss-sub-title">客服QQ</p>
                        <img class="qr-code" src="https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1514444411757&di=8b28333e9577133eef6ba83eab57a9ff&imgtype=0&src=http%3A%2F%2Fwww.eccn.com%2Fevents%2F2017%2Fosram%2Fimages%2Fweixin.gif">
                    </div>
                    <div class="qr-div">
                        <p class="ss-sub-title">官方QQ群</p>
                        <img class="qr-code" src="https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1514444411757&di=8b28333e9577133eef6ba83eab57a9ff&imgtype=0&src=http%3A%2F%2Fwww.eccn.com%2Fevents%2F2017%2Fosram%2Fimages%2Fweixin.gif">
                    </div>
                </div>
         </section>
    </div>
</div>
<#--<script src="${resSys}/resource/sharders/js/jquery.zeroclipboard.js" type="text/javascript"></script>-->
<script src="${resSys}/resource/sharders/js/jquery.qrcode-0.12.0.min.js" type="text/javascript"></script>
<script>
        var config = new Object();

        var walletAddrs = new Array();


        <#list config ? keys as key >
            config.${key} =  "${config[key]}";
        </#list>
        <#list walletAddr as addr>
            var walletAddr = new Object();
            walletAddr.addr = "${addr.addr}";
            walletAddr.type = "${addr.type}";
            walletAddrs.push(walletAddr);
        </#list>
    var app = new Vue({
        el:'#invest_item',
        data:{
            payType:'',
            zero:'',
            walletAddr:'',
        },
        methods:{
            selectedPayType:function (payType) {
                app.payType = payType;
                app.setWalletAddr(payType);
            },
            setWalletAddr:function (payType) {
               var _walletAddr =  getWalletAddr(walletAddrs,payType);
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
            },
        }
    })
    app.setWalletAddr("BTC");
</script>
</@layout.htmlBody>