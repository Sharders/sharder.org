<@layout.htmlHead    pagename="center">
<link rel="stylesheet" href="/r/cms/resource/sharders/css/user_center.css" />
<script src="/r/cms/resource/sharders/layui/lay/modules/layer.js" type="text/javascript" charset="utf-8"></script>

<#--<script src="https://bdimg.share.baidu.com/static/api/js/share.js?v=89860593.js?cdnversion=' + ~(-new Date() / 36e5)" type="text/javascript" charset="utf-8"></script>-->
<style>
    .bdsharebuttonbox{
        position: absolute;
        right: 90px;
        bottom: -1px;
    }
    #userPwd div{
        position: relative;
    }
    #userPwd label.error {
        color: red !important;
        font-size: 12px !important;
        position: absolute;
        bottom: -17px;
        width: 100%;
        left: 0;
    }
    #userWalletAddr label.error{
        width: initial;
        padding-left: 156px;
        margin-top: 13px !important;
    }
</style>

</@layout.htmlHead>

<@layout.htmlBody>



<div class="container ss-theme-background-color" id="member_center">
    <#--<div class="subscribe">-->
        <#--<div class="subscribe-share">-->
            <#--<span class="subscribe-make i18n" name="sharder-subscribe-share">白名单份额预约</span>-->
            <#--<span class="subscribe-time i18n" name="sharder-subscribe-start-end">1月18日9:00-1月28日23:59</span>-->
            <#--<div class="speed-progress">-->
						<#--<span class="progress">-->
                            <#--<#if subscribeNumber ??>-->
                                <#--<#if subscribeNumber gt 1000 >-->
                                    <#--<span class="line" style="width: 100%"></span>-->
                                <#--<#else >-->
                                    <#--<span class="line" style="width: ${subscribeNumber/10!}%"></span>-->
                                <#--</#if>-->
                            <#--</#if>-->


						<#--</span>-->
                <#--<span class="total-subscribe i18n" name="sharder-subscribe-total-share">总份额1000ETH(或等价的BTC)</span>-->
                <#--<span class="subscribe-proportion">-->
                    <#--<#if subscribeNumber ??>-->
                        <#--${subscribeNumber/10!}%-->
                    <#--</#if>-->
                <#--</span>-->
            <#--</div>-->
            <#--<ul class="invitation">-->
                    <#--<p style="text-align: center" class="i18n" name="subscribe-list">白名单额度排名</p>-->
                    <#--<#if subscribe0 ??><li><span class="invitation-name"><span class="i18n" name="sharder-account-number">账户：</span>${userName0!}</span><span-->
                            <#--class="invitation-quota"><span class="i18n" name="sharder-obtain-amount">获得额度:</span>${subscribe0.maxSubscribe!}ETH</span></li></#if>-->
                    <#--<#if subscribe1 ??><li><span class="invitation-name"><span class="i18n" name="sharder-account-number">账户：</span>${userName1!}</span><span-->
                            <#--class="invitation-quota"><span class="i18n" name="sharder-obtain-amount">获得额度:</span>${subscribe1.maxSubscribe!}ETH</span></li></#if>-->
                    <#--<#if userName2 ??><li><span class="invitation-name"><span class="i18n" name="sharder-account-number">账户：</span>${userName2!}</span><span-->
                            <#--class="invitation-quota"><span class="i18n" name="sharder-obtain-amount">获得额度:</span>${subscribe2.maxSubscribe!}ETH</span></li></#if>-->
            <#--</ul>-->
        <#--&lt;#&ndash;<#if !nowSubscribe ??> <button class="ss-main-btn i18n" title="点击成为白名单" id="applyFor" name="sharder-become-subscribe">成为白名单</button></#if>&ndash;&gt;-->
        <#--</div>-->

        <#--<div class="subscribe-rule">-->
        <#--&lt;#&ndash;<span class="subscribe-detailed i18n" name="sharder-subscribe-fine">白名单解释</span>&ndash;&gt;-->
            <#--<span class="title i18n" name="sharder-subscribe-one">白名单说明</span>-->
            <#--<p class="text i18n" name="sharder-subscribe-second">-->
                <#--在早鸟轮正式开始前成功注册账号都拥有1个ETH的基础白名单额度。-->
            <#--</p>-->
            <#--<span class="title i18n" name="sharder-subscribe-three">白名单额度</span>-->
            <#--<p class="text i18n" name="sharder-subscribe-four">-->
                <#--好友通过您分享的专属链接或邀请码注册，每注册成功1人会增加1个ETH的白名单额度。单个账户额度上限为100ETH。-->
            <#--</p>-->
            <#--<span class="title i18n" name="sharder-subscribe-five">白名单奖励:</span>-->
            <#--<p class="text i18n" name="sharder-subscribe-six">-->
                <#--早鸟轮认购豆匣(SS)时，系统会自动赠送20%的豆匣(SS)。-->
            <#--</p>-->
            <#--<p class="text i18n" name="sharder-subscribe-seven">-->
                <#--如拥有1ETH白名单额度，认购总额为3ETH，则换币的计算公式为:1*ETH锁定价/SS单价*(1+20%)+2*ETH锁定价/SS单价。-->
            <#--</p>-->
        <#--</div>-->
        <#--<div class="user-subscribe" style="text-align: center"><span  style="float: left"><span class="i18n" name="sharder-user-subscribe-quota" style="margin-right: 10px">您当前的白名单额度 :</span>${maxSubscribe!"0"}ETH</span>-->
            <#--<a href="<#if startNow?? && "false"==startNow >javascript:void(0);<#else>/invest/invest_item.ss</#if>" style="border-bottom: 1px solid #fff;color: #fff;margin-left: -168px" class="i18n" name="sharder-early-bird">参与早鸟轮</a>-->
        <#--</div>-->
    <#--</div>-->
        <#--<div style="text-align: center"><img src="/r/cms/resource/sharders/img/index/subscribe_overPC.jpg" id="subscribe-over"></div>-->
    <div class="user">
        <span class="title i18n" name="sharder-user-information">账户信息</span>
        <ul>
            <li><span class="user-title i18n" name="sharder-sign-in-username">用户名:</span><span class="user-value"><#if user ??>${user.username!}</#if></span><span
                    class="user-operation" ></span></li>
            <li><span class="user-title i18n" name="sharder-account-number">账号:</span><span class="user-value">${acconut!}</span></li>
            <li><span class="user-title i18n" name="sharder-user-uid-code">UID:</span><span class="user-value">${inviterId!}</span></li>
            <li><span class="user-title i18n" name="sharder-user-sgin-pwd">登录密码:</span><span class="user-value">******</span><span class="user-operation i18n" name="sharder-user-edit-pwd" v-on:click="winOpen()">修改密码</span></li>
            <li>
                <span class="user-title i18n" name="sharder-mention-token-address">提币地址:</span>
                <#if user.purseAddress?? && user.purseAddress != ''>
                        <span>${user.purseAddress!}</span>
                    <#else >
                        <span class="user-value i18n" name="wu" >无</span>
                        <span id="sztbdz" class="user-operation win-open i18n" name="sharder-set-mention-token-address"  v-on:click="winOpen('walletAddr')">设置提币地址</span>
                </#if>
            </li>
            <li>
                <span class="user-title i18n" name="sharder-user-invitation-link">专属邀请链接:</span><span id="contents" >${invitePage!}?inviterId=${inviterId!}&language=${Request.language!}</span>
                <div class="bdsharebuttonbox">
                    <a href="#" class="bds_weixin" data-cmd="weixin" title="分享到微信"></a>
                    <a href="#" class="bds_qzone" data-cmd="qzone" title="分享到QQ空间"></a>
                    <a href="#" class="bds_sqq" data-cmd="sqq" title="分享到QQ好友"></a>
                    <a href="#" class="bds_tsina" data-cmd="tsina" title="分享到新浪微博"></a>
                </div>
                <span class="user-operation i18n" name="sharder-copy-invitation-code" onClick="jsCopy();" >复制邀请码</span>
            </li>

        </ul>
    </div>
    <div class="remarks">
        <span class="gantanhao" id="yaoqingtishi" onmousemove="yaoqingtishi(true)" onmouseout="yaoqingtishi(false)"></span>
        <span class="i18n" name="sharder-invitation-register-sale-reward">邀请好友注册获取空投奖励！</span>
        <span class="i18n sharder-user-parent" name="sharder-user-parent">已邀请人数:</span>${inviteSum!0}
    </div>
        <#assign amountSuoCang = ssSuocangaAmount!0>
        <#assign userAmount = amount!0>
        <#assign usableBalance = userAmount - amountSuoCang/>
    <div class="assets">
        <span class="title i18n" name="sharder-my-assets">我的资产</span>
        <div class="total-assets">
            <span class="personal-total-assets i18n" name="sharsder-my-total-assets">总资产</span>
            <span class="sharder-ss i18n" name="sharder-SS">豆匣(SS)</span>
            <span class="shardr-assets">${userAmount}</span>
            <#--<div class="shardr-available-assets">-->
                <#--<span class="i18n" name="sharder-ss_is">可提币：</span><span class="color">${usableBalance}</span><span>SS</span>-->
                <#--<img src="/r/cms/resource/sharders/img/index/wenhao.png"  class="personal-img"/>-->
                <#--<div class="popup-suocang i18n" name="sharder-ss_is-text">除锁仓及锁仓奖励外你可转账到以太坊钱包的豆匣SS数量。</div>-->
            <#--</div>-->
        </div>
        <div class="subscribe-crowd-funding">
            <div class="personal white-list applu-lock">
                <span class="explain"><span class="i18n" name="sharders-lock-title">锁仓</span><img src="/r/cms/resource/sharders/img/index/wenhao.png" class="personal-img"/>
                    <#--<div class="popup-subscribe i18n" name="sharders-lock-info-text">在锁仓期内此以太坊地址的SS(Sharder)将被限制转出,建议您做好相应备份。</div>-->
                </span>
                <#--<#if suoCangAddr?? && amountSuoCang gt 0>-->
                    <#--<button class="shengqingsuocang" v-on:click="selectTmpl('suocang')">{{isOffText.off1}}</button>-->
                    <#--<#else >-->
                        <#--<#if amount gt 0>-->
                            <#--<button class="shengqingsuocang i18n" name="sharders-application-lock" onclick="shengqingsuocang()">申请锁仓</button>-->
                            <#--<#else >-->
                                <#--<button class="shengqingsuocang i18n" name="sharders-application-lock" style="background: #d2d2d2">申请锁仓</button>-->
                        <#--</#if>-->
                <#--</#if>-->

                <button class="shengqingsuocang i18n" name="sharders-application-lock" style="background: #d2d2d2">申请锁仓</button>

                <#--<span class="explain"><span class="i18n" name="sharder-subscribe-quota">白名单额度</span><img src="/r/cms/resource/sharders/img/index/wenhao.png" class="personal-img"/>-->
                    <#--<div class="popup-subscribe i18n" name="sharder-subscribe-whitelist">好友通过您分享的专属链接或邀请码注册，每注册成功1人会增加1个ETH的白名单额度，单个账户额度上限为100ETH。白名单额度在早鸟轮认购豆匣(SS)时，系统会自动赠送20%的豆匣(SS)。</div></span>-->
                <#--<span class="currency">ETH</span>-->
                <#--<span class="quota used">${maxSubscribe!"0"}</span>-->
                <#--<span class="alreadyUsed"><span class="i18n" name="sharder-available-quota">已使用额度 :</span> ${nowSubscribe!"0"}ETH</span>-->

            <#--<span class="details" v-on:click="isLuck(1)">{{retruenTExt(isOff1)}}</span>-->
            <#--<span class="details" v-on:click="selectTmpl('fandian')">{{retruenTExt(isOff3)}}</span>-->
            </div>
            <div class="personal crowd-funding">
                <span class="explain"><span class="i18n" name="sharder-subscribe-income">众售所得</span><img src="/r/cms/resource/sharders/img/index/wenhao.png" class="personal-img"/>
                    <div class="popup-crowd-funding i18n" name="shader-storage-token">获得的豆匣(SS)数量。</div></span>
                <span class="currency i18n" name="sharder-SS-1">豆匣(SS)</span>
                <span class="quota">${crowd_amount!'0'}</span>
                <span class="details" v-on:click="selectTmpl('zhongchou')">{{isOffText.off2}}</span>
            </div>
            <div class="personal rebate">

                <span class="explain"><span class="i18n" name="dxjl">豆匣奖励</span>
                    <img src="/r/cms/resource/sharders/img/index/wenhao.png" class="personal-img"/>
                    <div class="poput-invitation i18n" name="sharder-rewarded-purchase-referred">根据对豆匣社区做出的贡献，会持续进行空投奖励！</div>
                </span>
                <span class="currency i18n" name="sharder-SS-1">豆匣(SS)</span>
                <span class="quota">${invite_rewards_amount!'0'}</span>
            <#--<span class="details" >{{retruenTExt(isOff3)}}</span>-->
            <#--<span class="details" v-on:click="isLuck(3)">{{retruenTExt(isOff3)}}</span>-->
                <span class="details" v-on:click="selectTmpl('fandian')">{{isOffText.off3}}</span>
            </div>
        </div>
        <div class="subscribe-list" id="subscribe-list" v-if="showDetail">
        <#--<span class="subscribe-title">{{nameText(name)}}</span>-->
            <component :is="template"></component>
            <!--交易记录end-->
            <div class="paging">
                <navigation :pages="totalPage" :current.sync="currentPage" @navpage="msgListView"></navigation>
                <!--<p>当前是第<span v-text="pageNo"></span>页</p>-->
            </div>
        </div>
        <#--<#if amount?? && amount gt 0>-->
        <#--<#if mentionMoney??>-->
            <#--<button class="currency-ss kedian i18n" name="chakantibixiangqing" onclick="tibixq()">查看提币详情</button>-->
            <#--<#else >-->
                <#--<#if amount?? && user.purseAddress?? && usableBalance gt 0>-->
                    <#--<button class="currency-ss kedian i18n" name="sharder-subscribe-currency" onclick="tibiPopup()">提币申请</button>-->
                <#--<#else >-->
                    <#--<button class="currency-ss i18n" name="sharder-subscribe-currency">提币申请</button>-->
                <#--</#if>-->
        <#--</#if>-->

        <button class="currency-ss i18n" name="sharder-subscribe-currency">提币申请</button>


        <img src="/r/cms/resource/sharders/img/index/wenhao.png" class="personal-img tibi"/>
        <div class="poput-extract i18n" name="sharder-website-direct-investment">通过官网直投的，将于公开众售结束后15个工作日内进行清算，清算完成后七个工作日内发放到您提供的ETH钱包地址（锁仓者除外）。</div>

    </div>
    <#--<div class="rule">-->
        <#--<p class="text">-->
            <#--<span class="title i18n" name="sharder-subscribe-eight">返点奖励</span><span class="i18n" name="sharder-subscribe-nine">邀请的好友参与早鸟投资后，您可获得好友认购SS数量*5%的返点，返点无上限。</span>-->
        <#--</p>-->
        <#--<p class="text">-->
            <#--<span class="title i18n" name="sharder-subscribe-ten">空投红利</span><span class="i18n" name="sharder-subscribe-eleven">成功邀请10个以上好友能享受特殊空投红利，具体数量以官网和社区公告为准，符合要求者系统会自动空投到您的豆匣账户。</span>-->
        <#--</p>-->
    <#--</div>-->
    <div class="edit-password">
        <img src="/r/cms/adf/adf/images/login-close-on.png" class="close_userPwd" v-on:click="winOpen()"/>
        <form method="post" id="userPwd">
            <h2 class="i18n title" name="sharder-user-edit-pwd">修改密码</h2>
            <div class="oldPassWord">
                <label class="i18n" name="sharder-old-password">请输入旧密码</label><input type="password" id="oldPassWord" name="origPwd" v-on:input="verification()"/>
            </div>
            <div class="newPassWord1">
                <label class="i18n" name="sharder-new-password">请输入新密码</label><input type="password" id="newPassWord1" v-on:input="verification()" vld="{rangelength:[6,20]}" class="password" autocomplete="off" disableautocomplete/>
            </div>
            <div class="newPassWord2">
                <label class="i18n" name="sharder-again-password">再次输入密码</label><input type="password"  name="newPwd" id="newPassWord2" v-on:input="verification()"  vld="{rangelength:[6,20]}" autocomplete="off" disableautocomplete/>
            </div>

            <input type="button" name="the-next-step" class="i18n" value="提交" v-on:click="editPwd()"/>
        </form>
        <div class="userPwd-div">
            <h2 class="i18n" name="sharder-operation-result">操作结果</h2>
            <span>{{Pwd.message}}{{Pwd.error}}</span>
        <#--<input type="button" value="重新修改" v-on:click="edit()"/>-->
        </div>
        <#--<span class="close" v-on:click="winOpen()" >X</span>-->
    </div>
    <div class="edit-wallet-addr">
        <img src="/r/cms/adf/adf/images/login-close-on.png" class="close_userPwd" v-on:click="winOpen('walletAddr')"/>
        <form method="post" id="userWalletAddr" class="userWalletAddr" onsubmit="return false">
            <h2 class="i18n" name="sharder-set-mention-token-address">设置提币地址</h2>
            <p class="walletAddr i18n" name="sharder-mention-token-address-attention">注意:提币地址设置以后将无法修改，请认真核对</p>
            <#--<p class="walletAddr i18n" name="sharder-mention-token-address-attention">3月1日正式开放</p>-->
            <div class="input-div">
                <label class="i18n" name="sharder-set-address">设置地址:</label>
                <input type="text" id="oldWalletAddr" name="walletAddr" v-on:keyup="verificationAddr()" v-on:paste="verificationAddr()"/>
            </div>
            <div class="input-div">
                <label class="i18n" name="sharder-input-again" for="newWalletAddr">再次输入:</label>
                <input type="text" id="newWalletAddr"  v-on:keyup="verificationAddr()" v-on:paste="verificationAddr()"/>
            </div>
            <label  style="display: none;" for="newWalletAddr" class="error error1 i18n" generated="true" name="sharder-tishi-liangchisurubuyiyang">两次输入的地址不一致,请核对后填写！！!</label>
            <label  style="display: none;" for="newWalletAddr" class="error error2 i18n" generated="true" name="sharder-tishi-geshiyichang">格式异常！！</label>
            <#--<div class="input-div">-->
                <#--<label class="i18n" name="sharder-username">账户:</label>-->
                <#--<input class="user-phone" name="uid" value="${acconut!}" readonly="readonly" id="identification_forgot_pwd"/>-->
                <#--<input type="button" class="i18n button" name="sharder-send" onclick="forgotPwdVcode(this)" style="width: 100px"/>-->
                <#--<input type="hidden" name="captchaToken"/>-->
            <#--</div>-->
            <#--<div class="input-div">-->
                <#--<label class="i18n" name="sharder-user-code">验证码:</label>-->
                <#--<input type="number" maxlength="6" minlength="6" name="verificationCode" id="verificationCode"/>-->
            <#--</div>-->
            <button class="i18n submit"  name="the-next-step" v-on:click="sendSaveWalletAddr()">提交</button>
            <#--<button class="i18n submit"  name="the-next-step" style="background-color: #999">提交</button>-->

        </form>
        <div class="userWalletAddr" id="walletAddr">
            <h2 class="i18n" name="sharder-operation-result">操作结果</h2>
            <p class="walletAddr" v-if="saveWalletAddr.success" style="color: #0BA0D1">{{saveWalletAddr.instructions}}</p>
            <p class="walletAddr" v-else  style="color: red">{{saveWalletAddr.instructions}}</p>
        </div>
        <#--<span class="close" v-on:click="winOpen('walletAddr')" >X</span>-->
    </div>
