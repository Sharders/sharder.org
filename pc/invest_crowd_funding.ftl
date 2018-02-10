<@layout.htmlHead    pagename="crowd_funding">

</@layout.htmlHead>

<@layout.htmlBody>
<#include "/WEB-INF/ftl/sharders/hint/hint.ftl">
<div class="ss-container ss-theme-background-color" id="invest_item">
    <div class="invest ss-main ">
        <section>
            <h1 class="ss-main-title invest-main-h1"><span class="i18n" name="sharder-invest-crowd-funding">豆匣协议众售轮</span></h1>
        </section>
        <#include "invest_timeline.ftl" />
        <section class="invest-item crowd-funding">
            <h3 class="ss-sub-title i18n" name="sharder-crowd-funding">众售轮</h3>
            <p class="i18n" name="sharder-crowd-funding-time">2月23日9:00-3月23日23:59</p>
        <#--<div class="ss-row-timeline"></div>-->
            <div class="sharder-row-timeline">
                <span style="width: 10%"></span>
            </div>
            <div class="clause">
                <h4 class="invset-h4 i18n" name="sharder-rule">规则</h4>
                <ul>
                    <li class="generalTextColor">
                        <span class="i18n title" name="sharder-start-time">1.开始时间:</span>
                        <span class="i18n" name="sharder-crowd-funding-over-conditions">
                            北京时间2018年3月23日9:00，如下列任一目标达成则将立即停止早鸟轮。<br/>
                        &nbsp;&nbsp;&nbsp;&nbsp;A:7500000个SS全部售出。<br/>
                        &nbsp;&nbsp;&nbsp;&nbsp;B:SS售出超1950个ETH并到达截止时间2018年3月23日。</span>
                    </li>
                    <li class="generalTextColor">
                        <span class="i18n title" name="sharder-subscription-ratio">2.兑换比例:</span>
                        <span class="i18n" name="sharder-crowd-funding-t">北京时间2018年2月23日9:00起</span>
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
                        <span class="i18n title" name="sharder-investment-quota">3.参投限额:</span>
                        <span class="i18n" name="sharder-crowd-funding-more">≥1ETH/人，或等额BTC。</span>
                    </li>
                    <li class="generalTextColor">
                        <span class="i18n title" name="sharder-hair-tiem">4.发币时间:</span>
                        <span class="i18n" name="sharder-crowd-funding-token-sale">众售结束后一周以内。</span>
                    </li>
                    <li class="generalTextColor">
                        <span class="i18n title" name="sharder-examine-time">5.审核时间</span>
                        <span class="i18n" name="sharder-crowd-funding-audit">早鸟轮结束以后将进入审核阶段，并于72小时内公布认购结果。</span>
                    </li>
                    <li class="generalTextColor">
                        <span class="i18n title" name="sharder-raise-time">6.众售时间</span>
                        <span class="i18n" name="sharder-crowd-funding-after-presale">早鸟轮结束以后，众售将会在官网以及交易所进行公开IEO,具体信息以官方信息为准。</span>
                    </li>
                </ul>
            </div>

        </section>
        <#include "/WEB-INF/ftl/sharders/invest_submit.ftl">
    </div>
</div>

</@layout.htmlBody>