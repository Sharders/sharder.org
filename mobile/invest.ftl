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
        <h3 class="ss-head i18n" name="sharder-s">豆匣众筹</h3>
        <ul>
            <li>
                <span class="ss-time i18n" name="sharder-time-start-end">1月18日-1月28日</span>
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
        <#--<a href="/user_center/index.ss"><button class="subscribe-btn i18n" name="canyubaimingdan">获得优惠</button></a>-->
            <#--<#if startNow?? && "false"==startNow >-->
                <#--<a href="javascript:void(0);"><button class="angel-btn i18n" name="canyutianshilun">参与早鸟</button></a>-->
            <#--<#else>-->
                <#--<a href="/invest/invest_item.ss"><button class="angel-btn subscribe-btn i18n" name="canyutianshilun">参与早鸟</button></a>-->
            <#--</#if>-->
            <button class="i18n" name="yijieshu">参与早鸟</button>
        <#--<button class="i18n" name="">已结束</button>-->
        <#--<button class="angel-btn i18n" name="canyutianshilun">参与早鸟</button>-->
        <#--<a href="/invest/invest_crowd_funding.ss"><button class="crowd-funding-btn subscribe-btn i18n" name="canyubaimingdan">正在进行</button></a>-->
            <button class="crowd-funding-btn i18n" name="canyuzhongchoulun">参与众筹</button>
        </div>

        <ul class="sharder-money">
            <li><span class="i18n" name="crowd-step-earlybird">早鸟轮: 1ETH=</span>${ETH_B_PRICE}SS</li>
            <li><span class="i18n" name="crowd-step-crowd-2nd">众筹轮: 1ETH=</span>${ETH_D_PRICE}SS</li>
        </ul>
        <p class="duihuan-jieshi">
            <span class="i18n" name="duihuan-jieshi">
                由于虚拟货币市场价格波动性，我们根据CoinMarketCap(https://coinmarketcap.com)1月22日到28日7天的市场收盘均价作为锁定价:
            </span>
            ETH=<span class="ETH_LOCK_PRICE">${ETH_LOCK_PRICE!}￥</span>, BTC=<span class="BTC_LOCK_PRICE">${BTC_LOCK_PRICE!}￥</span>
        </p>
    </section>
    <section class="ss-main-plan">
        <h3 class="ss-head i18n" name="sharder-distribution">豆匣SS分配</h3>
        <p class="ss-plan-text i18n" name="sharder-invest-text3">本次众筹Token是(Sharder Storage 简称SS),SS是一种符合以太坊ERC20标准的Token。SS总共发行5亿,分配计划如下：</p>
        <div id="distribution_ratio">
            <img src="">
        </div>
        <@investTpl.tokenRatio/>
        <div class="see-details">
            <input type="checkbox" class="" id="rule" style="display: none">
            <label for="rule"><span class="i18n" name="sharder-rules-raise">众筹细则</span><i class="fa fa-angle-down"></i></label>
            <@investTpl.investRules/>
        </div>
    </section>
    <section class="ss-main-participate">
        <div class="ss-participate-info" >
            <@investTpl.investFlow isMobile=true/>
        </div>
        <div class="ss-technological-process">
            <div class="technological-process-tab">
                <button class="official-website-direct-investment i18n" name="sharder-public-network" v-on:click="tabBtn(1)">官网直投<div></div></button>
                <button class="business-city i18n" name="sharder-business-city" v-on:click="tabBtn(0)">商城众筹<div></div></button>
            </div>
            <div class="liucheng">
                <ul class="ss-technological-step">
                    <li>
                        <span class="i18n" name="buzhou1">步骤一</span>
                        <button>{{!crowdFunding ? listDAta.g : listDAta.a}}</button>
                        <span class="tesu i18n" name="buzhou4">步骤四</span>
                        <button>{{!crowdFunding ? listDAta.i : listDAta.d}}</button>
                    <#--<img src="/r/cms/resource/sharders/img/left.png" class="technological-img1">-->
                        <span class="tesu i18n" name="buzhou5">步骤五</span>
                        <button>{{!crowdFunding ? listDAta.k : listDAta.e}}</button>
                    </li>
                <#--<li>-->
                <#--<img src="/r/cms/resource/sharders/img/left.png" class="technological-img2">-->
                <#--<img src="/r/cms/resource/sharders/img/left.png" class="technological-img3">-->
                <#--<img src="/r/cms/resource/sharders/img/left.png" class="technological-img4">-->
                <#--</li>-->
                    <li>
                        <span class="i18n" name="buzhou2">步骤二</span>
                        <button>{{!crowdFunding ?  listDAta.h : listDAta.b}}</button>
                    <#--<img src="/r/cms/resource/sharders/img/left.png" class="technological-img5">-->
                        <span class="tesu i18n" name="buzhou3">步骤三</span>
                        <button>{{!crowdFunding ? listDAta.i : listDAta.c}}</button>
                        <span class="tesu i18n" name="buzhou6">步骤六</span>
                        <button class="i18n" name="text-text6">完成众筹</button>
                    </li>
                </ul>
                <img src="/r/cms/resource/sharders/img/left.png" class="technological-img1">
                <img src="/r/cms/resource/sharders/img/left.png" class="technological-img2">
                <img src="/r/cms/resource/sharders/img/left.png" class="technological-img3">
                <img src="/r/cms/resource/sharders/img/left.png" class="technological-img4">
                <img src="/r/cms/resource/sharders/img/left.png" class="technological-img5">
            </div>

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
    <section class="ss-main-early-bird" style="display: none">
        <div class="sharder-line">
            <h3 class="sharder-early-bird i18n" name="sharder-angel-wheel">早鸟轮</h3>
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
                    <span class="i18n" name="sharder-invset-finish1">
                        1) 7,500,0000个SS全部售出。
                    </span>
                    <br/>
                    <span class="i18n" name="sharder-invset-finish2">
                        2) 到达截止时间2018年2月11日23:59。
                    </span>
                </li>
                <li class="generalTextColor">
                    <span class="crude i18n" name="sharder-investment-quota">3.参投限额:</span>
                    <span class="i18n" name="sharder-take-part-quota-rule">≥1ETH/人或等额BTC。</span>
                </li>
                <li class="generalTextColor">
                    <span class="crude i18n" name="sharder-time-currency">4.兑换时间:</span>
                    <span class="i18n" name="sharder-invest-issue-token">早鸟轮结束以后进入审核阶段，于72小时内公布认购结果。公开众筹结束后一周内完成Token兑换。</span>
                </li>
        </ul>
        <button class="ss-btn i18n" name="sharder-immediate-participation" onclick="tabOpenUrl()">立即参与</button>
        <p class="ss-btn-text i18n" name="sharser-invset-text9">2018年1月29日正式开启</p>
    </section>
    <div class="text-text" style="display: none">
        <span class="i18n" name="text-text1">进入商城</span>
        <span class="i18n" name="text-text2">选择商品</span>
        <span class="i18n" name="text-text3">下单付款</span>
        <span class="i18n" name="text-text4">成功购买</span>
        <span class="i18n" name="text-text5">获得积分</span>
        <span class="i18n" name="text-text7">登录注册</span>
        <span class="i18n" name="text-text8">查看众筹</span>
        <span class="i18n" name="text-text9">进入众筹</span>
        <span class="i18n" name="text-text10">转账参与</span>
        <span class="i18n" name="text-text11">联系确认</span>
        <span class="i18n" name="sharder-angel">早鸟轮</span>
        <span class="i18n" name="navbar.zhongchou">众筹轮</span>
        <span class="i18n" name="text-text23">社区基金</span>
        <span class="i18n" name="text-text24">空投基金</span>
        <span class="i18n" name="text-text25">系统奖励</span>
        <span class="i18n" name="text-text26">团队基金</span>
    </div>