</div>
    <#include "/WEB-INF/ftl/sharders/hint/hint.ftl" >
    <#include "/WEB-INF/ftl/sharders/tibi.ftl"/>
    <#--<#include "/WEB-INF/t/cms/www/sharder.org/pc/member/apply_lock.ftl"/>-->
<div class="maker"></div>

<script type="text/x-template" id="apply-lock">
    <div class="apply-lock apply-lock-body">
        <span class="apply-lock i18n" data-name="suocang-details">锁仓详情</span>
        <table class="ss-table">
            <thead>
                <tr>
                    <th class="i18n" data-name="shengqingshijian">申请时间</th>
                    <th class="i18n" data-name="suocangshijian">锁仓时间(年)</th>
                    <th class="i18n" data-name="jiesuoshijian">解锁时间</th>
                    <th class="i18n" data-name="suocangdizi">锁仓地址</th>
                    <th class="i18n" data-name="suocangsuliang">锁仓数量</th>
                    <th class="i18n" data-name="huodejiangli">获得奖励</th>
                    <th class="i18n" data-name="sharder-bill-status">状态</th>
                </tr>
            </thead>
            <tbody>
                <tr v-for="dealBase in parentData.dealBases" >
                    <td>{{dealBase.createDate}}</td>
                    <td>{{dealBase.lockDate/12}}</td>
                    <td>{{dealBase.unlockTime}}</td>
                    <td>${suoCangAddr!}</td>
                    <td>{{dealBase.originalAmount}}</td>
                    <td>{{dealBase.awardAmount}}</td>
                    <td class="i18n" v-if="dealBase.isLock == 'false'" data-name="sharder-shenghezhong">审核中</td>
                    <td class="i18n" v-if="dealBase.isLock == 'true'"  data-name="sharder-yifafang">已发放</td>
                </tr>
            </tbody>
        </table>
    </div>
