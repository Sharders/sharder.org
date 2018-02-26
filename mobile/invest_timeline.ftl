<style>
    .invest-timeline .time-node{
        display: flex;
        justify-content: space-around;
    }
    .invest-timeline .time-node-icon{
        display: flex;
        justify-content: space-around;
        z-index: 9;
        position: relative;
        top: 10px;
    }
    .invest-timeline .ss-stage{
        display: flex;
        justify-content: space-around;
    }
    .ss-main-title .ss-line{
        position: relative;
        display: inline-block;
        border-radius: 20px;
        width: 90%;
        height: 4px;
        border: 1px solid #0ba0d1;
        bottom: 26px;
    }
    .ss-main-title .ss-line:after{
        content: " ";
        height: 100%;
        width: 100%;
        background-color: #0ba0d1;
        border-radius: 20px;
        float: left;
    }
</style>

<ul class="invest-timeline">
    <li class="time-node">
        <span class="ss-time i18n" name="sharder-time-start-end">1月18日-1月28日</span>
        <span class="ss-time i18n" name="sharder-angel-time-start-end">1月29日-2月11日</span>
        <span class="ss-time i18n" name="sharder-crowd-funding-time-start-end">2月23日-3月23</span></li>
    <li class="time-node-icon">
        <img src="/r/cms/resource/sharders/img/yuan.png" class="ss-img">
        <img src="/r/cms/resource/sharders/img/yuan.png" class="ss-img sharder-img">
        <img src="/r/cms/resource/sharders/img/yuan.png" class="ss-img">
    </li>
    <li class="ss-line"></li>
    <li class="ss-stage">
        <span class="ss-text i18n" name="sharder-subscribe-reserve" style="color: #999;">白名单预约</span>
        <span class="ss-text i18n" name="sharder-angel-wheels" style="color: #999;">早鸟轮</span>
        <span class="ss-text i18n" name="sharder-crowd-funding">众售轮</span>
    </li>
</ul>
<div class="sharder-link">

    <button class="i18n" name="sharder-ended">已结束</button>
<#--<a href="/user_center/index.ss"><button class="subscribe-btn i18n" name="sharder-ended">获得优惠</button></a>-->
<#--<#if startNow?? && "false"==startNow >-->
<#--<a href="javascript:void(0);"><button class="angel-btn i18n" name="sharder-participate-early-bird">参与早鸟</button></a>-->
<#--<#else>-->
<#--<a href="/invest/invest_item.ss"><button class="angel-btn subscribe-btn i18n" name="sharder-participate-early-bird">参与早鸟</button></a>-->
<#--</#if>-->

    <button class="i18n" name="sharder-ended">参与早鸟</button>
<#--<button class="i18n" name="">已结束</button>-->
<#--<button class="angel-btn i18n" name="sharder-participate-early-bird">参与早鸟</button>-->
<#--<a href="/invest/invest_crowd_funding.ss"><button class="crowd-funding-btn subscribe-btn i18n" name="sharder-ended">正在进行</button></a>-->

    <button class="i18n" name="sharder-ended">已结束</button>

</div>