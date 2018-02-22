<#import "/WEB-INF/t/cms/www/sharder.org/ss_tpl_invest.ftl" as investTpl/>

<@layout.htmlHead pagename="invest" />

<@layout.htmlBody>
<div class="ss-container ss-theme-background-color">
    <div class="invest ss-main " id="btn">
        <section>
            <h1 class="ss-main-title invest-main-h1"><span class="i18n" name="sharder-s">豆匣众售</span></h1>
        </section>
        <#include "invest_timeline.ftl" />
        <section class="distribution-program">
            <div class="price-conversion">
                <#--<span >-->
                    <#--<span class="i18n" name="crowd-step-earlybird">早鸟轮: 1ETH=</span>-->
                <#--<#if ETH_B_PRICE ?? && ETH_B_PRICE !="">-->
                    <#--${ETH_B_PRICE!}SS-->
                <#--<#else >-->
                    <#--<span class="i18n"  name="sharder-ended">已结束</span>-->
                <#--</#if>-->
                <#--</span>-->
                <span>
                    <span class="i18n" name="crowd-step-crowd-1st">众售轮: 1ETH=</span>
                    <#if ETH_D_PRICE ?? && ETH_D_PRICE !="">
                    ${ETH_D_PRICE!}SS
                    <#else >
                        <span class="i18n" name="daiding">待定</span>
                    </#if>
                </span>
                <div class="duihuan-jieshi-div">
                    <p class="duihuan-jieshi i18n">
                        <span class="i18n" name="sharder-according-coinmarketcap">由于虚拟货币市场价格波动性，我们将根据CoinMarketCap(https://coinmarketcap.com)2月15日到21日7天的市场收盘均价作为众售轮锁定价:</span>
                        ETH=
                        <#if ETH_LOCK_PRICE ?? && ETH_LOCK_PRICE gt 0>
                            <span class="ETH_LOCK_PRICE">${ETH_LOCK_PRICE!}￥</span>
                        <#else >
                            <span class="i18n" name="daiding">待定</span>
                        </#if>
                        <#--,-->
                        <#--BTC=-->
                        <#--<#if BTC_LOCK_PRICE ?? && BTC_LOCK_PRICE gt 0>-->
                            <#--<span class="BTC_LOCK_PRICE">${BTC_LOCK_PRICE!}￥</span>-->
                        <#--<#else >-->
                            <#--<span class="i18n" name="daiding">待定</span>-->
                        <#--</#if>-->
                    </p>
                </div>
            </div>
            <h3 class="ss-sub-title i18n" name="sharder-distribution">豆匣分配计划</h3>
            <p class="generalTextColor i18n" name="sharder-total-issuing">本次众售Token是(Sharder Storage 简称SS),SS是一种符合以太坊ERC20标准的Token。SS总共发行5亿,分配计划如下：</p>
            <div class="distribution-ratio">
                <div id="distribution_ratio" style="width: 480px;height: 280px;" class="distribution-ratio-img"></div>
                <@investTpl.tokenRatio/>
            </div>
        </section>
        <div class="see-details">
                <div class="dianji" v-on:click="tabOpenText()">
                    <span class="i18n" name="sharder-rules-raise">查看众售细则</span>
                    <i class="fa fa-angle-down"></i>
                </div>
            <@investTpl.investRules/>
        </div>
        <section class="flow-path">
            <@investTpl.investFlow />
            <div  class="liucheng">
                <button class="flow-button official-button" v-on:click="tabCrowdFunding(true)"><div v-if="!isOfficial"></div><span class="i18n" name="sharder-public-network">官方众售流程</span></button>
                <button class="flow-button shopping-button" v-on:click="tabCrowdFunding(false)"><div v-if="isOfficial"></div><span class="i18n" name="sharder-business-city">商城众售流程</span></button>
                <ul class="flow-path-ul flow-path-ul1">
                    <li>
                        <span class="step i18n" name="sharder-step-one">步骤一</span>
                        <button class="item i18n" name="sharder-log-in-register"><span>登录注册</span></button>
                    </li>
                    <li>
                        <span class="step i18n" name="sharder-step-second">步骤二</span>
                        <button class="item">{{crowdFunding.a}}</button>
                    </li>
                    <li>
                        <span class="step i18n" name="sharder-step-three">步骤三</span>
                        <button class="item">{{crowdFunding.b}}</button>
                    </li>
                <#--<i class="fa fa-angle-double-left" aria-hidden="true"></i>-->
                    <li>
                        <span class="step i18n" name="sharder-step-four">步骤四</span>
                        <button class="item">{{crowdFunding.c}}</button>
                    </li>
                </ul>
                <div class="switch-div">
                    <span class="step five i18n" name="sharder-step-seven">步骤七</span>
                    <span class="step five i18n" name="sharder-step-six">步骤六</span>
                    <span class="step five i18n" name="sharder-step-five">步骤五</span>
                    <img src="/r/cms/resource/sharders/img/xian2.png" class="flow-img">
                </div>
                <ul class="flow-path-ul flow-path-ul2">
                    <li>
                        <button class="item">{{crowdFunding.a}}</button>
                    </li>
                    <li>
                        <button class="item">{{crowdFunding.d}}</button>
                    </li>
                    <li>
                        <button class="item">{{crowdFunding.e}}</button>
                    </li>
                    <li>
                        <button class="item">{{crowdFunding.f}}</button>
                    </li>
                </ul>
                <ul class="liuchengtu">
                    <li>
                        <img src="/r/cms/resource/sharders/img/xian2.png" class="lujingtu-img1">
                        <img src="/r/cms/resource/sharders/img/xian2.png" class="lujingtu-img2">
                        <img src="/r/cms/resource/sharders/img/xian2.png" class="lujingtu-img3">
                    </li>
                    <li>
                        <img src="/r/cms/resource/sharders/img/xian2.png" class="lujingtu-img4">
                        <img src="/r/cms/resource/sharders/img/xian2.png" class="lujingtu-img5">
                        <img src="/r/cms/resource/sharders/img/xian2.png" class="lujingtu-img6">
                    </li>
                </ul>
            </div>
                <p class="generalText i18n" name="sharder-see-details">本流程仅适用于早鸟轮阶段。个人众售信息及兑换信息请登录进入个人中心查看详细说明。</p>
                <p class="generalText i18n" name="sharder-mall-delivery">商城众售所购买商将于众售结束后7个工作日发货。</p>
        </section>
        <div id="test-text" style="display: none;">
            <span class="i18n" name="sharder-sale-information">进入官网页面查看众售信息</span>
            <span class="i18n" name="sharder-phase-sale">选择对应阶段开始众售</span>
            <span class="i18n" name="sharder-sale-transfer">向众售地址转账</span>
            <span class="i18n" name="sharder-sale-complete">众售完成</span>invite
            <span class="i18n" name="sharder-customer-service-confirm">联系客服确认信息</span>
            <span class="i18n" name="sharder-complete-transfer">完成转账</span>
            <span class="i18n" name="sharder-account">个人中心</span>
            <span class="i18n" name="sharder-crowdsale-instructions">进入商城页面查看众售信息</span>
            <span class="i18n" name="sharder-purchase-item">提交订单购买所选商品</span>
            <span class="i18n" name="sharder-pay-cny">付款</span>
            <span class="i18n" name="sharder-check-pionts">商城积分自动兑换可在豆匣个人中心查看</span>
            <span class="i18n" name="sharder-successful-purchase">成功购买商品</span>
            <span class="i18n" name="sharder-complete-transaction">付款成功</span>
            <span class="i18n" name="sharder-sharder-mall">豆匣商城</span>
            <span class="i18n" name="sharder-angel-wheels">早鸟轮</span>
            <span class="i18n" name="sharder-crowdsale">众售轮</span>
            <span class="i18n" name="sharder-community-reserve">社区基金</span>
            <span class="i18n" name="sharder-airdrop-reserve">空投基金</span>
            <span class="i18n" name="sharder-system-reward">系统奖励</span>
            <span class="i18n" name="sharder-team-reserve">团队基金</span>
        </div>
    </div>
</div>
<script src="https://oss.sharder.org/sharder/js/echarts-all-3.js?v=${version!}" type="text/javascript"></script>
<script>
    var pc = new Vue({
        el: "#btn",
        data: {
            crowdFunding:"",
            isOfficial:false,
            isCrowdFunding:true,
            angelOrCrowdFunding:"早鸟轮",
            angelOrCrowdText:"",
            isdiv:true,
        },
        methods: {
            tabCrowdFunding:function (bool) {
                $(".flow-path .flow-button").css("background-color","#000000");
                if(bool){
                    pc.crowdFunding = {
                        a:$("#test-text span[name='sharder-sale-information']").text(),
                        b:$("#test-text span[name='sharder-phase-sale']").text(),
                        c:$("#test-text span[name='sharder-sale-transfer']").text(),
                        d:$("#test-text span[name='sharder-sale-complete']").text(),
                        e:$("#test-text span[name='sharder-customer-service-confirm']").text(),
                        f:$("#test-text span[name='sharder-complete-transfer']").text(),
                        g:$("#test-text span[name='sharder-account']").text()};
                    $(".flow-button.official-button").css("background-color","#0ba0d1");
                }else {
                    pc.crowdFunding = {
                        a:$("#test-text span[name='sharder-crowdsale-instructions']").text(),
                        b:$("#test-text span[name='sharder-purchase-item']").text(),
                        c:$("#test-text span[name='sharder-pay-cny']").text(),
                        d:$("#test-text span[name='sharder-check-pionts']").text(),
                        e:$("#test-text span[name='sharder-successful-purchase']").text(),
                        f:$("#test-text span[name='sharder-complete-transaction']").text(),
                        g:$("#test-text span[name='sharder-sharder-mall']").text()};
                    $(".flow-button.shopping-button").css("background-color","#0ba0d1");
                }
                pc.isOfficial = !bool;
            },

            tabOpenText:function () {
                if(pc.isdiv){
                    $(".see-details i").css("transform","rotate(180deg)");
                    $(".see-details .rule-details").css("display","block");
                }else{
                    $(".see-details i").css("transform","rotate(0deg)");
                    $(".see-details .rule-details").css("display","none");
                }
                pc.isdiv =! pc.isdiv;
            },
        },
    });
//    window.onload = function(){pc.tabCrowdFunding(true)}
</script>
<script>
    var timeid;
    timeid= window.setInterval(function () {
        var PieChart = localStorage.getItem("end-of-translation");
        if(PieChart){
            window.clearInterval(timeid);
        }
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
                    radius : '60%',
                    center: ['54%', '50%'],
                    selectedMode: 'single',
                    data:[
                        {value:15, name: $("#test-text span[name='sharder-angel-wheels']").text()+'15%'},
                        {value:35, name: $("#test-text span[name='sharder-crowdsale']").text()+'35%'},
                        {value:10, name: $("#test-text span[name='sharder-community-reserve']").text()+'10%'},
                        {value:10, name: $("#test-text span[name='sharder-airdrop-reserve']").text()+'10%'},
                        {value:20, name: $("#test-text span[name='sharder-system-reward']").text()+'20%'},
                        {value:10, name: $("#test-text span[name='sharder-team-reserve']").text()+'10%'}
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
        pc.tabCrowdFunding(true);
    },100);

    setTimeout(function () {
        if(i18nLanguage == "en"){
            $(".ETH_LOCK_PRICE").html(convertUs($(".ETH_LOCK_PRICE").html())+"$");
            $(".BTC_LOCK_PRICE").html(convertUs($(".BTC_LOCK_PRICE").html())+"$");
        }
    },100)

</script>
</@layout.htmlBody>