</script>

<#--<script type="text/x-template" id="details-white-list">-->
    <#--<div class="details-white-list subscribe-body">-->
        <#--<p class="subscribe-head"><span class="subscribe-table i18n" name="sharder-registrant">注册人</span><span class="subscribe-table i18n" name="sharder-registrant-time">注册时间</span><span class="subscribe-table i18n" name="sharder-white-list-share">白名单份额</span></p>-->
        <#--<ul class="subscribe-ul">-->
            <#--<li class="subscribe-li" v-for="pd in parentData.dataList"><span class="subscribe-table">{{pd.id}}</span><span class="subscribe-table">{{pd.createDate}}</span><span class="subscribe-table">1TEH</span></li>-->
            <#--<li class="subscribe-li" v-if="parentData.dataList == ''"><span>No data is found！！！</span></li>-->
        <#--</ul>-->
    <#--</div>-->
<#--</script>-->
<script type="text/x-template" id="public-information">
    <div>
        <span class="subscribe-title i18n" data-name="dxjl">豆匣奖励</span>
        <table class="ss-table defalut">
            <thead>
            <tr>
                <#--<th class="i18" name="friend-regid">{{parentData.title.a}}</th>-->
                <th >{{parentData.title.b}}</th>
                <th >{{parentData.title.c}}</th>
                <th >{{parentData.title.d}}</th>
            </tr>
            </thead>
            <tbody>
            <tr v-for="dealBase in parentData.dealBases.list" >
                <#--<td>{{dealBase.userId}}</td>-->
                <td>{{dealBase.createDate}}</td>
                <td>
                    <#include "/WEB-INF/ftl/sharders/award_type.ftl"/>
                </td>
                <td>{{dealBase.awardAmount || '0'}} (SS)</td>
            </tr>
            </tbody>
        </table>
        <p  v-if="parentData.showHint"><span style="color: red">{{parentData.title.e}}</span><a href="#member_center" >{{parentData.title.f}}</a></p>
    </div>
