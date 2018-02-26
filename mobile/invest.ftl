<#import "/WEB-INF/ftl/sharders/pc/mobile/layout.ftl" as lay/>
<#import "/WEB-INF/t/cms/www/sharder.org/ss_tpl_invest.ftl" as investTpl/>
<@lay.htmlHead>
<link rel="stylesheet" href="/r/cms/resource/sharders/css/mobile/invest.css">
<style>
    #distribution_ratio img{
        margin-top: 20px;
        margin-bottom: 20px;
    }

</style>
</@lay.htmlHead>
<@lay.htmlBody>
<div class="ss-mian">
    <section class="ss-main-title">
        <h3 class="ss-head i18n" name="sharder-s">豆匣众售</h3>
        <#include "invest_timeline.ftl" />

        <ul class="sharder-money">
            <#--<li>-->
                <#--<span class="i18n" name="crowd-step-earlybird">早鸟轮: 1ETH=</span>-->
                <#--<#if ETH_B_PRICE !="">-->
                    <#--${ETH_B_PRICE}SS-->
                <#--<#else >-->
                    <#--<span class="i18n" name="sharder-ended">已结束</span>-->
                <#--</#if>-->
            <#--</li>-->
            <li>
                <span class="i18n" name="crowd-step-crowd-1st">众售轮: 1ETH=</span>
                <#if ETH_D_PRICE !="">
                ${ETH_D_PRICE}SS
                <#else >
                    <span class="i18n" name="daiding">待定</span>
                </#if>
            </li>
        </ul>
        <p class="duihuan-jieshi">

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
    </section>
    <section class="ss-main-plan">
        <h3 class="ss-head i18n" name="sharder-distribution">豆匣SS分配</h3>
        <p class="ss-plan-text i18n" name="sharder-total-issuing">本次众售Token是(Sharder Storage 简称SS),SS是一种符合以太坊ERC20标准的Token。SS总共发行5亿,分配计划如下：</p>
        <div id="distribution_ratio">
            <img src="">
        </div>
        <@investTpl.tokenRatio/>
        <div class="see-details">
            <input type="checkbox" class="" id="rule" style="display: none">
            <label for="rule"><span class="i18n" name="sharder-rules-raise">众售细则</span><i class="fa fa-angle-down"></i></label>
            <@investTpl.investRules/>
        </div>
    </section>
    <#--<section class="ss-main-participate">-->
        <#--<div class="ss-participate-info" >-->
            <#--<@investTpl.investFlow isMobile=true/>-->
        <#--</div>-->
        <#--<div class="ss-technological-process">-->
            <#--<div class="technological-process-tab">-->
                <#--<button class="official-website-direct-investment i18n" name="sharder-public-network" v-on:click="tabBtn(1)">官网直投</button>-->
                <#--<button class="business-city i18n" name="sharder-business-city" v-on:click="tabBtn(0)">商城众售</button>-->
            <#--</div>-->
            <#--<div class="liucheng">-->
                <#--<ul class="ss-technological-step">-->
                    <#--<li>-->
                        <#--<span class="i18n" name="sharder-step-one">步骤一</span>-->
                        <#--<button>{{!crowdFunding ? listDAta.g : listDAta.a}}</button>-->
                        <#--<span class="tesu i18n" name="sharder-step-four">步骤四</span>-->
                        <#--<button>{{!crowdFunding ? listDAta.i : listDAta.d}}</button>-->
                    <#--&lt;#&ndash;<img src="/r/cms/resource/sharders/img/left.png" class="technological-img1">&ndash;&gt;-->
                        <#--<span class="tesu i18n" name="sharder-step-five">步骤五</span>-->
                        <#--<button>{{!crowdFunding ? listDAta.k : listDAta.e}}</button>-->
                    <#--</li>-->
                <#--&lt;#&ndash;<li>&ndash;&gt;-->
                <#--&lt;#&ndash;<img src="/r/cms/resource/sharders/img/left.png" class="technological-img2">&ndash;&gt;-->
                <#--&lt;#&ndash;<img src="/r/cms/resource/sharders/img/left.png" class="technological-img3">&ndash;&gt;-->
                <#--&lt;#&ndash;<img src="/r/cms/resource/sharders/img/left.png" class="technological-img4">&ndash;&gt;-->
                <#--&lt;#&ndash;</li>&ndash;&gt;-->
                    <#--<li>-->
                        <#--<span class="i18n" name="sharder-step-second">步骤二</span>-->
                        <#--<button>{{!crowdFunding ?  listDAta.h : listDAta.b}}</button>-->
                    <#--&lt;#&ndash;<img src="/r/cms/resource/sharders/img/left.png" class="technological-img5">&ndash;&gt;-->
                        <#--<span class="tesu i18n" name="sharder-step-three">步骤三</span>-->
                        <#--<button>{{!crowdFunding ? listDAta.i : listDAta.c}}</button>-->
                        <#--<span class="tesu i18n" name="sharder-step-six">步骤六</span>-->
                        <#--<button class="i18n" name="sharder-payment-process-six">完成众售</button>-->
                    <#--</li>-->
                <#--</ul>-->
                <#--<img src="/r/cms/resource/sharders/img/left.png" class="technological-img1">-->
                <#--<img src="/r/cms/resource/sharders/img/left.png" class="technological-img2">-->
                <#--<img src="/r/cms/resource/sharders/img/left.png" class="technological-img3">-->
                <#--<img src="/r/cms/resource/sharders/img/left.png" class="technological-img4">-->
                <#--<img src="/r/cms/resource/sharders/img/left.png" class="technological-img5">-->
            <#--</div>-->

            <#--<p class="generalText i18n" name="sharder-see-details">注:本流程仅适用于早鸟轮阶段。个人众售信息及兑换信息请登录进入个人中心查看详细说明。</p>-->
            <#--<p class="generalText i18n" name="sharder-mall-sell">商城众售所购买商将于众售结束后7个工作日发货。</p>-->
        <#--</div>-->
    <#--</section>-->
    <section class="sharder-info" style="display: none">
        <div class="sharder-line">
            <h3 class="sharder-early-bird i18n" name="">早鸟轮(已结束)</h3>
            <p class="sharder-line-p"><span></span></p>
        </div>
    </section>
    <section class="ss-main-early-bird" style="display: none">
        <div class="sharder-line">
            <h3 class="sharder-early-bird i18n" name="sharder-angel-wheels">早鸟轮</h3>
            <p  class="sharder-early-bird-text i18n" name="sharder-invest-time-start-end">1月29日09:00-2月11日23:59</p>
            <p class="sharder-line-p"><span></span></p>
        </div>
        <ul class="ss-early-bird-text">
                <li class="generalTextColor">
                    <span class="crude i18n" name="sharder-start-time">1.开始时间:</span>
                    <span class="i18n" name="sharder-invest-item-time">北京时间2018年1月29日09:00。<br/>
                </li>
                <li class="generalTextColor">
                    <span class="crude i18n" name="sharder-finish-condition">2.结束条件:</span><br/>
                    <span class="i18n" name="sharder-invset-finish-million">
                        1) 7,500,0000个SS全部售出。
                    </span>
                    <br/>
                    <span class="i18n" name="sharder-invset-finish-time">
                        2) 到达截止时间2018年2月11日23:59。
                    </span>
                </li>
                <li class="generalTextColor">
                    <span class="crude i18n" name="sharder-investment-quota">3.参投限额:</span>
                    <span class="i18n" name="sharder-take-part-quota-rule">≥1ETH/人或等额BTC。</span>
                </li>
                <li class="generalTextColor">
                    <span class="crude i18n" name="sharder-time-currency">4.兑换时间:</span>
                    <span class="i18n" name="sharder-invest-issue-token">早鸟轮结束以后进入审核阶段，于72小时内公布认购结果。公开众售结束后一周内完成Token兑换。</span>
                </li>
        </ul>
        <button class="ss-btn i18n" name="sharder-immediate-participation" onclick="tabOpenUrl()">立即参与</button>
        <p class="ss-btn-text i18n" name="sharder-presale-time-start">2018年1月29日正式开启</p>
    </section>
    <div class="text-text" style="display: none">
        <span class="i18n" name="sharder-payment-process-one">进入商城</span>
        <span class="i18n" name="sharder-payment-process-second">选择商品</span>
        <span class="i18n" name="sharder-payment-process-three">下单付款</span>
        <span class="i18n" name="sharder-payment-process-four">成功购买</span>
        <span class="i18n" name="sharder-payment-process-five">获得积分</span>
        <span class="i18n" name="sharder-log-in-register">登录注册</span>
        <span class="i18n" name="sharder-payment-process-eight">查看众售</span>
        <span class="i18n" name="sharder-payment-process-nine">进入众售</span>
        <span class="i18n" name="sharder-payment-process-ten">转账参与</span>
        <span class="i18n" name="sharder-payment-process-eleven">联系确认</span>
        <span class="i18n" name="sharder-distribution">早鸟轮</span>
        <span class="i18n" name="sharder-crowdsale">众售轮</span>
        <span class="i18n" name="sharder-community-reserve">社区基金</span>
        <span class="i18n" name="sharder-airdrop-reserve">空投基金</span>
        <span class="i18n" name="sharder-system-reward">系统奖励</span>
        <span class="i18n" name="sharder-team-reserve">团队基金</span>
    </div>
