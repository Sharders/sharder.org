<#import "/WEB-INF/t/cms/www/sharder.org/ss_tpl_invest.ftl" as investTpl/>

<@layout.htmlHead pagename="invest" />

<@layout.htmlBody>
<div class="ss-container ss-theme-background-color">
    <div class="invest ss-main ">
        <section>
            <h1 class="ss-main-title invest-main-h1"><span class="i18n" name="sharder-s">豆匣token众筹</span></h1>
        </section>
        <#include "invest_timeline.ftl" />
        <section class="distribution-program">
            <div class="price-conversion">
                <span class="i18n" name="">白名单阶段:1ETH=待定</span>
                <span class="i18n" name="">早鸟轮阶段:1ETH=待定</span>
                <span class="i18n" name="">众筹轮(前三天):1ETH=待定</span>
                <span class="i18n" name="">众筹轮阶段:1ETH=待定</span>
            </div>
            <h3 class="ss-sub-title i18n" name="sharder-distribution">Token分配</h3>
            <p class="generalTextColor i18n" name="sharder-invest-text3">本次众筹Token是(Sharder Storage 简称SS),SS是一种符合以太坊ERC20标准的Token。SS总共发行5亿,分配计划如下：</p>
            <div class="distribution-ratio">
                <div id="distribution_ratio" style="width: 450px;height: 280px;" class="distribution-ratio-img"></div>
                <@investTpl.tokenRatio/>
            </div>
        </section>
        <div class="see-details">
            <label for="rule"  class="i18n" name="">查看代币众筹细则</label>
            <input type="checkbox"   id="rule" style="display: none">
            <img src="/r/cms/resource/sharders/img/index/towards-left.png" >
            <@investTpl.investRules/>
        </div>
        <section class="flow-path">
            <@investTpl.investFlow />
            <div id="btn">
                <button class="flow-button official-button" v-on:click="tabCrowdFunding(true)"><div v-if="!isOfficial"></div><span class="i18n" name="sharder-public-network">官方众筹流程</span></button>
                <button class="flow-button shopping-button" v-on:click="tabCrowdFunding(false)"><div v-if="isOfficial"></div><span class="i18n" name="sharder-business-city">商城众筹流程</span></button>
                <ul class="flow-path-ul flow-path-ul1">
                    <li>
                        <span class="step i18n" name="buzhou1">步骤一</span>
                        <button class="item i18n" name="flow-path-ul.item1">登录注册</button>
                        <img src="/r/cms/resource/sharders/img/xian.png">
                    </li>
                    <li>
                        <span class="step i18n" name="buzhou2">步骤二</span>
                        <button class="item i18n" name="">进入{{crowdFunding.a}}信息</button>
                        <img src="/r/cms/resource/sharders/img/xian.png">
                    </li>
                    <li>
                        <span class="step i18n" name="buzhou3">步骤三</span>
                        <button class="item">{{crowdFunding.b}}</button>
                        <img src="/r/cms/resource/sharders/img/xian.png">
                    </li>
                <#--<i class="fa fa-angle-double-left" aria-hidden="true"></i>-->
                    <li>
                        <span class="step i18n" name="buzhou4">步骤四</span>
                        <button class="item">{{crowdFunding.c}}</button>
                    </li>
                </ul>
                <div class="switch-div">
                    <span class="step five i18n" v-if="!isOfficial" name="buzhou5">步骤五</span>
                    <img src="/r/cms/resource/sharders/img/xian2.png" class="flow-img">
                </div>
                <ul class="flow-path-ul flow-path-ul2">
                    <li>
                        <button class="item i18n" name="">进入众筹中心查看众筹信息</button>
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
                <p class="generalText i18n" name="sharder-flow-path-text6">本流程仅适用于早鸟轮阶段。个人众筹信息及兑换信息请登录进入个人中心查看详细说明。</p>
                <#--<p class="generalText i18n" name="sharder-flow-path-text7">个人众筹信息及兑换信息请登录进入个人中心查看详细说明。</p>-->
                <p class="generalText i18n" name="sharder-flow-path-text8" v-if="isOfficial">商城众筹所购买商将于众筹结束后7个工作日发货。</p>
        </section>

    </div>
</div>
<script src="http://oss.sharder.org/sharder/js/echarts-all-3.js?v=${version!}" type="text/javascript"></script>
<script>
    var pc = new Vue({
        el: "#btn",
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
                    pc.crowdFunding = {a:"官网页面查看众筹",b:"选择对应阶段开始众筹",c:"向众筹地址转账",d:"众筹完成",e:"联系客服确认信息",f:"完成转账",g:"个人中心"};
                    $(".flow-button.official-button").css("background-color","#0ba0d1");
                }else {
                    pc.crowdFunding = {a:"商城页面查看众筹",b:"提交订单购买所选商品",c:"付款",d:"商城积分自动兑换可在豆匣个人中心查看",e:"成功购买商品",f:"付款成功",g:"豆匣商城"};
                    $(".flow-button.shopping-button").css("background-color","#0ba0d1");
                }
                pc.isOfficial = !bool;
            },
            tabAngelOrCrowdFunding:function () {
                pc.isCrowdFunding = !pc.isCrowdFunding;
                $(".invest-item").css("padding","40px 30px");
                if(pc.isCrowdFunding){
                    pc.angelOrCrowdFunding = "众筹轮";
                    $(".invest-item-tab").css("left","");
                    for(var i=10;i<=1200-80 ;i++){
                        setTimeout('$(".invest-item-tab").css("right","'+i+'px")',100);
                    }
                    $(".invest-item-tab img").css("transform","rotateY(0deg)");
                    $(".invest-item").css("padding-left","110px");
                    pc.angelOrCrowdText={time1:"2月23日9:00",time2:"3月23日23:59"};
                }else {
                    pc.angelOrCrowdFunding = "早鸟轮";
                    $(".invest-item-tab").css("right","");
                    for(var i=10;i<=1200-80 ;i++){
                        setTimeout('$(".invest-item-tab").css("left","'+i+'px")',100);
                    }
                    $(".invest-item-tab img").css("transform","rotateY(180deg)");
                    $(".invest-item").css("padding-right","110px");
                    pc.angelOrCrowdText={time1:"1月29日9:30",time2:"2月11日23:59"};
                }

            },
            tabOpenUrl:function () {
                var url = "/invest/";
                if(pc.isCrowdFunding){
                    url+="invest_crowd_funding.ss";
                }else {
                    url+="invest_item.ss";
                }
//                window.console.info("888888");
                location.href=url;
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
        legend: {
            orient: 'vertical',
            bottom:'bottom',
            data: ['早鸟轮','众筹轮','社区基金','系统奖励','团队基金']
        },
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
</@layout.htmlBody>