</div>
<script src="https://oss.sharder.org/sharder/js/echarts-all-3.js?v=${version!}" type="text/javascript"></script>
<script>
    var timeid;
    timeid = window.setInterval(function () {
        var PieChart = localStorage.getItem("end-of-translation");
        if (PieChart) {
            var app = new Vue({
                el: ".ss-main-participate",
                data: {
                    crowdFunding:true,
                    bool:-1,
                    listDAta:'',
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
                        app.listDAta ={a:$(".text-text span[name='text-text1']").text(),
                            b:$(".text-text span[name='text-text2']").text(),
                            c:$(".text-text span[name='text-text3']").text(),
                            d:$(".text-text span[name='text-text4']").text(),
                            e:$(".text-text span[name='text-text5']").text(),
                            f:$(".text-text span[name='text-text6']").text(),
                            g:$(".text-text span[name='text-text7']").text(),
                            h:$(".text-text span[name='text-text8']").text(),
                            i:$(".text-text span[name='text-text9']").text(),
                            j:$(".text-text span[name='text-text10']").text(),
                            k:$(".text-text span[name='text-text11']").text()}
                    },
                }
            });
            app.tabBtn(1);
            window.clearInterval(timeid);
        }
    },100);
    function tabOpenUrl() {
//        window.location.href="/invest/invest_item.ss";
    }
    setTimeout(function () {

        if(i18nLanguage == "zh-CN"){
            $("#distribution_ratio img").attr("src","/r/cms/resource/sharders/img/distributionratio.png");
        }else if(i18nLanguage == "en"){
            $("#distribution_ratio img").attr("src","/r/cms/resource/sharders/img/distributionratioen.png");
            $(".ETH_LOCK_PRICE").html(convertUs($(".ETH_LOCK_PRICE").html())+"$");
            $(".BTC_LOCK_PRICE").html(convertUs($(".BTC_LOCK_PRICE").html())+"$");
        }
    },100);
</script>
</@lay.htmlBody>