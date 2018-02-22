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
            <p  class="sharder-early-bird-text i18n" name="sharder-crowd-funding-time">2月23日8:00-3月23日23:59</p>
            <#include "../zcjd.ftl" />
        </div>
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
    <#include "/WEB-INF/ftl/sharders/hint/hint.ftl">
</@lay.htmlBody>