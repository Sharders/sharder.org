<#import "/WEB-INF/ftl/sharders/pc/mobile/layout.ftl" as lay/>
<#import "/WEB-INF/t/cms/www/sharder.org/ss_tpl_invest.ftl" as investTpl/>

<@lay.htmlHead    pagename="invest">
<link rel="stylesheet" href="/r/cms/resource/sharders/css/mobile/invest.css">
</@lay.htmlHead>
<@lay.htmlBody>
<div class="ss-mian">
    <section class="ss-main-title">
        <h3 class="ss-head i18n" name="">豆匣token众筹</h3>
        <ul>
            <li><span class="ss-time i18n" name="">1月18日-1月28日</span><span class="ss-time i18n" name="">1月29日-2月11日</span><span class="ss-time i18n" name="">2月23日-3月23</span></li>
            <li>
                <img src="/r/cms/resource/sharders/img/yuan.png" class="ss-img">
                <img src="/r/cms/resource/sharders/img/yuan.png" class="ss-img sharder-img">
                <img src="/r/cms/resource/sharders/img/yuan.png" class="ss-img">
            </li>
            <li class="ss-line"></li>
            <li><span class="ss-text i18n" name="">白名单预约</span><span class="ss-text i18n" name="">早鸟轮</span><span class="ss-text i18n" name="">众筹轮</span></li>
        </ul>
        <div class="sharder-link">
            <#--<button class="i18n" name="">已结束</button>-->
        <a href="/user_center/index.ss"><button class="subscribe-btn i18n" name="">获得优惠</button></a>
            <#--<a href="/invest/invest_item.ss"><button class="angel-btn subscribe-btn">正在进行</button></a>-->
        <#--<button class="i18n" name="">已结束</button>-->
        <button class="angel-btn i18n" name="">参与早鸟</button>
        <#--<a href="/invest/invest_crowd_funding.ss"><button class="crowd-funding-btn subscribe-btn">正在进行</button></a>-->
            <button class="crowd-funding-btn">参与众筹</button>
        </div>
        <ul class="sharder-money">
            <li><p  class="i18n" name=""> 白名单阶段</p><p  class="i18n" name="">1ETH=待定</p></li>
            <li><p class="i18n" name="">早年轮阶段</p><p class="i18n" name="">1ETH=待定</p></li>
            <li><p class="i18n" name="">众筹轮早期(前三天)</p><p class="i18n" name="">1ETH=待定</p></li>
            <li><p class="i18n" name="">众筹轮阶段</p><p class="i18n" name="">1ETH=待定</p></li>
        </ul>

    </section>
    <section class="ss-main-plan">
        <h3 class="ss-head i18n" name="">Token分配</h3>
        <p class="ss-plan-text i18n" name="">本次众筹Token是(Sharder Storage 简称SS),SS是一种符合以太坊ERC20标准的Token。SS总共发行5亿,分配计划如下：</p>
        <div id="distribution_ratio" style="width: 320px;height: 256px; margin: auto" ></div>
        <@investTpl.tokenRatio/>
        <div class="see-details">
            <label for="rule" class="i18n" name="">查看token众筹细则</label>
            <input type="checkbox" class="" id="rule" style="display: none">
            <img src="/r/cms/resource/sharders/img/tab.png" >
            <@investTpl.investRules/>
        </div>
    </section>
    <section class="ss-main-participate">
        <div class="ss-participate-info" >
            <@investTpl.investFlow isMobile=true/>
        </div>
        <div class="ss-technological-process">
            <div class="technological-process-tab">
                <button class="official-website-direct-investment i18n" name="" v-on:click="tabBtn(1)">官网直投<div></div></button><button class="business-city i18n" name="" v-on:click="tabBtn(0)">商城众筹<div></div></button>
            </div>
                <ul class="ss-technological-step">
                    <li>
                        <span class="i18n" name="">步骤一</span>
                        <button>{{!crowdFunding ? "登录注册" : "进入商城"}}</button>
                        <span class="tesu i18n" name="">步骤四</span>
                        <button>{{!crowdFunding ? "转账参与" : "成功购买"}}</button>
                        <img src="/r/cms/resource/sharders/img/left.png" class="technological-img1">
                        <span class="tesu i18n" name="">步骤五</span>
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
                        <span class="tesu i18n" name="">步骤三</span>
                        <button>{{!crowdFunding ? "进入众筹" : "下单付款"}}</button>
                        <span class="tesu i18n" name="">步骤六</span>
                        <button>完成众筹</button>
                    </li>
                </ul>
            <p class="generalText i18n" name="sharder-flow-path-text6">注:本流程仅适用于早鸟轮阶段。个人众筹信息及兑换信息请登录进入个人中心查看详细说明。</p>
            <p class="generalText i18n" name="sharder-flow-path-text8">商城众筹所购买商将于众筹结束后7个工作日发货。</p>
        </div>
    </section>
    <section class="sharder-info" style="display: none">
        <div class="sharder-line">
            <h3 class="sharder-early-bird i18n" name="">早鸟轮(已结束)</h3>
            <p class="sharder-line-p"><span></span></p>
        </div>
    </section>
    <section class="ss-main-early-bird">
        <div class="sharder-line">
            <h3 class="sharder-early-bird i18n" name="">早鸟轮</h3>
            <p  class="sharder-early-bird-text i18n" name="">1月29日09:00-2月11日23:59</p>
            <p class="sharder-line-p"><span></span></p>
        </div>
        <ul class="ss-early-bird-text">
                <li class="generalTextColor">
                    <span class="crude i18n" name="sharder-start-time i18n" name="">1.开始时间:</span>
                    北京时间2018年2月22日23:59，如下列任一目标达成则将立即停止早鸟轮。<br/>
                    &nbsp;&nbsp;1) 7,500,0000个SS全部售出。<br/>
                    &nbsp;&nbsp;2) SS售出超1950个ETH并到达截止时间2018年2月11日。
                </li>
                <li class="generalTextColor">
                    <span class="crude i18n" name="sharder-subscription-ratio i18n" name="">2.兑换比例:</span><span class="i18n" name="sharder-invset-text4">
                        由于虚拟货币市场价格波动性，我们会在早鸟开始时间（北京时间2018年1月29日9:00）前一周确定锁定价格和兑换数量。<br/>
                        &nbsp;&nbsp;锁定价格：以交易所“币安”（官网www.binance.com）一周内收盘价均价确定锁定价格和兑换数量。</span>
                </li>
                <li class="generalTextColor">
                    <span class="crude i18n" name="sharder-take-part-quota i18n" name="">3.参投限额:</span>
                    <span class="i18n" name="sharder-take-part-quota-rule">≥1ETH/人，或等额BTC，LTC。</span>
                </li>
                <li class="generalTextColor">
                    <span class="crude i18n" name="sharder-hair-time">4.发币时间:</span>
                    <span class="i18n" name="sharder-invset-text5">众筹结束后一周以内。</span>
                </li>
                <li class="generalTextColor">
                    <span class="crude">5.</span>
                    <span class="i18n" name="sharder-invset-text6">早鸟轮结束以后进入审核阶段，于72小时内公布认购结果。</span>
                </li>
                <li class="generalTextColor">
                    <span class="crude">6.</span>
                    <span class="i18n" name="sharder-invset-text7">早鸟轮结束以后，将会通过官网直投、以太坊智能合约、交易所众筹进行公开众筹，以官网公告为准。</span>
                </li>
                <li class="generalTextColor">
                    <span class="crude i18n" name="sharder-subscribe">7.白名单:</span>
                    <span  class="i18n" name="sharder-invset-text8">早鸟轮结束以后，将会通过官网直投、以太坊智能合约、交易所众筹进行公开众筹，以官网公告为准。</span>
                </li>
        </ul>
        <button class="ss-btn i18n" name="sharder-immediate-participation" onclick="tabOpenUrl()">立即参与</button>
        <p class="ss-btn-text i18n" name="sharser-invset-text9">参与入口于早鸟(2018年1月29日)开始时开启</p>
    </section>
</div>
<script src="http://oss.sharder.org/sharder/js/echarts-all-3.js?v=${version!}" type="text/javascript"></script>
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
            },
        }
    });
    app.tabBtn(1);
    function tabOpenUrl() {
//        window.location.href="/invest/invest_item.ss";
    }
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
                    {value:15, name: '早鸟轮15%'},
                    {value:35, name: '众筹轮35%'},
                    {value:10, name: '社区基金10%'},
                    {value:10, name: '空投基金10%'},
                    {value:20, name: '系统奖励20%'},
                    {value:10, name: '团队基金10%'}
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