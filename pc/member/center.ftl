<@layout.htmlHead    pagename="center">
<link rel="stylesheet" href="/r/cms/resource/sharders/css/user_center.css" />
<script src="/r/cms/resource/sharders/layui/lay/modules/layer.js" type="text/javascript" charset="utf-8"></script>

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
        /*width: initial;*/
        /*padding-left: 156px;*/
        /*margin-top: 13px !important;*/
        margin-top: -22px !important;
    }
    button.kedian{
        background-color: #0BA0D1!important;
        cursor: pointer!important;
    }
</style>

</@layout.htmlHead>

<@layout.htmlBody>



<div class="container ss-theme-background-color" id="member_center">

    <div class="user">
        <span class="title i18n" name="sharder-user-information">Account Information</span>
        <ul>
            <li><span class="user-title i18n" name="sharder-sign-in-username">Nickname</span><span class="user-value"><#if user ??>${user.username!}</#if></span><span
                    class="user-operation" ></span></li>
            <li><span class="user-title i18n" name="sharder-account-number">UID:</span><span class="user-value">${acconut!}</span></li>
            <li><span class="user-title i18n" name="sharder-user-uid-code">User Code</span><span class="user-value">${inviterId!}</span></li>
            <li>
                <span class="user-title i18n" name="sharder-user-sgin-pwd">Password</span>
                <#if isDefaultPWD!false>
                    <span class="user-value i18n" name="sharder_no_set_password">Password not set</span>
                    <span class="user-operation i18n" name="sharder_lijishezhimima" v-on:click="winOpen()">Set password now</span>
                <#else >
                        <span class="user-value">******</span>
                        <span class="user-operation i18n" name="sharder-user-edit-pwd" v-on:click="winOpen()">Reset password</span>
                </#if>
            </li>

            <li>
                <span class="user-title">
                    <span class="i18n" name="sharder_shimingrenzheng">Authentication</span>
                    <span id="sharder_shimingrenzheng_info" onmousemove="sharderKycShuoming(true)" onmouseout="sharderKycShuoming(false)"></span>
                </span>
                <#if userMemo?? && userMemo != ''>
                    <#if userMemo?eval.state || userMemo?eval.status == "SUCCESS">
                        <span class="user-value i18n" name="sharder_yirenzheng" >Authenticated</span>
                        <#else >
                            <#if userMemo?eval.status == "FAIL">
                                <span class="user-value i18n" name="sharder-kyc-rezhengshibai" style="color: red">Authentication failed, please resubmit</span>
                                <#else >
                                    <span class="user-value i18n" name="sharder-shenghezhong" >In Rewarded</span>
                            </#if>
                    </#if>
                    <a href="/user_center/sharder/kyc.ss"><span class="user-operation i18n" name="sharder_chakanrenzheng">Check authentication</span></a>
                    <#else >
                        <span class="user-value i18n" name="sharderweirenzheng" >Unauthenticated</span>
                        <a href="/user_center/sharder/kyc.ss"><span class="user-operation i18n" name="sharder_lijirenzheng">Authenticate now</span></a>
                </#if>
            </li>

            <li>
                <span class="user-title i18n" name="sharder-mention-token-address">Withdrawal Address</span>
                <#--<#if user.purseAddress?? && user.purseAddress != ''>-->
                        <#--<span>${user.purseAddress!}</span>-->
                    <#--<#else >-->
                        <#--<span class="user-value i18n" name="wu" >no</span>-->
                        <#--<span id="sztbdz" class="user-operation win-open i18n" name="sharder-set-mention-token-address"  v-on:click="winOpen('walletAddr')">Register receiving address</span>-->
                <#--</#if>-->
                <#if user.purseAddress?? && user.purseAddress != ''>
                        <span>${user.purseAddress!}</span>
                    <#else >
                        <span class="user-value i18n" name="wu" >no</span>
                </#if>
                <#if !user.purseAddress??>
                    <span id="sztbdz" class="user-operation win-open i18n" name="sharder-set-mention-token-address"  v-on:click="winOpen('walletAddr')">Register receiving address</span>
                <#else >
                    <span id="sztbdz" class="user-operation win-open i18n" name="sharder-edit-mention-token-address"  v-on:click="winOpen('walletAddr')">修改提币地址</span>
                </#if>
            </li>
            <li>
                <span class="user-title i18n" name="sharder-user-invitation-link">Invitation link: </span><span id="contents" >${invitePage!}?inviterId=${inviterId!}&language=${Request.language!}</span>
                <div class="bdsharebuttonbox">
                    <a href="#" class="bds_weixin" data-cmd="weixin" title="Share to WeChat."></a>
                    <a href="#" class="bds_qzone" data-cmd="qzone" title="Sharing the QQ space"></a>
                    <a href="#" class="bds_sqq" data-cmd="sqq" title="Share QQ friends"></a>
                    <a href="#" class="bds_tsina" data-cmd="tsina" title="Share to sina weibo"></a>
                </div>
                <span class="user-operation i18n" name="sharder-copy-invitation-code" onClick="jsCopy();" >Copy invitation link</span>
            </li>

        </ul>
    </div>
    <div class="remarks">
        <span class="gantanhao" id="yaoqingtishi" onmousemove="yaoqingtishi(true)" onmouseout="yaoqingtishi(false)"></span>
        <span class="i18n" name="sharder-invitation-register-sale-reward"> Refer others to sign up Sharder and get airdrop. </span>
        <span class="i18n sharder-user-parent" name="sharder-user-parent">Invitation</span>${inviteSum!0}
    </div>
        <#assign amountSuoCang = ssSuocangaAmount!0>

        <#assign amountSuoCang2 = ssSuocangaAmount2!0>

        <#assign userAmount = amount!0>
        <#assign mention = mentionAmount!0>


        <#assign usableBalance = userAmount - amountSuoCang2 - mention/>
        <#if usableBalance lt 0>
            <#assign usableBalance = 0/>
        </#if>
    <div class="assets">
        <span class="title i18n" name="sharder-my-assets"> My Asset</span>
        <div class="total-assets">
            <span class="personal-total-assets i18n" name="sharsder-my-total-assets"> Total Asset</span>
            <span class="sharder-ss i18n" name="sharder-SS">Sharder Token (SS)</span>
            <span class="shardr-assets">${userAmount}</span>
            <div class="shardr-available-assets">
                <span class="i18n" name="sharder-ss_is">Withdrawal available</span><span class="color">${usableBalance}</span><span>SS</span>
                <img src="/r/cms/resource/sharders/img/index/wenhao.png"  class="personal-img"/>
                <div class="popup-suocang i18n" name="sharder-ss_is-text">The token amount that could be withdrew to your ETH wallet.</div>
            </div>
        </div>
        <div class="subscribe-crowd-funding">
            <div class="personal white-list applu-lock">
                <span class="explain"><span class="i18n" name="sharders-lock-title">Lock-up</span><img src="/r/cms/resource/sharders/img/index/wenhao.png" class="personal-img"/>
                    <div class="popup-subscribe i18n" name="sharders-lock-info-text">Once locked-up, all the Sharder (SS) tokens on this address will be frozen and unable to transfer during the lock-up period. If you only intend to lock-up part of your tokens, it is recommeded that you create another address and seperate the lock-up tokens from the rest. </div>
                </span>

                <#if userMemo?? && userMemo != '' && userMemo?eval.state>
                    <#if suoCangAddr?? && amountSuoCang gt 0>
                        <button class="shengqingsuocang" v-on:click="selectTmpl('suocang')">{{isOffText.off1}}</button>
                    <#else >
                        <#if amount gt 0 && usableBalance gt 0>
                            <button class="shengqingsuocang i18n" name="sharders-application-lock" onclick="shengqingsuocang()">Apply for lock-up</button>
                        <#else >
                            <button class="shengqingsuocang i18n" name="sharders-application-lock" style="background: #d2d2d2">Apply for lock-up</button>
                        </#if>
                    </#if>
                <#else >
                    <button class="shengqingsuocang i18n" name="sharders-application-lock" onclick="noKyc()">Apply for lock-up</button>
                </#if>
            </div>
            <div class="personal crowd-funding">
                <span class="explain"><span class="i18n" name="sharder-subscribe-income"> SS purchased </span><img src="/r/cms/resource/sharders/img/index/wenhao.png" class="personal-img"/>
                    <div class="popup-crowd-funding i18n" name="shader-storage-token">Sharder tokens that exchanged with other tokens, such as ETH and BTC.</div></span>
                <span class="currency i18n" name="sharder-SS-1">SS</span>
                <span class="quota">${crowd_amount!'0'}</span>
                <span class="details" v-on:click="selectTmpl('zhongchou')">{{isOffText.off2}}</span>
            </div>
            <div class="personal rebate">

                <span class="explain"><span class="i18n" name="dxjl">Reward</span>
                    <img src="/r/cms/resource/sharders/img/index/wenhao.png" class="personal-img"/>
                    <div class="poput-invitation i18n" name="sharder-rewarded-purchase-referred">We will keep airdropping those who significantly contribute to Sharder community.</div>
                </span>
                <span class="currency i18n" name="sharder-SS-1">SS</span>
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
        <#--<#if userMemo?? && userMemo != '' && userMemo?eval.state>-->
            <#--<#if mentionMoney??>-->
                <#--<button class="currency-ss kedian i18n" name="chakantibixiangqing" onclick="tibixq()">Withdraw details</button>-->
            <#--<#else >-->
                <#--<#if amount?? && user.purseAddress?? && usableBalance gt 0>-->
                    <#--<button class="currency-ss kedian i18n" name="sharder-subscribe-currency" onclick="tibiPopup()">Withdraw SS </button>-->
                <#--<#else >-->
                    <#--<button class="currency-ss i18n" name="sharder-subscribe-currency">Withdraw SS</button>-->
                <#--</#if>-->
            <#--</#if>-->
        <#--<#else >-->
            <#--<button class="currency-ss kedian i18n" name="sharder-subscribe-currency" onclick="noKyc()">Withdraw SS</button>-->
        <#--</#if>-->

        <#--<button class="currency-ss i18n" name="sharder-subscribe-currency">提币申请</button>-->

        <div class="withdraw-ss">
            <#if usableBalance gt 0 && user.purseAddress?? && user.purseAddress != '' && userMemo?? && userMemo != ''>
                <#if userMemo?eval.state || userMemo?eval.status == "SUCCESS">
                    <button class="currency-ss kedian i18n" name="sharder-subscribe-currency" onclick="mentionSSfunc()">Withdraw SS</button>
                <#else >
                <button class="currency-ss i18n" name="sharder-subscribe-currency">Withdraw SS</button>
                </#if>
            <#else >
                <button class="currency-ss i18n" name="sharder-subscribe-currency">Withdraw SS</button>
            </#if>
            <img src="/r/cms/resource/sharders/img/index/wenhao.png" class="personal-img tibi"/>
            <div class="poput-extract i18n" name="sharder-website-direct-investment">The contributions from channels other than crowdsale (smart contract) will be audited and the Sharder tokens will be delivered to your wallet by 0:00 UTC Mar. 18, 2018 (except for the lock-up).</div>
        </div>

    </div>

    <div class="edit-password">
        <img src="/r/cms/adf/adf/images/login-close-on.png" class="close_userPwd" v-on:click="winOpen()"/>
        <form method="post" id="userPwd">
            <h2 class="i18n title" name="sharder-user-edit-pwd">Reset password</h2>
            <#if !isDefaultPWD!false>
                <div class="oldPassWord">
                    <label class="i18n" name="sharder-old-password">old password</label><input type="password" id="oldPassWord" name="origPwd" v-on:input="verification()"/>
                </div>
            </#if>
            <div class="newPassWord1">
                <label class="i18n" name="sharder-new-password">new password</label><input type="password" id="newPassWord1" v-on:input="verification()" vld="{rangelength:[6,20]}" class="password" autocomplete="off" disableautocomplete/>
            </div>
            <div class="newPassWord2">
                <label class="i18n" name="sharder-again-password">again password</label><input type="password"  name="newPwd" id="newPassWord2" v-on:input="verification()"  vld="{rangelength:[6,20]}" autocomplete="off" disableautocomplete/>
            </div>

            <input type="button" name="the-next-step" class="i18n" value="Next" v-on:click="editPwd()"/>
        </form>
        <div class="userPwd-div">
            <h2 class="i18n" name="sharder-operation-result"> Result </h2>
            <span>{{Pwd.message}}{{Pwd.error}}</span>
        <#--<input type="button" value="重新修改" v-on:click="edit()"/>-->
        </div>
        <#--<span class="close" v-on:click="winOpen()" >X</span>-->
    </div>
    <div class="edit-wallet-addr">
        <img src="/r/cms/adf/adf/images/login-close-on.png" class="close_userPwd" v-on:click="winOpen('walletAddr')"/>
        <form method="post" id="userWalletAddr" class="userWalletAddr" onsubmit="return false">
            <#if !user.purseAddress??>
                    <h2 class="i18n" name="sharder-set-mention-token-address">Register receiving address</h2>
            <#else >
                   <h2 class="i18n" name="sharder-edit-mention-token-address">修改提币地址</h2>
            </#if>

            <#--<p class="walletAddr i18n" name="sharder-mention-token-address-attention">Note: once set, the SS withdrawal address can't be changed, please double check.</p>-->
            <#--<p class="walletAddr i18n" name="sharder-mention-token-address-attention">3月1日正式开放</p>-->
            <div class="input-div">
                <label class="i18n" name="sharder-set-address">Input address</label>
                <input type="text" id="oldWalletAddr" name="walletAddr" v-on:keyup="verificationAddr()" v-on:paste="verificationAddr()"/>
            </div>
            <div class="input-div">
                <label class="i18n" name="sharder-input-again" for="newWalletAddr">Input again</label>
                <input type="text" id="newWalletAddr"  v-on:keyup="verificationAddr()" v-on:paste="verificationAddr()"/>
            </div>
            <label  style="display: none;" for="newWalletAddr" class="error error1 i18n" generated="true" name="sharder-tishi-liangchisurubuyiyang">Address doesn't match, please double check!</label>
            <label  style="display: none;" for="newWalletAddr" class="error error2 i18n" generated="true" name="sharder-tishi-geshiyichang">Format error</label>
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
            <button class="i18n submit"  name="the-next-step" v-on:click="sendSaveWalletAddr()">Next</button>
            <#--<button class="i18n submit"  name="the-next-step" style="background-color: #999">提交</button>-->

        </form>
        <div class="userWalletAddr" id="walletAddr">
            <h2 class="i18n" name="sharder-operation-result">  Result </h2>
            <p class="walletAddr" v-if="saveWalletAddr.success" style="color: #0BA0D1">{{saveWalletAddr.instructions}}</p>
            <p class="walletAddr" v-else  style="color: red">{{saveWalletAddr.instructions}}</p>
        </div>
        <#--<span class="close" v-on:click="winOpen('walletAddr')" >X</span>-->
    </div>
