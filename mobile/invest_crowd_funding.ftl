<#import "/WEB-INF/ftl/sharders/pc/mobile/layout.ftl" as lay/>
<@lay.htmlHead    pagename="invest_crowd_funding">
<link rel="stylesheet" href="/r/cms/resource/sharders/css/mobile/invest_item.css">
<link rel="stylesheet" href="/r/cms/resource/sharders/css/mobile/invest_crowd_funding.css">
</@lay.htmlHead>
<@lay.htmlBody>
<div class="ss-mian" id="invest_item">
    <section class="ss-main-title">
        <h3 class="ss-head i18n" name="sharder-invest-crowd-funding">众售轮</h3>
        <#include "invest_timeline.ftl" />
    </section>
    <section class="ss-main-early-bird">
        <div class="sharder-line">
            <h3 class="sharder-early-bird i18n" name="sharder-crowd-funding">参与众售轮</h3>
            <p  class="sharder-early-bird-text i18n" name="sharder-crowd-funding-time">2月23日9:00-3月23日23:59</p>
            <p class="sharder-line-p"><span style="width: 30%"></span><i>30%</i></p>
        </div>
        <ul class="ss-early-bird-text">
            <li class="generalTextColor">
                <span class="crude i18n" name="sharder-start-time" >1.开始时间:</span>
                <span class="i18n" name="sharder-crowd-funding-over-conditions">
                    北京时间2018年3月23日23:59，如下列任一目标达成则将立即停止众售轮。<br/>
                &nbsp;&nbsp;A:7500000个SS全部售出。<br/>
                &nbsp;&nbsp;B:SS售出超1950个ETH并到达截止时间2018年3月23日。
                </span>
            </li>
            <li class="generalTextColor">
                <span class="crude i18n" name="sharder-subscription-ratio">2.兑换比例:</span>
                <span class="i18n" name="sharder-crowd-funding-t">北京时间2018年3月23日9:00起</span><br />
                ETH=
                <#if ETH_LOCK_PRICE ?? && ETH_LOCK_PRICE gt 0>
                    <span class="ETH_LOCK_PRICE">${ETH_LOCK_PRICE!}￥</span>
                <#else >
                    <span class="i18n" name="daiding">待定</span>
                </#if> ,
                BTC=
                <#if BTC_LOCK_PRICE ?? && BTC_LOCK_PRICE gt 0>
                    <span class="BTC_LOCK_PRICE">${BTC_LOCK_PRICE!}￥</span>
                <#else >
                    <span class="i18n" name="daiding">待定</span>
                </#if>
            </li>
            <li class="generalTextColor">
                <span class="crude i18n" name="sharder-investment-quota">3.参投限额:</span>
                <span class="i18n" name="sharder-crowd-funding-more">≥1ETH/人，或等额BTC。</span>
            </li>
            <li class="generalTextColor">
                <span class="crude i18n" name="sharder-hair-tiem">4.发币时间:</span>
                <span class="i18n" name="sharder-crowd-funding-token-sale">众售结束后一周以内。</span>
            </li>
            <li class="generalTextColor">
                <span class="crude i18n" name="sharder-examine-time">5.</span>
                <span class="i18n" name="sharder-crowd-funding-audit">早鸟轮结束以后将进入审核阶段，并于72小时内公布认购结果。</span>
            </li>
            <li class="generalTextColor">
                <span class="crude i18n" name="sharder-raise-time">6.</span>
                <span class="i18n" name="sharder-crowd-funding-after-presale">早鸟轮结束以后，众售将会在官网以及交易所进行公开IEO,具体信息以官方信息为准。</span>
            </li>
            <#--<li class="generalTextColor">-->
                <#--<span class="crude i18n" name="sharder-subscribe">7.白名单:</span>-->
                <#--<span  class="i18n" name="sharder-invset-text8">早鸟轮结束以后，众售将会在官网以及交易所进行公开IEO,具体信息以官方信息为准。</span>-->
            <#--</li>-->
        </ul>
    </section>

    <#if user.userExtSet[0].memo ??>
        <#if user.userExtSet[0].memo ?contains("approve")>
            <#include "/WEB-INF/ftl/sharders/invest_submit.ftl">
        <#else >
            <#include "/WEB-INF/t/cms/www/sharder.org/crowdsale_terms.ftl">
        </#if>
    </#if>
</div>
    <#include "/WEB-INF/ftl/sharders/hint/hint.ftl">
</@lay.htmlBody>