</script>
<script type="text/x-template" id="rebate-details">
    <div>
        <span data-name="sharder-subscribe-income" class="subscribe-title i18n">众售所得</span>
        <table class="ss-table defalut">
            <thead>
            <tr>
                <th >{{parentData.title2.a}}</th>
                <th >{{parentData.title2.b}}</th>
                <th >{{parentData.title2.c}}</th><!--来源-->
                <th >{{parentData.title2.i}}</th><!--状态-->
                <th >{{parentData.title2.d}}</th><!--支持数量-->
                <th >{{parentData.title2.e}}</th><!--奖励类型-->
                <th >{{parentData.title2.f}}</th><!--奖励数量-->
                <th >{{parentData.title2.g}}</th><!--获得豆匣(SS)-->
            </tr>
            </thead>
            <tbody>
            <tr v-for="dealBase in parentData.dealBases.list" >
                <td>{{dealBase.createDate}}</td>
                <td>
                    <span v-if="dealBase.source == 'PhaseII'" class="i18n" data-name="sharder-my-info-presale">
                        早鸟
                    </span>
                    <span v-if="dealBase.source == 'PhaseIII'" class="i18n" data-name="sharder-my-info-crowdsale">
                        众售
                    </span>
                </td>
                <#--<td v-if="dealBase.source == 'Store'" data-name="sharder-my-info-mall" class="i18n">商城</td>-->
                <#--<td v-else data-name="sharder-my-info-official-website" class="i18n">官网</td>-->
                <td data-name="sharder-my-info-official-website" class="i18n">官网</td>
                <td>
                    <span v-if="dealBase.status == '1'" data-name="sharder-my-info-confirmed" class="i18n">已确认</span>
                    <span v-if="dealBase.status == '0'" data-name="sharder-my-info-to-confirmed" class="i18n">待审核</span>
                    <#--<span v-if="dealBase.status == '0'">未支付</span>-->
                    <span v-if="dealBase.status == '-1'" data-name="sharder-my-info-invalid" class="i18n">失效</span>

                    <span v-if="dealBase.status == '3'" data-name="yituihuan" class="i18n">已退还</span>
                    <#--<span v-if="dealBase.status == '0'" data-name="sharder-my-info-referral-bonus" class="i18n">已发送奖励</span>-->
                </td>
                <td>
                    <span v-if="dealBase.source != 'Store'">
                        {{dealBase.payAmount || '0'}}
                        <span v-if="dealBase.payType == 'SYSTEM'" data-name="sharder-my-info-welfare" class="i18n">赠送</span>
                        <span v-else>{{dealBase.payType}}</span>
                    </span>
                </td>
                <#--<td>{{dealBase.useWhitelistsQuota || '0'}}</td>-->
                <#--<td>{{dealBase.whitelistAwardAmount || '0'}}</td>-->

                <td>
                    <#include "/WEB-INF/ftl/sharders/award_type.ftl"/>
                </td>
                <td>
                    <span v-if="dealBase.useWhitelistsQuota != null && dealBase.useWhitelistsQuota != ''">
                        <span>{{dealBase.whitelistAwardAmount || '0'}}</span>
                    </span>
                    <span v-else>
                        {{dealBase.awardAmount || '0'}}
                    </span>
                </td>

                <#--<td>{{dealBase.amount || '0'}}</td>-->
                <td>
                    <span v-if="dealBase.status == '1' && dealBase.amount == '0'">
                        {{parentData.daiding}}
                        <img src="/r/cms/resource/sharders/img/gantanhao.png" style="width:15px;height: 15px;cursor: pointer;" class="personal-img daidingtishi" onmousemove="daidingtishi(true)" onmouseout="daidingtishi(false)">
                    </span>
                    <span v-else>
                        {{dealBase.amount || '0'}}
                    </span>
                </td>
            </tr>
            </tbody>
            <p  v-if="parentData.showHint"><span style="color: red">{{parentData.title.e}}</span><a href="#member_center" >{{parentData.title.f}}</a></p>
        </table>
    </div>