</div>
<script src="https://oss.sharder.org/sharder/js/echarts-all-3.js?v=${version!}" type="text/javascript"></script>
<script>
    var timeid;
    timeid = window.setInterval(function () {
        var PieChart = localStorage.getItem("end-of-translation");
        if (PieChart) {
//            var app = new Vue({
//                el: ".ss-main-participate",
//                data: {
//                    crowdFunding:true,
//                    bool:-1,
//                    listDAta:'',
//                },
//                methods: {
//                    tabBtn:function (num) {
//                        if(app.bool == num){
//                            return ;
//                        }else {
//                            app.bool = num;
//                        }
//                        $(".business-city").css("background-color","#000000");
//                        $(".official-website-direct-investment").css("background-color","#000000");
//
//                        $(".official-website-direct-investment div").css("display","none");
//                        $(".business-city div").css("display","none");
//                        if(app.crowdFunding){
//                            $(".official-website-direct-investment").css("background-color","#0ba0d1");
//                            $(".official-website-direct-investment div").css("display","block");
//                        }else{
//                            $(".business-city").css("background-color","#0ba0d1");
//                            $(".business-city div").css("display","block");
//                        }
//                        app.crowdFunding = !app.crowdFunding;
//                        app.listDAta ={a:$(".text-text span[name='sharder-payment-process-one']").text(),
//                            b:$(".text-text span[name='sharder-payment-process-second']").text(),
//                            c:$(".text-text span[name='sharder-payment-process-three']").text(),
//                            d:$(".text-text span[name='sharder-payment-process-four']").text(),
//                            e:$(".text-text span[name='sharder-payment-process-five']").text(),
//                            f:$(".text-text span[name='sharder-payment-process-six']").text(),
//                            g:$(".text-text span[name='sharder-log-in-register']").text(),
//                            h:$(".text-text span[name='sharder-payment-process-eight']").text(),
//                            i:$(".text-text span[name='sharder-payment-process-nine']").text(),
//                            j:$(".text-text span[name='sharder-payment-process-ten']").text(),
//                            k:$(".text-text span[name='sharder-payment-process-eleven']").text()}
//                    },
//                }
//            });
//            app.tabBtn(1);
            window.clearInterval(timeid);
            if(i18nLanguage == "zh-CN"){
                $("#distribution_ratio img").attr("src","/r/cms/resource/sharders/img/distributionratio.png");
            }else if(i18nLanguage == "en"){
                $("#distribution_ratio img").attr("src","/r/cms/resource/sharders/img/distributionratioen.png");
                $(".ETH_LOCK_PRICE").html(convertUs($(".ETH_LOCK_PRICE").html())+"$");
                $(".BTC_LOCK_PRICE").html(convertUs($(".BTC_LOCK_PRICE").html())+"$");
            }else if(i18nLanguage == "ko"){
                $("#distribution_ratio img").attr("src","/r/cms/resource/sharders/img/korean.png");
            }else if(i18nLanguage == "ja"){
                $("#distribution_ratio img").attr("src","/r/cms/resource/sharders/img/japanese.png");
            }
        }
    },100);
    function tabOpenUrl() {
//        window.location.href="/invest/invest_item.ss";
    }
</script>
</@lay.htmlBody>