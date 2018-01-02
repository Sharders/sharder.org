<@layout.htmlHead title="我就是标题" keywords="我就是标题" description="我就是标题">

</@layout.htmlHead>

<@layout.htmlBody>
<div class="ss-container ss-theme-background-color">
    <div class="invest ss-main ">
        <section>
            <h1 class="ss-main-title invest-main-h1"><span>Sharder代币众筹细则</span></h1>
        </section>
        <#include "invest_timeline.ftl" />

        <section class="in-user-center">
            <button class="ss-main-btn">前往个人中心获取白名单份额</button>
            <p>白名单所获得的额度在<span class="angel">天使轮阶段</span>购买豆匣币（SS）时，可额外获得20%的豆匣币（SS）奖励。</p>
        </section>

        <section class="distribution-program">
            <h3 class="ss-sub-title">Sharder代币分配计划</h3>
            <p class="generalTextColor">本次众筹代币是Sharder Storage，以下简称SS,SS是一种基于以太坊实现的合约代币。Sharder总共发行{这里通过配置读取 254,237,288}SS,流通量为分配计划如下：</p>
            <div class="distribution-ratio">
                <div id="distribution_ratio" style="width: 350px;height: 280px;" class="distribution-ratio-img"></div>
                <ul class="distribution-ratio-text">
                    <li class="generalTextColor"><i class="yuan1"></i>15%天使轮：分发给早期天使投資人。</li>
                    <li class="generalTextColor"><i class="yuan2"></i>35%众筹基金：將由豆匣基金会在交易所上挂单出售和官网预售。</li>
                    <li class="generalTextColor"><i class="yuan3"></i>10%社区基金：为推动社区发展，建立可持续发展的豆匣生态。</li>
                    <li class="generalTextColor"><i class="yuan4"></i>10%空投基金：用于交易所、商城、社区空投和原测试网络Tcc持有者的兑换。</li>
                    <li class="generalTextColor"><i class="yuan5"></i>20%出块奖励：用于网络节点处理交易信息和打包出块的工作奖励及提供存储空间的存储奖励。</li>
                    <li class="generalTextColor"><i class="yuan5"></i>10%团队基金：用于激励Shaders基金会和处理各种紧急事态。流通锁定期为三年，每年解锁3.3%。</li>
                </ul>
            </div>
        </section>

        <section class="flow-path">
            <h3 class="ss-sub-title">Sharder代币众筹参与流程</h3>
            <p class="generalTextColor">为了为了确保sharder贡献和支持者都有公平的参与机会以及方便广大投资者参与投资。本次代币众筹有以下两种方式参与</p>
            <p class="generalTextColor"><span class="flow-title">1.官网直投：</span>支持BTC,ETH,LTC这三种主流币种。</p>
            <p class="generalTextColor"><span class="flow-title">2.商城众筹：</span>对于没有代币的用户我们开通了实物商城。前往商城购买定制商品的同时我们会赠送相应的SS代币（商城购买开启时间与官网天使轮开始时间一致）。</p>

            <div>
                <button class="flow-button official-button" v-on:click="tabCrowdFunding(true)"><div v-if="!isOfficial"></div>官方众筹流程</button>
                <button class="flow-button shopping-button" v-on:click="tabCrowdFunding(false)"><div v-if="isOfficial"></div>商城众筹流程</button>
                <ul class="flow-path-ul flow-path-ul1">
                    <li>
                        <span class="step">步骤一</span>
                        <button class="item">登录注册</button>
                        <img src="/r/cms/resource/sharders/img/xian.png">
                    </li>
                    <li>
                        <span class="step">步骤二</span>
                        <button class="item">进入商城页面查看{{crowdFunding.a}}信息</button>
                        <img src="/r/cms/resource/sharders/img/xian.png">
                    </li>
                    <li>
                        <span class="step">步骤三</span>
                        <button class="item">{{crowdFunding.b}}</button>
                        <img src="/r/cms/resource/sharders/img/xian.png">
                    </li>
                <#--<i class="fa fa-angle-double-left" aria-hidden="true"></i>-->
                    <li>
                        <span class="step">步骤四</span>
                        <button class="item">{{crowdFunding.c}}</button>
                    </li>
                </ul>
                <div class="switch-div">
                    <span class="step five" v-if="!isOfficial">步骤五</span>
                    <img src="/r/cms/resource/sharders/img/xian2.png" class="flow-img">
                </div>
                <ul class="flow-path-ul flow-path-ul2">
                    <li>
                        <button class="item">进入众筹中心查看众筹信息</button>
                        <img src="/r/cms/resource/sharders/img/xian.png">
                    </li>
                    <li>
                        <button class="item">{{crowdFunding.d}}</button>
                        <img src="/r/cms/resource/sharders/img/xian.png">
                    </li>
                    <li>
                        <button class="item">{{crowdFunding.e}}</button>
                        <img src="/r/cms/resource/sharders/img/xian.png">
                    </li>
                    <li>
                        <button class="item">{{crowdFunding.f}}</button>
                    </li>
                </ul>
                <p class="generalText">本流程仅适用于天使轮阶段。正式众筹阶段我们会通过以太坊智能合约进行代币发放。</p>
                <p class="generalText">个人众筹信息及提币信息请登录进入个人中心查看详细说明。</p>
                <p class="generalText" v-if="isOfficial">商城众筹所购买商将于众筹结束后7个工作日发货。</p>
            </div>
        </section>
        <section class="invest-item">
            <h3 class="ss-sub-title">{{angelOrCrowdFunding}}</h3>
            <p>{{angelOrCrowdText.time1}}-{{angelOrCrowdText.time2}}</p>
            <div class="ss-row-timeline line"></div>
            <div class="invest-angel">
                <h4 class="invset-h4">{{angelOrCrowdFunding}}细则</h4>
                <ul>
                    <li class="generalTextColor">
                        <span>1.开始时间:</span>
                        北京时间2018年{{angelOrCrowdText.time1}}，如下列任一目标达成则将立即停止天使轮。<br/>
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
                    <li class="generalTextColor" v-if="!isCrowdFunding">
                        <span>7.白名单:</span>
                        天使轮结束以后，众筹将会在官网以及XXX进行公开IEO,具体信息以官方信息为准。
                    </li>
                </ul>
                <button class="ss-btn">立即参与</button>
                <p class="ss-btn-text">参与入口将在天使轮开始（2018年1月22日）时开启</p>
                <p class="ss-btn-text color" v-if="isCrowdFunding">众筹轮我们将使用以太坊的智能合约XXXXXX</p>
            </div>
            <div class="invest-item-tab"><img src="/r/cms/resource/sharders/img/tab.png" v-on:click="tabAngelOrCrowdFunding()"/></div>
        </section>
        <div class="block-footer">
            <span>您已认购</span>:
            <span>0BTC |</span>
            <span>0ETH |</span>
            <span>0LTC |</span>
            <span class="balance">账户余额: 0 SS</span>
        </div>
    </div>