</script>
<script src="/r/cms/resource/sharders/js/pagination.js"></script>
<script>
    function jsCopy() {
        var text = document.getElementById("contents").innerText;
        var input = document.createElement("input");
        input.value = text;
        document.body.appendChild(input);
        input.select();
        document.execCommand("Copy");
        input.remove();
        layer.msg($("span[name='copyok']").text());
    }
    var pc;
    var timeid;
    var a = 0;
    timeid = window.setInterval(function () {
        var PieChart = localStorage.getItem("end-of-translation");
        if (PieChart) {
            pc = new Vue({
                el: "#member_center",
                data: {
                    /*默认分页参数 start*/
                    countOfCurrentPage:10, //每页条数
                    currentPage:1, //当前第几页
                    totalCount:0, //总条数
                    totalPage:0, //总页数
                    /*分页参数end*/
                    dealBases:'',
                    isOff1:true,
                    isOff2:true,    //是否已关闭
                    isOff3:true,
                    template:"",
                    dataList:"",
//                    name:"",
                    id:${user.id!},
                    number:10,
                    isOpenWindos:true,
                    isSubmit:false,
                    Pwd:'',
                    asset_template:'', //我的资产模板
                    title:'',
                    title2:"",
                    isData:true,
                    showDetail:false,
                    showHint:false, //没有数据时是否显示提示
                    saveWalletAddr:"",//
                    daiding:'',
                    isOffText:{off1:$("span[name='suocanglock']").text(),off2:$("span[name='sharder-details-info']").text(),off3:$("span[name='sharder-details']").text()},
                },
                methods: {
                    //选择要显示的数据
                    selectTmpl:function(_t){

                        $(".personal.crowd-funding").css("border-bottom","0px");
                        $(".personal.rebate").css("border-bottom","0px");
                        $(".personal.applu-lock").css("border-bottom","0px");
                        pc.dealBases = "";
                        pc.title={a:$("span[name='sharder-registrant-uid']").text(),
                            b:$("span[name='sharder-participation-time']").text(),
                            c:$("div>span[name='sharder-award-type']").text(),
                            d:$("span[name='sharder-award-amount']").text(),
                            e:$("span[name='sharder-details-benefits']").text(),
                            f:$("span[name='sharder-details-immediately']").text()};

                        pc.title2={a:$("span[name='sharder-participation-time']").text(),
                            b:$("span[name='sharder-stage-participation']").text(),
                            c:$("span[name='sharder-source']").text(),
                            i:$("span[name='sharder-bill-status']").text(),
                            d:$("span[name='sahrder-support-quantity']").text(),
                            e:$("span[name='sharder-award-type']").text(),
                            f:$("span[name='sharder-award-amount']").text(),
                            g:$("span[name='sharder-get-ss']").text()
                        }

                        if(_t == "fandian"){
                            pc.isOff3=false;
                            pc.isOff1=false;
                            pc.isOff2 = !pc.isOff2;
                        }
                        if(_t == "zhongchou"){
                            pc.isOff2=false;
                            pc.isOff1=false;
                            pc.isOff3 = !pc.isOff3;
                        }
                        if(_t == "suocang"){
                            pc.isOff3=false;
                            pc.isOff2=false;
                            pc.isOff1 = !pc.isOff1;
                        }

                        if(a == 0){ //初始化
                            a++;
                            if(_t == "fandian"){
                                pc.isOff2 = true;
                            }else if(_t == "zhongchou"){
                                pc.isOff3 = true;
                            }else if(_t == "suocang"){
                                pc.isOff1 = true;
                            }
                            pc.showDetail =true;
                        }

                        //设置选中的模板
                        pc.template = _t;

                        pc.detailsJudge();

                        if(!pc.isShowDetail()){
                            return;
                        }
                        if(pc.isOff1){
                            $(".personal.applu-lock").css("border-bottom","2px solid #0ba0d1");
                        }
                        if(pc.isOff2){
                            $(".personal.rebate").css("border-bottom","2px solid #0ba0d1");
                        }
                        if(pc.isOff3){
                            $(".personal.crowd-funding").css("border-bottom","2px solid #0ba0d1");
                        }
                        //重新设置分页
                        pc.totalPage=1;
                        pc.currentPage = 1;
                        pc.countOfCurrentPage = 10 ;
                        pc.pagingDate(_t);
                    },
                    pagingDate:function (_t) {
                        layer.load(2);
                        if(isEmpty(_t)){
                            _t = pc.asset_template;
                        }else{
                            pc.asset_template = _t;
                        }
                        var requestUrl = "";
                        if(_t == "fandian"){
//                            requestUrl = "/user_center/invite_awaer.ss";
                            requestUrl = "/user_center/awaers.ss";

                        }else if(_t == "zhongchou"){
                            //备用
                            requestUrl = "/user_center/zhong_chou.ss";
                        }else if(_t == "suocang"){
                            //锁仓
                            requestUrl = "/userbill/suo_cang_record.ss";
                        }else{

                        }
                        var data = pageParams(pc.currentPage,pc.countOfCurrentPage);
                        commAjax(requestUrl,"get",data,pc.loadDealbaseResult);
                        setTimeout(function () {
                            layer.closeAll('loading');
                        },20000);
                    },
                    loadDealbaseResult:function (_result) {
                        console.info(_result);
                        layer.closeAll('loading');
                        pc.daiding = $("span[name='daiding']").html();
                        if (isTrue(_result.success)){
                            pc.dealBases = _result.result.data;
                            pc.setPaging(pc.dealBases);
                            if(isEmpty(pc.dealBases)){
                                pc.showHint = true;
                            }
                        }
                        setTimeout(function () {
                            executeDymaicI18n();
                        },100);
                    },
                    msgListView:function(curPage){
                        //根据当前页获取数据
                        this.pageNo = curPage;
                    },
                    setPaging:function(params){
                        pc.countOfCurrentPage=params.pageSize;
                        pc.currentPage=params.pageNo;
                        pc.totalCount=params.totalCount;
                        pc.totalPage=params.totalPage;
                    },
                    winOpen:function (name) {
                        pc.isOpenWindos = ! pc.isOpenWindos;
                        if(pc.isOpenWindos){
                            $(".maker").css("display","none");
                            if(name == "walletAddr"){
                                $(".edit-wallet-addr").css("display","none");
                            }else {
                                $(".edit-password").css("display","none");
                            }
                        }else {
                            $(".maker").css("display","block");
                            if(name == "walletAddr"){
                                $(".edit-wallet-addr").css("display","block");
                            }else {
                                $(".edit-password").css("display","block");
                            }
                        }
                        pc.edit(name);
                    },
                    edit:function (name) {
                        $("#userPwd>div input").val('');
                        $("#userWalletAddr input[type='number']").val('');
                        $("#userWalletAddr input[type='text']").val('');
                        if(name == "walletAddr"){
                            $('#userWalletAddr').css("display","block");
                            $('#walletAddr').css("display","none");
                        }else {
                            $('#userPwd').css("display","block");
                            $('.userPwd-div').css("display","none");
                        }
                    },
                    verificationAddr:function (_this) {
                        var oldWalletAddr=$("#oldWalletAddr").val();
                        var newWalletAddr=$("#newWalletAddr").val();

                        $("label[for='newWalletAddr'].error").css("display","none");
                        if(oldWalletAddr != newWalletAddr){
                            $("label[for='newWalletAddr'].error1").css("display","block");
                            pc.isSubmit = false;
                            return false;
                        }

                        if(!isETHAddr(oldWalletAddr)){
                            $("label[for='newWalletAddr'].error2").css("display","block");
                            pc.isSubmit = false;
                            return false;
                        }
                        pc.isSubmit = true;
                    },
                    sendSaveWalletAddr:function () {
                        //短信验证码
//                        if($("#verificationCode").val() == "" || $("#verificationCode").val().length != 6){
//                            return ;
//                        }
                        if(pc.isSubmit){
                             if(!isETHAddr($("#oldWalletAddr").val())){
                                 $("label[for='newWalletAddr'].error2").css("display","block");
                                return false;
                            }
                            var setAddrload = layer.load(2);
                            var url = "/save/wallet/address.ss";
                            var data= $("#userWalletAddr").serialize();
                            commAjax(url,"post",data,function (result) {
                                layer.close(setAddrload);
                                if(result.success){
                                    layer.msg($("span[name='sztbdzcg']").text());
                                    pc.winOpen('walletAddr');
                                    location.reload();
                                }else{
                                    layer.msg($("span[name='sztbdzsb']").text());
                                }
                            });
                        }
                    }
                    ,verification:function () {
                        var input1 = $("#oldPassWord");
                        var input2 = $("#newPassWord1");
                        var input3 = $("#newPassWord2");
//                        input1.css("box-shadow","");
//                        input2.css("box-shadow","");
//                        input3.css("box-shadow","");
//                        $("#userPwd div").css("border-bottom","1px solid #d2d2d2");

                        if(input1.val() == ''||input2.val()== '' || input3.val() == ''){
                            pc.isSubmit = false;
                        }
//                        if(input1.val() == ''){
////                            input1.css("box-shadow","0px 0px 6px red");
//                            $("#userPwd div.oldPassWord").css("border-bottom","1px solid red");
//                        }
                        if(input2.val() == input3.val()){
                            pc.isSubmit = true;
                        }else{
//                            input2.css("box-shadow","0px 0px 6px red");
//                            input3.css("box-shadow","0px 0px 6px red");
//                            $("#userPwd div.newPassWord1").css("border-bottom","1px solid red");
//                            $("#userPwd div.newPassWord2").css("border-bottom","1px solid red");
                            pc.isSubmit = false;
                        }
                        $("#userPwd").valid();
                    },

                    editPwd:function () {

                        if($("#userPwd").valid()){
                            if(pc.isSubmit){
                                layer.load(2);
                                $.ajax({
                                    type: "post",
                                    url:"/passWord/edit.ss",
                                    data:$('#userPwd').serialize(),
                                    dataType: "json",
                                    success: function(data) {
                                        layer.closeAll('loading');
//                                        pc.Pwd = data;
                                        console.info(data);
                                        if(data.success){
                                            layer.msg($("#mimaxiugai_cenggong").text());
                                            pc.winOpen();
                                        }else {
                                            layer.msg($("#mimaxiugai_shibai").text());
                                        }
//                                        $('#userPwd').css("display","none");
//                                        $('.userPwd-div').css("display","block");
                                    }
                                });
                                setTimeout(function () {
                                    layer.closeAll('loading');
                                },20000);
                            }else {
                                $("div.newPassWord2 label.error").css("display","block");
                                $("div.newPassWord2 label.error").text($("#suocangMsg").text());
                            }
                        }


                    },
                    retruenTExt:function (bool) {
                        if(bool){
                            return $("#chakan").text();
                        }else{
                            return $("#guanbi").text();
                        }
                    },
                    retruenTExts:function (bool) {
                        if(bool){
                            return $("#chakans").text();
                        }else{
                            return $("#guanbis").text();
                        }
                    },
                    detailsJudge:function () {
                       if(pc.isOff1){
                            pc.isOffText.off1=$("span[name='suocangColes']").text();
                       }else{
                           pc.isOffText.off1=$("span[name='suocanglock']").text();
                       }

                        if(pc.isOff3){
                            pc.isOffText.off2=$("span[name='sharder-details-info-close']").text();
                        }else{
                            pc.isOffText.off2=$("span[name='sharder-details-info']").text();
                        }

                        if(pc.isOff2){
                            pc.isOffText.off3=$("span[name='sharder-close-details']").text();
                        }else{
                            pc.isOffText.off3=$("span[name='sharder-details']").text();
                        }

                    },
                    isShowDetail:function () {
                        //全部都关闭了
                        if(pc.isOff2 || pc.isOff3 || pc.isOff1){
                            pc.showDetail =true;
                            return true;
                        }else{
                            pc.showDetail =  false;
                            return false;
                        }
                        alert(pc.showDetail);
                    },

                },
                components:{
                    'baimingdan':{
                        template:'#details-white-list',
                        data:function(){
                            return{
                                parentData:this.$parent.$data
                            }
                        }
                    },
                    'fandian':{
                        template:'#public-information',
                        data:function(){
                            return{
                                parentData:this.$parent.$data
                            }
                        }
                    },
                    'zhongchou':{
                        template:'#rebate-details',
                        data:function(){
                            return{
                                parentData:this.$parent.$data
                            }
                        }
                    },
                    'suocang':{
                        template:'#apply-lock',
                        data:function(){
                            return{
                                parentData:this.$parent.$data
                            }
                        }
                    },
                }
            });
            //申请成为白名单
            $(document).ready(function () {
                $("#applyFor").click(function () {
                    $("#applyFor").attr("disabled",true);
                    layer.load(2);
                    $.ajax({
                        url:"/subscribe/apply.ss",
                        dataType:"json",
                        success:function (result) {
                            layer.closeAll('loading');
                            layer.msg(result.result,function () {
                                location.reload();
                            });
                        }
                    })
                })
            });
            window.clearInterval(timeid);
//            var  language = localStorage.getItem("userLanguage");
//            if(i18nLanguage == "en"){
//                $("#subscribe-over").attr("src","/r/cms/resource/sharders/img/index/subscribe_overPC_en.jpg");
//            }else if(i18nLanguage == "ko"){
//                $("#subscribe-over").attr("src","/r/cms/resource/sharders/img/index/subscribe_over_koPC.png");
//            }else if(i18nLanguage == "ja"){
//                $("#subscribe-over").attr("src","/r/cms/resource/sharders/img/index/japanese_over_koPC.jpg");
//            }
        }
    },100);

