<#import "/WEB-INF/ftl/sharders/pc/mobile/layout.ftl" as lay/>
<@lay.htmlHead    pagename="invest">
<link rel="stylesheet" href="/r/cms/resource/sharders/css/mobile/invest.css">
</@lay.htmlHead>
<@lay.htmlBody>
<div class="ss-mian">
    <section class="ss-main-title">
        <h3 class="ss-head">豆匣协议代币众筹</h3>
        <ul>
            <li><span class="ss-time">1月8日-1月21日</span><span class="ss-time">1月22日-2月4日</span><span class="ss-time">2月23日-3月23</span></li>
            <li>
                <img src="/r/cms/resource/sharders/img/yuan.png" class="ss-img">
                <img src="/r/cms/resource/sharders/img/yuan.png" class="ss-img sharder-img">
                <img src="/r/cms/resource/sharders/img/yuan.png" class="ss-img">
            </li>
            <li class="ss-line"></li>
            <li><span class="ss-text">白名单预约</span><span class="ss-text">早鸟轮</span><span class="ss-text">众筹轮</span></li>
        </ul>
        <div class="sharder-link">
            <a href="/user_center/index.ss"><button class="subscribe-btn">获得优惠</button></a>
            <#--<a href="/invest/invest_item.ss"><button class="angel-btn">参与早鸟</button></a>-->
            <button class="angel-btn">参与早鸟</button>
            <#--<a href="/invest/invest_crowd_funding.ss"><button class="crowd-funding-btn">参与众筹</button></a>-->
            <button class="crowd-funding-btn">参与众筹</button>
        </div>
        <ul class="sharder-money">
            <li><p> 白名单阶段</p><p>1ETH=999SS</p></li>
            <li><p>早年轮阶段</p><p>1ETH=999SS</p></li>
            <li><p>众筹轮早期(前三天)</p><p>1ETH=999SS</p></li>
            <li><p>众筹轮阶段</p><p>1ETH=999SS</p></li>
        </ul>

    </section>
    <section class="ss-main-plan">
        <h3 class="ss-head">代币分配</h3>
        <p class="ss-plan-text">本次众筹代币是Sharder Storage，以下简称SS,SS是一种基于以太坊实现的合约代币。Sharder总共发行XXXXXXXXX个SS,流通量XXXXXXXXXX为分配计划如下：</p>
        <div id="distribution_ratio" style="width: 320px;height: 256px; margin: auto" ></div>
        <ul class="distribution-ratio-text">
            <li class="generalTextColor"><i class="yuan1"></i><span class="i18n" name="sharder-distribution-text1">15%天使轮：分发给早期天使投資人。</span></li>
            <li class="generalTextColor"><i class="yuan2"></i><span class="i18n" name="sharder-distribution-text2">35%众筹基金：將由豆匣基金会在交易所上挂单出售和官网预售。</span></li>
            <li class="generalTextColor"><i class="yuan3"></i><span class="i18n" name="sharder-distribution-text3">10%社区基金：为推动社区发展，建立可持续发展的豆匣生态。</span></li>
            <li class="generalTextColor"><i class="yuan4"></i><span class="i18n" name="sharder-distribution-text4">10%空投基金：用于交易所、商城、社区空投和原测试网络Tcc持有者的兑换。</span></li>
            <li class="generalTextColor"><i class="yuan5"></i><span class="i18n" name="sharder-distribution-text5">20%出块奖励：用于网络节点处理交易信息和打包出块的工作奖励及提供存储空间的存储奖励。</span></li>
            <li class="generalTextColor"><i class="yuan5"></i><span class="i18n" name="sharder-distribution-text6">10%团队基金：用于激励Shaders基金会和处理各种紧急事态。流通锁定期为三年，每年解锁3.3%。</span></li>
        </ul>
        <div class="see-details">
            <label for="rule">查看代币众筹细则</label>
            <input type="checkbox" class="" id="rule" style="display: none">
            <img src="/r/cms/resource/sharders/img/tab.png" >
            <ul class="rule-details">
                <li class="rule-text"><span class="rule-text-bold">白名单</span><span>在早年轮正式开始前成功注册账号即拥有1个ETH的白名单额度。白名单额度在<span class="rule-text-bold-tesu">早鸟轮阶段</span>购买豆匣币(SS)时，可额外获得20%的豆匣币(SS)奖励</span></li>
                <li class="rule-text"><span class="rule-text-bold">推广奖励</span><span>好友通过你的分享链接或邀请码进行注册，每个人增加1个ETH白名单额度。每个账号上限为100个ETH。</li>
                <li class="rule-text"><span class="rule-text-bold">投资奖励</span><span>好友参加早鸟轮和众筹轮投资后，邀请人可获得好友订购SS数量*5%的返点(返点无上限)</li>
                <li class="rule-text"><span class="rule-text-bold">空投福利</span><span>参与早鸟轮投资或则邀请了10人以上好友的账户都可以获得空投奖励，系统会自动发放。</li>
                <li class="rule-text"><span class="rule-text-bold">法币参投</span><span>如需法币参投的可至豆匣电商平台参与实物众筹。购物可获得豆匣积分(豆匣积分可1:1兑换豆匣币SS)。</li>
                <li class="rule-text"><span class="rule-text-bold">锁仓奖励</span><span>正式交易前可到官网申请锁仓。锁仓奖励为锁仓的SS数量*奖励百分比(半年:4%,一年:10%)。</li>
                <li class="rule-text"><span class="rule-text-bold">交易平台</span><span>预计登录币安(Binance),Okex,比特尔(Gate.io),炒客(Chaoex),Ebtcbank,比特时代(Aex.com)，Yobit,HitBTC。</span></li>
                <li class="rule-text"><span class="rule-text-bold">发币说明</span><span>官网直投的在众筹轮结束后三日发币:以太坊智能合约参与的自动进行兑换;交易所众筹参与的由交易所发币。</span></li>
                <li class="rule-text"><span class="rule-text-bold">退币说明</span><span>本次由于从三个渠道：官网直投，以太坊智能合约，交易所众筹进行募集。超过硬顶部分按时间先后顺序原路返回。</span></li>
            </ul>
        </div>
    </section>
    <section class="ss-main-participate">
        <div class="ss-participate-info" >
            <h3 class="ss-head">众筹参与流程</h3>
            <p class="generalTextColor i18n" name="sharder-flow-path-text1">为了为了确保sharder贡献和支持者都有公平的参与机会以及方便广大投资者参与投资。本次代币众筹有以下两种方式参与</p>
            <p class="generalTextColor"><span class="flow-title i18n" name="sharder-flow-path-text2">1.官网直投：</span><span class="i18n" name="sharder-flow-path-text3">支持BTC,ETH,LTC这三种主流币种。</span></p>
            <p class="generalTextColor"><span class="flow-title i18n" name="sharder-flow-path-text4">2.商城众筹：</span><span class="i18n" name="sharder-flow-path-text5">对于没有代币的用户我们开通了实物商城。前往商城购买定制商品的同时我们会赠送相应的SS代币（商城购买开启时间与官网天使轮开始时间一致）。</span></p>
        </div>
        <div class="ss-technological-process">
            <div class="technological-process-tab">
                <button class="official-website-direct-investment" v-on:click="tabBtn(1)">官网直投<div></div></button><button class="business-city" v-on:click="tabBtn(0)">商城众筹<div></div></button>
            </div>
                <ul class="ss-technological-step">
                    <li>
                        <span>步骤一</span>
                        <button>{{!crowdFunding ? "登录注册" : "进入商城"}}</button>
                        <span class="tesu">步骤四</span>
                        <button>{{!crowdFunding ? "转账参与" : "成功购买"}}</button>
                        <img src="/r/cms/resource/sharders/img/left.png" class="technological-img1">
                        <span class="tesu">步骤五</span>
                        <button>{{!crowdFunding ? "联系确认" : "获得积分"}}</button>
                    </li>
                    <li>
                        <img src="/r/cms/resource/sharders/img/left.png" class="technological-img2">
                        <img src="/r/cms/resource/sharders/img/left.png" class="technological-img3">
                        <img src="/r/cms/resource/sharders/img/left.png" class="technological-img4">
                    </li>
                    <li>
                        <span>步骤二</span>
                        <button>{{!crowdFunding ? "查看众筹" : "选择商品"}}</button>
                        <img src="/r/cms/resource/sharders/img/left.png" class="technological-img5">
                        <span class="tesu">步骤三</span>
                        <button>{{!crowdFunding ? "进入众筹" : "下单付款"}}</button>
                        <span class="tesu">步骤六</span>
                        <button>完成众筹</button>
                    </li>
                </ul>
            <p class="generalText i18n" name="sharder-flow-path-text6">注:本流程仅适用于天使轮阶段。正式众筹阶段我们会通过以太坊智能合约进行代币发放。</p>
            <p class="generalText i18n" name="sharder-flow-path-text7">个人众筹信息及提币信息请登录进入个人中心查看详细说明。</p>
            <p class="generalText i18n" name="sharder-flow-path-text8">商城众筹所购买商将于众筹结束后7个工作日发货。</p>
        </div>
    </section>
    <section class="sharder-info" style="display: none">
        <div class="sharder-line">
            <h3 class="sharder-early-bird">早鸟轮(已结束)</h3>
            <p class="sharder-line-p"><span></span></p>
        </div>
    </section>
    <section class="ss-main-early-bird">
        <div class="sharder-line">
            <h3 class="sharder-early-bird">早鸟轮</h3>
            <p  class="sharder-early-bird-text">1月22日9:00-2月4日23:59</p>
            <p class="sharder-line-p"><span></span></p>
        </div>
        <ul class="ss-early-bird-text">
                <li class="generalTextColor">
                    <span class="crude i18n" name="sharder-start-time">1.开始时间:</span>
                    北京时间2018年2月4日23:59，如下列任一目标达成则将立即停止天使轮。<br/>
                    &nbsp;&nbsp;A:38135593个SS全部售出。<br/>
                    &nbsp;&nbsp;B:SS售出超XX个并到达截止时间2018年2月4日。
                </li>
                <li class="generalTextColor">
                    <span class="crude i18n" name="sharder-subscription-ratio">2.兑换比例:</span><span class="i18n" name="sharder-invset-text4">
                        由于虚拟货币市场价格波动性，我们会在天使轮开始时间（北京时间2018年1月22日9:00）前一周确定锁定价格和兑换数量。<br/>
                        &nbsp;&nbsp;锁定价格：以交易所“币安”（官网www.binance.com）两周内的收盘价均价确定锁定价格和兑换数量。</span>
                </li>
                <li class="generalTextColor">
                    <span class="crude i18n" name="sharder-take-part-quota">3.参投限额:</span>
                    <span>≥1ETH/人，或等额BTC，LTC。</span>
                </li>
                <li class="generalTextColor">
                    <span class="crude i18n" name="sharder-hair-time">4.发币时间:</span>
                    <span class="i18n" name="sharder-invset-text5">众筹结束后一周以内。</span>
                </li>
                <li class="generalTextColor">
                    <span class="crude">5.</span>
                    <span class="i18n" name="sharder-invset-text6">天使轮结束以后将进入审核阶段，并于72小时内公布认购结果。</span>
                </li>
                <li class="generalTextColor">
                    <span class="crude">6.</span>
                    <span class="i18n" name="sharder-invset-text7">天使轮结束以后，众筹将会在官网以及XXX进行公开IEO,具体信息以官方信息为准。</span>
                </li>
                <li class="generalTextColor">
                    <span class="crude i18n" name="sharder-subscribe">7.白名单:</span>
                    <span  class="i18n" name="sharder-invset-text8">天使轮结束以后，众筹将会在官网以及XXX进行公开IEO,具体信息以官方信息为准。</span>
                </li>
        </ul>
        <button class="ss-btn i18n" name="sharder-immediate-participation" v-on:click="tabOpenUrl()">立即参与</button>
        <p class="ss-btn-text i18n" name="sharser-invset-text9">参与入口将在早鸟轮正式开始时开启</p>
    </section>
</div>
<script src="${resSys}/resource/sharders/js/echarts-all-3.js" type="text/javascript"></script>
<script>
    var app = new Vue({
        el: ".ss-main-participate",
        data: {
            crowdFunding:true,
            bool:-1,
        },
        methods: {
            tabBtn:function (num) {
                if(app.bool == num){
                    return ;
                }else {
                    app.bool = num;
                }
                $(".business-city").css("background-color","#000000");
                $(".official-website-direct-investment").css("background-color","#000000");

                $(".official-website-direct-investment div").css("display","none");
                $(".business-city div").css("display","none");
                if(app.crowdFunding){
                    $(".official-website-direct-investment").css("background-color","#0ba0d1");
                    $(".official-website-direct-investment div").css("display","block");
                }else{
                    $(".business-city").css("background-color","#0ba0d1");
                    $(".business-city div").css("display","block");
                }
                app.crowdFunding = !app.crowdFunding;
            }
        }
    });
    app.tabBtn(1);
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
</@lay.htmlBody>