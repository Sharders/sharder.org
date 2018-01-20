<#import "/WEB-INF/ftl/sharders/pc/mobile/layout.ftl" as lay/>
<@lay.htmlHead    pagename="invest_crowd_funding">
<link rel="stylesheet" href="/r/cms/resource/sharders/css/mobile/invest_crowd_funding.css">
</@lay.htmlHead>
<@lay.htmlBody>
<div class="ss-mian">
    <section class="ss-main-title">
        <h3 class="ss-head i18n" name="">众筹轮</h3>
        <ul>
            <li><span class="ss-time i18n" name="">1月18日-1月28日</span><span class="ss-time i18n" name="">1月29日-2月11日</span><span class="ss-time i18n" name="">2月23日-3月23</span></li>
            <li>
                <img src="/r/cms/resource/sharders/img/yuan.png" class="ss-img">
                <img src="/r/cms/resource/sharders/img/yuan.png" class="ss-img sharder-img">
                <img src="/r/cms/resource/sharders/img/yuan.png" class="ss-img">
            </li>
            <li class="ss-line"></li>
            <li><span class="ss-text i18n" name="">白名单预约</span><span class="ss-text i18n" name="">早鸟轮</span><span class="ss-text i18n" name="">众筹轮</span></li>
        </ul>
        <div class="sharder-link">
            <button class="i18n" name="">已结束</button>
            <#--<a href="/user_center/index.ss"><button class="subscribe-btn i18n" name="">获得优惠</button></a>-->
            <#--<a href="/invest/invest_item.ss"><button class="angel-btn subscribe-btn">正在进行</button></a>-->
            <button class="i18n" name="">已结束</button>
            <#--<button class="angel-btn i18n" name="">参与早鸟</button>-->
            <a href="/invest/invest_crowd_funding.ss"><button class="crowd-funding-btn subscribe-btn">正在进行</button></a>
            <#--<button class="crowd-funding-btn">参与众筹</button>-->
        </div>
    </section>
    <section class="ss-main-early-bird">
        <div class="sharder-line">
            <h3 class="sharder-early-bird i18n" name="">参与众筹轮</h3>
            <p  class="sharder-early-bird-text i18n" name="">2月23日9:00-3月23日23:59</p>
            <p class="sharder-line-p"><span></span><i>30%</i></p>
        </div>
        <ul class="ss-early-bird-text">
            <li class="generalTextColor">
                <span class="crude i18n" name="sharder-start-time i18n" name="">1.开始时间:</span>
                北京时间2018年2月22日23:59，如下列任一目标达成则将立即停止早鸟轮。<br/>
                &nbsp;&nbsp;A:7500000个SS全部售出。<br/>
                &nbsp;&nbsp;B:SS售出超1950个ETH并到达截止时间2018年2月11日。
            </li>
            <li class="generalTextColor">
                <span class="crude i18n" name="sharder-subscription-ratio i18n" name="">2.兑换比例:</span><span class="i18n" name="sharder-invset-text4">
                        由于虚拟货币市场价格波动性，我们会在早鸟轮开始时间（北京时间2018年1月29日9:00）前一周确定锁定价格和兑换数量。<br/>
                        &nbsp;&nbsp;锁定价格：以交易所“币安”（官网www.binance.com）一周内的收盘价均价确定锁定价格和兑换数量。</span>
            </li>
            <li class="generalTextColor">
                <span class="crude i18n" name="sharder-take-part-quota i18n" name="">3.参投限额:</span>
                <span class="i18n" name="">≥1ETH/人，或等额BTC，LTC。</span>
            </li>
            <li class="generalTextColor">
                <span class="crude i18n" name="sharder-hair-time">4.发币时间:</span>
                <span class="i18n" name="sharder-invset-text5">众筹结束后一周以内。</span>
            </li>
            <li class="generalTextColor">
                <span class="crude">5.</span>
                <span class="i18n" name="sharder-invset-text6">早鸟轮结束以后将进入审核阶段，并于72小时内公布认购结果。</span>
            </li>
            <li class="generalTextColor">
                <span class="crude">6.</span>
                <span class="i18n" name="sharder-invset-text7">早鸟轮结束以后，众筹将会在官网以及交易所进行公开IEO,具体信息以官方信息为准。</span>
            </li>
            <li class="generalTextColor">
                <span class="crude i18n" name="sharder-subscribe">7.白名单:</span>
                <span  class="i18n" name="sharder-invset-text8">早鸟轮结束以后，众筹将会在官网以及交易所进行公开IEO,具体信息以官方信息为准。</span>
            </li>
        </ul>
        <div class="main-participate-in">
            <h2>参与</h2>
            <p class="par-text">感谢你参与豆匣协议众筹轮，本轮众筹我们将采用以太坊坊智能合约进行Token发放，转账时请注意参看清楚,你可以在个人中心参看众筹信息。</p>
            <div id="walletAddr_qr_code"></div>
            <p class="par-addr">转账地址：<span id="qr_code_text">U38YJA734HGFQJ723KDU89</span></p>
        </div>
    </section>
</div>
<script src="${resSys}/resource/sharders/js/jquery.qrcode-0.12.0.min.js" type="text/javascript"></script>
<script>
    function setQr(text) {
        $("#walletAddr_qr_code").empty();
        jQuery("#walletAddr_qr_code").qrcode({
            render: "canvas",
            text:text
        });
        var qr=$("#walletAddr_qr_code canvas");
        qr.css("width","156px");
        qr.css("height","156px");
    }
    setQr($("#qr_code_text").text());
</script>

</@lay.htmlBody>