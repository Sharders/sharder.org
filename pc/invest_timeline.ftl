<section>
    <ul class="ss-row-timeline invest-timeline">
        <li class="ss-row-timeline-item">
            <h4 class="ss-sub-title up-title i18n" name="sharder-time-start-end">1月18日-1月28日</h4>
            <p class="content i18n" name="sharder-subscribe-reserve">白名单</p>
            <#--<a href="/user_center/index.ss"><button class="content-over subscribe-over ss-hover-effect i18n" name="sharder-ended">参与白名单</button></a>-->
            <button class="content-over angel-over i18n" name="sharder-ended">已结束</button>
        </li>
        <li class="ss-row-timeline-item">
            <h4 class="ss-sub-title up-title i18n" name="sharder-angel-time-start-end">1月29日-2月11日</h4>
            <p class="content i18n" name="sharder-angel-wheels">早鸟轮</p>
            <#--<#if startNow?? && 'false'==startNow >-->
                <#--<a href="javascript:void(0);"><button class="content-over ss-hover-effect i18n" name="sharder-participate-early-bird">参与早鸟</button></a>-->
            <#--<#else>-->
                <#--<a href="/invest/invest_item.ss"><button class="content-over subscribe-over ss-hover-effect i18n" name="sharder-participate-early-bird">参与早鸟</button></a>-->
            <#--</#if>-->
            <a href="javascript:void(0);"><button class="content-over ss-hover-effect i18n" name="sharder-ended">已结束</button></a>
            <#--<a href="/invest/invest_item.ss"><button class="content-over angel-over " >参与早鸟轮</button></a>-->
        </li>
        <li class="ss-row-timeline-item">
            <h4 class="ss-sub-title up-title i18n" name="sharder-crowd-funding-time-start-end">2月23日-3月23</h4>
            <p class="content i18n" name="sharder-crowd-funding">众售</p>
            <#--<button class="content-over crowd-funding-over i18n" name="canyuzhongchoulun">参与众售</button>-->
            <#if exceptUser?? && exceptUser>
                <a href="/invest/invest_crowd_funding.ss"><button class="content-over subscribe-over ss-hover-effect i18n" name="sharder-immediate-participation">立即参与</button></a>
            <#else >
                <button class="content-over subscribe-over ss-hover-effect i18n" name="sharder-stay-tuned-for">敬请期待</button>
            </#if>
        </li>
    </ul>
</section>