</div>

<script src="${resSys}/resource/sharders/js/echarts-all-3.js" type="text/javascript"></script>
<script>
    var pc = new Vue({
        el: ".invest",
        data: {
            crowdFunding:"",
            isOfficial:false,
            isCrowdFunding:true,
            angelOrCrowdFunding:"早鸟轮",
            angelOrCrowdText:"",
        },
        methods: {
            tabCrowdFunding:function (bool) {
                $(".flow-path .flow-button").css("background-color","#000000");
                if(bool){
                    pc.crowdFunding = {a:"商品",b:"选择对于阶段开始众筹",c:"向众筹地址转账",d:"众筹完成",e:"联系客服确认信息",f:"完成转账"};
                    $(".flow-button.official-button").css("background-color","#0ba0d1");
                }else {
                    pc.crowdFunding = {a:"众筹",b:"提交订单购买所选商品",c:"付款",d:"商城积分自动同步到豆匣个人中心豆匣币",e:"成功购买商品",f:"付款成功"};
                    $(".flow-button.shopping-button").css("background-color","#0ba0d1");
                }
                pc.isOfficial = !bool;
            },
            tabAngelOrCrowdFunding:function () {
                pc.isCrowdFunding = !pc.isCrowdFunding;
                $(".invest-item").css("padding","40px 30px");
                if(pc.isCrowdFunding){
                    pc.angelOrCrowdFunding = "天使轮";
                    $(".invest-item-tab").css("left","");
                    for(var i=10;i<=1200-80 ;i++){
                        setTimeout('$(".invest-item-tab").css("right","'+i+'px")',200);
                    }
                    $(".invest-item-tab img").css("transform","rotateY(0deg)");
                    $(".invest-item").css("padding-left","110px");
                    pc.angelOrCrowdText={time1:"2月23日9:00",time2:"3月23日23:59"};
                }else {
                    pc.angelOrCrowdFunding = "早鸟轮";
                    $(".invest-item-tab").css("right","");
                    for(var i=10;i<=1200-80 ;i++){
                        setTimeout('$(".invest-item-tab").css("left","'+i+'px")',200);
                    }
                    $(".invest-item-tab img").css("transform","rotateY(180deg)");
                    $(".invest-item").css("padding-right","110px");
                    pc.angelOrCrowdText={time1:"1月22日9:30",time2:"2月4日23:59"};
                }

            },
        },
    });
    pc.tabCrowdFunding(true);
    pc.tabAngelOrCrowdFunding();
</script>
<script>
    var myEcharts = echarts.init(document.getElementById("distribution_ratio"));
    option = {
        tooltip : {
            trigger: 'item',
            formatter: "{a} <br/>{b} : {c} ({d}%)"
        },
        color:['#063b5b','#098b7d','#83a821','#c9800c','#0ba0d1','#dc5f0a'],
        series : [
            {
                type: 'pie',
                radius : '65%',
                center: ['50%', '50%'],
                selectedMode: 'single',
                data:[
                    {value:15, name: '天使轮'},
                    {value:20, name: '众筹基金'},
                    {value:20, name: '社区基金'},
                    {value:30, name: '空投基金'},
                    {value:20, name: '出块奖励'},
                    {value:10, name: '团队基金'}
                ],
                itemStyle: {
                    emphasis: {
                        shadowBlur: 10,
                        shadowOffsetX: 0,
                        shadowColor: 'rgba(0, 0, 0, 0.5)'
                    }
                }
            }
        ]
    };
    myEcharts .setOption(option, true);
</script>
</@layout.htmlBody>