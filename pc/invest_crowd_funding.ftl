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
            <p class="i18n" name="sharder-crowd-funding-time">2月23日8:00-3月23日23:59</p>
        <#--<div class="ss-row-timeline"></div>-->
            <#include "../zcjd.ftl" />
            <#include "/WEB-INF/ftl/sharders/zcsm.ftl" />


        </section>

        <#if sharderCfg('is_start_kyc') ?? && sharderCfg('is_start_kyc') == 'true'>
            <#if user.userExtSet[0].memo ?? && user.userExtSet[0].memo ?contains("through")>
                <#include "/WEB-INF/ftl/sharders/invest_submit.ftl">
            <#else >
                <#include "/WEB-INF/t/cms/www/sharder.org/crowdsale_kyc.ftl">
            </#if>
        <#else >
            <#include "/WEB-INF/ftl/sharders/invest_submit.ftl">
        </#if>

    </div>
</div>


</@layout.htmlBody>