</div>
    <#include "/WEB-INF/ftl/sharders/hint/hint.ftl" >
    <#--<#include "/WEB-INF/ftl/sharders/tibi.ftl"/>-->
    <#include "/WEB-INF/t/cms/www/sharder.org/pc/member/apply_lock.ftl"/>
    <#include "/WEB-INF/t/cms/www/sharder.org/pc/member/mentionSS.ftl" />
<div class="maker"></div>

<script type="text/x-template" id="apply-lock">
    <div class="apply-lock apply-lock-body">
        <span class="apply-lock i18n" data-name="suocang-details">Lock-up details</span>
        <table class="ss-table">
            <thead>
                <tr>
                    <th class="i18n" data-name="shengqingshijian">Application Time</th>
                    <th class="i18n" data-name="suocangshijian">Lock-up period (year)</th>
                    <th class="i18n" data-name="jiesuoshijian">Unlock time</th>
                    <th class="i18n" data-name="suocangdizi">Lock-up address</th>
                    <th class="i18n" data-name="suocangsuliang">Lock-up amount</th>
                    <th class="i18n" data-name="huodejiangli">Bonus obtained</th>
                    <th class="i18n" data-name="sharder-bill-status">Status</th>
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

                    <td>
                        <span v-if='dealBase.status== 4' class="i18n" data-name="has_been_issuing">
                            In issuing
                        </span>
                        <span v-else  class="i18n" data-name="not_issuing">
                            Not issuing
                        </span>
                    </td>
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
        <span class="subscribe-title i18n" data-name="dxjl">Reward</span>
        <table class="ss-table defalut">
            <thead>
            <tr>
                <#--<th class="i18" name="friend-regid">{{parentData.title.a}}</th>-->
                <th >{{parentData.title.b}}</th>
                <th >{{parentData.title.c}}</th>
                <th >{{parentData.title.d}}</th>
                <#--{{#if dealBase.awardType == 'TCC_CONVERT'}}-->
                <#--<td>explain</td>-->
                <#--{{/if}}-->
                <th data-name="beizhu" class="i18n">备注</th>
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

                <td><span  v-if="dealBase.awardType == 'TCC_CONVERT'">{{dealBase.memo}}</span></td>
            </tr>
            </tbody>
        </table>
        <p  v-if="parentData.showHint"><span style="color: red">{{parentData.title.e}}</span><a href="#member_center" >{{parentData.title.f}}</a></p>
    </div>