var _tips;
function daidingtishi(_t) {

    if(_t){
        _tips  = layer.tips($("span[name='daidingtishi']").html(), '.daidingtishi', {
            tips: [1, '#3595CC'],
            skin:'huanhuangwenben'
        });
    }else{
        layer.close(_tips);
    }
}

    //                    邀请提示
    var _tips1;
function yaoqingtishi(_t){
    if(_t){
        _tips1 = layer.tips($("span[name='yaoqingtishi']").html(), '#yaoqingtishi', {
            tips: [1, '#3595CC'],
            skin:'huanhuangwenben'
        });
    }else{
        layer.close(_tips1);
    }
}
</script>

<script>
    window._bd_share_config = {
        "common": {
            bdText :"立即注册豆匣 享受白名单优惠",
            bdDesc : "注册即享白名单优惠 邀请好友还可获得返点奖励",
            bdUrl: "${invitePage!}?inviterId=${inviterId!}",
            bdPic: 'https://sharder.org/r/cms/resource/sharders/img/teamphoto/share-background.png',
        },
        "share": {"bdSize" : 32},
        "image": {
            "viewList": ["weixin", "qzone", "sqq", "tsina"],
            "viewText": "来自豆匣的白名单优惠",
            "viewSize": "24"
        },
        "selectShare": {
            "bdContainerClass": null,
            "bdSelectMiniList": ["weixin", "qzone", "sqq", "tsina"]
        }
    };
</script>
</@layout.htmlBody>