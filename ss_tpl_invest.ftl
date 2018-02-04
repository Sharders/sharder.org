<#--本模板是豆匣投资的抽象模板:众售规则-->



<#-- Token分配 -->
<#macro tokenRatio >
<ul class="distribution-ratio-text">
    <li class="generalTextColor"><i class="yuan1"></i><span class="i18n" name="sharder-distribution-presale">早鸟轮：早期天使投资人和机构认购。</span></li>
    <li class="generalTextColor"><i class="yuan2"></i><span class="i18n" name="sharder-distribution-crowdsale">众售轮：官网直投、以太坊智能合约、交易所众售售卖。</span></li>
    <li class="generalTextColor"><i class="yuan3"></i><span class="i18n" name="sharder-distribution-community">社区基金：用于维护社区，建设活跃开放的豆匣生态。</span></li>
    <li class="generalTextColor"><i class="yuan4"></i><span class="i18n" name="sharder-distribution-airdrop">空投基金：社区空投、交易所空投、海螺测试网络TCC兑换。</span></li>
    <li class="generalTextColor"><i class="yuan5"></i><span class="i18n" name="sharder-distribution-network-reward">系统奖励：挖矿奖励、观察者奖励、证明人奖励、存储奖励。</span></li>
    <li class="generalTextColor"><i class="yuan6"></i><span class="i18n" name="sharder-distribution-team">团队基金：豆匣团队持有，流通锁定期为三年，每年解锁约 3.3%。</span></li>
</ul>
</#macro>


<#macro investRules isMobile=false>
<ul class="rule-details">
    <li class="rule-text"><span class="rule-text-bold i18n" name="sharder-subscribe-share">白名单</span><span class="i18n" name="sharder-details-one">在早鸟轮正式开始前注册账号即拥有1个ETH的白名单额度，使用白名单额度购买SS可获得额外20%SS赠送。</span></li>
    <li class="rule-text"><span class="rule-text-bold i18n" name="sharder-referral-bonus">推广奖励</span><span class="i18n" name="sharder-details-second">分享个人链接或邀请码邀请好友注册豆匣，每成功注册1人可获得1个ETH白名单额度。单个账号白名单额度上限为100ETH。</li>
    <li class="rule-text"><span class="rule-text-bold i18n" name="sharder-mall">投资返点</span><span class="i18n" name="sharder-details-three">如果所邀请好友参与早鸟轮或众售轮投资，邀请人可获得好友认购SS数量*5%的返点，该返点无上限。</li>
    <#--<li class="rule-text"><span class="rule-text-bold i18n" name="details-name-4">空投福利</span><span class="i18n" name="sharder-details-four">参与早鸟轮投资或邀请了10人以上（含10人）的账户均可获得空投奖励，系统会自动空投SS到您的豆匣账户，数额以官网公布为准。</li>-->
    <li class="rule-text"><span class="rule-text-bold i18n" name="sharder-fiat-cast">法币参投</span><span class="i18n" name="sharder-details-five">需法币投资的用户可至豆匣商城参与实物众售。商城购物可获赠豆匣积分，豆匣积分可1:1兑换豆匣SS。</li>
    <li class="rule-text"><span class="rule-text-bold i18n" name="sharder-listing-exchanges">锁仓奖励</span><span class="i18n" name="sharder-details-six">正式交易前可在官网申请锁仓。锁仓奖励为锁仓的SS数量*奖励百分比（半年：5%，一年：12%）。</li>
    <li class="rule-text"><span class="rule-text-bold i18n" name="sharder-token-delivery">交易平台</span><span class="i18n" name="sharder-details-seven">预计登录：币安(Binance)、Okex、比特尔(Gate.io)、炒客(Chaoex)、Ebtcbank、比特时代(Aex.com)、Yobit、HitBTC。</span></li>
    <li class="rule-text"><span class="rule-text-bold i18n" name="sharder-token-return">兑换说明</span><span class="i18n" name="sharder-details-eight">官网直投者在众售轮结束后三日内发放SS；以太坊智能合约参投者自动兑换；交易所参与众售者由交易所发放。</span></li>
    <li class="rule-text"><span class="rule-text-bold i18n" name="sharder-return-instructions">退还说明</span><span class="i18n" name="sharder-details-nine">本次众售由三个渠道：官网、以太坊智能合约、交易所进行募集。超过硬顶部分按时间先后顺序原路退回。</span></li>
</ul>
</#macro>


<#macro investFlow isMobile=false>
<div>
    <h3 class="<#if isMobile>ss-head<#else>ss-sub-title</#if> i18n" name="sharder-participation-process">众售参与流程</h3>
    <p class="generalTextColor i18n" name="sharder-crowd-funding-participate">为了确保公平、公正、公开以及方便广大投资者参与。可以通过下面三种方式参与众售</p>
    <p class="generalTextColor"><span class="flow-title i18n" name="sharder-website-direct">1、官网直投：</span><span class="i18n" name="sharder-token-participate">比特币BTC、以太坊ETH在豆匣官网参与。</span></p>
    <p class="generalTextColor"><span class="flow-title i18n" name="sharder-intelligent-contract">2、智能合约：</span><span class="i18n" name="sharder-corwd-funding-transfer">众售轮可以直接向智能合约地址转账，以太坊智能合约会自动发送豆匣SS。</span></p>
    <p class="generalTextColor"><span class="flow-title i18n" name="sharder-stock-exchange">3、交易所众售：</span><span class="i18n" name="sharder-exchange-issue">交易所众售以固定汇率兑换，代币由交易所发放。
</span></p>
</#macro>

<#macro investXX isMobile=false>
    <#if !isMobile>

    <#else>

    </#if>
</div>
</#macro>