</script>
<script type="text/x-template" id="rebate-details">
    <div>
        <span data-name="sharder-subscribe-income" class="subscribe-title i18n">SS purchased </span>
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
                       Presale
                    </span>
                    <span v-if="dealBase.source == 'PhaseIII'" class="i18n" data-name="sharder-my-info-crowdsale">
                        Crowdsale
                    </span>
                </td>
                <#--<td v-if="dealBase.source == 'Store'" data-name="sharder-my-info-mall" class="i18n">商城</td>-->
                <#--<td v-else data-name="sharder-my-info-official-website" class="i18n">官网</td>-->
                <td data-name="sharder-my-info-official-website" class="i18n">Official website</td>
                <td>
                    <span v-if="dealBase.status == '1'" data-name="sharder-my-info-confirmed" class="i18n">Confirmed</span>
                    <span v-if="dealBase.status == '0'" data-name="sharder-my-info-to-confirmed" class="i18n">To be confirmed</span>
                    <#--<span v-if="dealBase.status == '0'">未支付</span>-->
                    <span v-if="dealBase.status == '-1'" data-name="sharder-my-info-invalid" class="i18n">Invalid</span>

                    <span v-if="dealBase.status == '3'" data-name="yituihuan" class="i18n">Refuned</span>
                    <#--<span v-if="dealBase.status == '0'" data-name="sharder-my-info-referral-bonus" class="i18n">已发送奖励</span>-->
                </td>
                <td>
                    <span v-if="dealBase.source != 'Store'">
                        {{dealBase.payAmount || '0'}}
                        <span v-if="dealBase.payType == 'SYSTEM'" data-name="sharder-my-info-welfare" class="i18n">welfare</span>
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
                    notesDAta:'',//提币记录数据
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
                        closeMention();//关闭提币记录详情

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
                            i:$("span[name='sharder-bill-status']:eq(0)").text(),
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
                        var data = pageParams(pc.currentPage,pc.countOfCurrentPage);
                        if(_t == "fandian"){
//                            requestUrl = "/user_center/invite_awaer.ss";
                            requestUrl = "/user_center/bills.ss";
                            data +="&type=JL"
                        }else if(_t == "zhongchou"){
                            //备用
                            requestUrl = "/user_center/zhong_chou.ss";
                        }else if(_t == "suocang"){
                            //锁仓
                            requestUrl = "/userbill/suo_cang_record.ss";
                        }else{

                        }

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
                            var url = "/user_center/save/wallet/address.ss";
                            var data= $("#userWalletAddr").serialize();
                            commAjax(url,"post",data,function (result) {
                                layer.close(setAddrload);
                                console.info(result);
                                if(result.success){
                                    layer.msg($("span[name='sztbdzcg']").text());
                                    pc.winOpen('walletAddr');
                                    location.reload();
                                    return;
                                }

                                if(result.code == "INVALID_FORMAT"){
                                    layer.msg($("labal[name='sharder-tishi-geshiyichang']").text());
                                }else if(result.code == "SET_NUMBER_OVER"){
                                    layer.msg($("span[name='sharder-set-addr-number-over']").text());
                                }else {
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
                                            location.reload();
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
    var _tips1 = null;
function yaoqingtishi(_t){
    if(_t){
        if( _tips1 == null){
            _tips1 = layer.tips($("span[name='yaoqingtishi']").html(), '#yaoqingtishi', {
                tips: [1, '#3595CC'],
                skin:'huanhuangwenben'
            });
        }

    }else{
        _tips1 = null;
        layer.close(_tips1);
    }
}
    function sharderKycShuoming(_t){
        if(_t){
            if(_tips1 == null){
                _tips1 = layer.tips($("span[name='sharder-kyc-shuoming']").html(), '#sharder_shimingrenzheng_info', {
                    tips: [1, '#3595CC'],
                    skin:'sharder-kyc-shuoming'
                });
            }else{
//                layer.close(_tips1);
            }
        }else{
            _tips1 = null;
            layer.close(_tips1);
        }

    }


    function noKyc() {
        if(i18nLanguage == 'zh-CN'){
            layer.msg("请先完成实名认证");
        }else{
            layer.msg("Please complete the real-name authentication first.");
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