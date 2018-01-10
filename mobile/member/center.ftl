<#import "/WEB-INF/ftl/sharders/pc/mobile/layout.ftl" as lay/>
<@lay.htmlHead title="我就是标题" keywords="我就是标题" description="我就是标题" pagename="invest">
<link rel="stylesheet" href="/r/cms/resource/sharders/css/mobile/center.css">
</@lay.htmlHead>

<@lay.htmlBody>
<div class="phone-center-main">
    <div class="user-information" >
        <h1 class="phone-center-information-title">账户信息</h1>
        <ul class="user-information-text">
            <li><labal class="user-title">账号:</labal><span class="user-text">187******4399</span></li>
            <li><labal class="user-title">用户名:</labal><span class="user-text">面条</span></li>
            <li><labal class="user-title">推广码:</labal><span class="user-text">SS00001</span></li>
            <li><labal class="user-title">推广链接:</labal><span class="user-text">www.sharder.org/ss00001</span></li>
        </ul>
        <button class="copy-link">复制推广链接</button>
        <p class="text-color">通你的专属链接/邀请码注册并成功参与众筹。</p>
        <p class="text-color">你可以获得其众筹获得豆匣币(SS)总额度的5%作为返点奖励。</p>
    </div>
    <div class="asset-information">
        <h1 class="phone-center-information-title">资产信息</h1>
        <div class="sharders-total-assets">
            <p class="sharder-total-assets">总资产</p>
            <p class="sharder-sharder">豆匣币(SS)</p>
            <p class="sharder-quota">50000</p>
        </div>
        <div class="crowd-funding-rebate">
                <div class="crowd-funding details">
                    <p class="crowd-funding-title">
                        <img src="/r/cms/resource/sharders/img/gantanhao.png" class="crowd-funding-img">
                        <span class="details-title">众筹所得</span>
                    </p>
                    <p class="crowd-funding quota ">500000ss</p>
                    <p class="details-colse">关闭详情</p>
                </div>
                <div class="rebate details">
                    <p class="crowd-funding-title">
                        <img src="/r/cms/resource/sharders/img/gantanhao.png" class="crowd-funding-img img">
                        <span class="details-title">返点奖励</span>
                    </p>
                    <p class="rebate-quota quota">500000ss</p>
                    <p class="details-colse">查看详情</p>
                </div>
        </div>
        <div class="paging-query">
                <ul class="paging-query-title">
                    <li>众筹时间</li>
                    <li>来源</li>
                    <li>获得豆匣币</li>
                    <li>白名单奖励</li>
                </ul>
                <ul class="paging-query-body">
                    <li><span>2018-12-12</span><span>官网众筹</span><span>500.00</span><span>10000</span></li>
                    <li><span>2018-12-12</span><span>官网众筹</span><span>500.00</span><span>10000</span></li>
                    <li><span>2018-12-12</span><span>官网众筹</span><span>500.00</span><span>10000</span></li>
                    <li><span>2018-12-12</span><span>官网众筹</span><span>500.00</span><span>10000</span></li>
                    <li><span>2018-12-12</span><span>官网众筹</span><span>500.00</span><span>10000</span></li>
                </ul>
                <ul class="paging-query-btn">
                    <li>上一页</li>
                    <li class="query-btn">1</li>
                    <li class="query-btn">2</li>
                    <li class="query-btn">3</li>
                    <li class="query-btn">...</li>
                    <li class="query-btn">5</li>
                    <li>下一页</li>
                </ul>
        </div>
    </div>
    <div class="subscribe-information">
        <h1 class="phone-center-information-title">白名单额度预约</h1>
        <p class="subscribe-start-end-time">时间1月8日9:00-1月21日23.59</p>
        <p class="subscribe-line"></p>
        <p class="subscribe-line-text"><span>总份额: <span>1000</span></span><span>ETH(或等价的BTC,LTC)</span><span class="line-number">40%</span></p>
        <ul class="subscribe-user-list">
            <li><span class="username-list">账户:187*****4399</span><span>获得额度:</span><span>1000</span><span>ETH</span></li>
            <li><span class="username-list">账户:187*****4399</span><span>获得额度:</span><span>1000</span><span>ETH</span></li>
            <li><span class="username-list">账户:187*****4399</span><span>获得额度:</span><span>1000</span><span>ETH</span></li>
        </ul>
        <p class="subscribe-quota">
            <span>你当前的白名单额度为:</span><span>1</span><span>ETH</span> <span class="subscribe-quota-info">查看详情</span>
        </p>
        <div class="subscribe-info-text">
            <p  class="subscribe-info-title">白名单预约细则</p>
            <p class="subscribe-information-title">白名单:</p>
            <p class="subscribe-information-text">为了确保豆匣的贡献和支持者都有公平的参与机会，加大宣传力度。豆匣基金推出了白名单计划。本次白名单预约发行总额度为1000ETH或等价的BTC,LTC。</p>
            <p class="subscribe-information-title">获得:</p>
            <p class="subscribe-information-text">每个人起始额度为1ETH。通过你的邀请链接成功一人在官网注册成功。可获得1ETH的额度。白名单预约期间为1月XX日——1月XX日。每个账号总上限为100ETH或等价的LTC,BTC。</p>
            <p class="subscribe-information-title">使用:</p>
            <p class="subscribe-information-text">
                白名单额度在参与早鸟轮众筹时，可额外获得20%的豆匣币(SS)奖励。<br />
                参与早鸟论众筹后即可消耗本账户的额度，并用完的额度将在早鸟轮众筹结束后清零。<br>
                投资机构及大额投资请联系官方客服人员获得优惠额度。<br>
            </p>
        </div>
    </div>
</div>
</@lay.htmlBody>