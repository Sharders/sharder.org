<@layout.htmlHead    pagename="center">
<link rel="stylesheet" href="/r/cms/resource/sharders/css/user_center.css" />
<script src="/r/cms/resource/sharders/layui/lay/modules/layer.js" type="text/javascript" charset="utf-8"></script>

<script src="https://bdimg.share.baidu.com/static/api/js/share.js?v=89860593.js?cdnversion=' + ~(-new Date() / 36e5)" type="text/javascript" charset="utf-8"></script>
<style>
    .bdsharebuttonbox{
        position: absolute;
        right: 90px;
        bottom: -1px;
    }
</style>
</@layout.htmlHead>

<@layout.htmlBody>


<!-- JiaThis Button BEGIN -->

<!-- JiaThis Button END -->
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
        <div style="text-align: center"><img src="/r/cms/resource/sharders/img/index/subscribe_overPC.jpg" id="subscribe-over"></div>
    <div class="user">
        <span class="title i18n" name="sharder-user-information">账户信息</span>
        <ul>
            <li><span class="user-title i18n" name="sharder-sign-in-username">用户名:</span><span class="user-value"><#if user ??>${user.username!}</#if></span><span
                    class="user-operation" ></span></li>
            <li><span class="user-title i18n" name="sharder-account-number">账号:</span><span class="user-value">${acconut!}</span></li>
            <li><span class="user-title i18n" name="sharder-user-uid-code">UID:</span><span class="user-value">${inviterId!}</span></li>
            <li><span class="user-title i18n" name="sharder-user-sgin-pwd">登录密码:</span><span class="user-value">******</span><span class="user-operation i18n" name="sharder-user-edit-pwd" v-on:click="winOpen()">修改密码</span></li>
            <li>
                <span class="user-title i18n" name="sharder-user-invitation-link">专属邀请链接:</span><span id="contents" >${invitePage!}?inviterId=${inviterId!}</span>


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
    <div class="remarks i18n" name="sharder-invitation-register-sale-reward">如果所邀请好友参与早鸟轮或众售轮投资，邀请人可获得好友认购SS数量*5%的返点，该返点无上限。</div>
    <div class="assets">
        <span class="title i18n" name="sharder-my-assets">我的资产</span>
        <div class="total-assets">
            <span class="personal-total-assets i18n" name="sharsder-my-total-assets">总资产</span>
            <span class="sharder-ss i18n" name="sharder-SS">豆匣(SS)</span>
            <span class="shardr-assets">${amount!"0"}</span>
        </div>
        <div class="subscribe-crowd-funding">
            <div class="personal white-list">
                <span class="explain"><span class="i18n" name="sharder-subscribe-quota">白名单额度</span><img src="/r/cms/resource/sharders/img/index/wenhao.png" class="personal-img"/>
                    <div class="popup-subscribe i18n" name="sharder-subscribe-whitelist">好友通过您分享的专属链接或邀请码注册，每注册成功1人会增加1个ETH的白名单额度，单个账户额度上限为100ETH。白名单额度在早鸟轮认购豆匣(SS)时，系统会自动赠送20%的豆匣(SS)。</div></span>
                <span class="currency">ETH</span>
                <span class="quota used">${maxSubscribe!"0"}</span>
                <span class="alreadyUsed"><span class="i18n" name="sharder-subscribe-income">已使用额度 :</span> ${nowSubscribe!"0"}ETH</span>
            <#--<span class="details" v-on:click="isLuck(1)">{{retruenTExt(isOff1)}}</span>-->
            <#--<span class="details" v-on:click="selectTmpl('fandian')">{{retruenTExt(isOff3)}}</span>-->
            </div>
            <div class="personal crowd-funding">
                <span class="explain"><span class="i18n" name="sharder-subscribe-income">众售所得</span><img src="/r/cms/resource/sharders/img/index/wenhao.png" class="personal-img"/>
                    <div class="popup-crowd-funding i18n" name="shader-storage-token">获得的豆匣(SS)数量。</div></span>
                <span class="currency i18n" name="sharder-SS-1">豆匣(SS)</span>
                <span class="quota">${crowd_amount!'0'}</span>
                <span class="details" v-on:click="selectTmpl('zhongchou')">{{retruenTExts(isOff2)}}</span>
            </div>
            <div class="personal rebate">

                <span class="explain"><span class="i18n" name="sharder-subscribe-rebate">邀请奖励</span><img src="/r/cms/resource/sharders/img/index/wenhao.png" class="personal-img"/>
                    <div class="poput-invitation i18n" name="sharder-rewarded-purchase-referred">邀请好友成功参与众售，您将获得其认购豆匣（SS）总额的5%作为邀请奖励。</div></span>
                <span class="currency i18n" name="sharder-SS-1">豆匣(SS)</span>
                <span class="quota">${invite_rewards_amount!'0'}</span>
            <#--<span class="details" >{{retruenTExt(isOff3)}}</span>-->
            <#--<span class="details" v-on:click="isLuck(3)">{{retruenTExt(isOff3)}}</span>-->
                <span class="details" v-on:click="selectTmpl('fandian')">{{retruenTExt(isOff3)}}</span>
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
        <button class="currency-ss i18n" name="sharder-subscribe-currency">提币</button>
        <img src="/r/cms/resource/sharders/img/index/wenhao.png" class="personal-img"/>
        <div class="poput-extract i18n" name="sharder-website-direct-investment">通过官网直投的，将于公开众售结束后开始发放豆匣SS，七个工作日内发放到您提供的ETH钱包地址（锁仓者除外）。</div>

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
        <form method="post" id="userPwd">
            <h2 class="i18n" name="sharder-user-edit-pwd">修改密码</h2>
            <div>
                <label class="i18n" name="sharder-old-password">请输入旧密码</label> <input type="password" id="oldPassWord" name="origPwd" v-on:keyup="verification()"/>
            </div>
            <div>
                <label class="i18n" name="sharder-new-password">请输入新密码</label><input type="password" id="newPassWord1" v-on:keyup="verification()"/>
            </div>
            <div>
                <label class="i18n" name="sharder-again-password">再次输入密码</label><input type="password"  name="newPwd" id="newPassWord2" v-on:keyup="verification()"/>
            </div>

            <input type="button" name="the-next-step" class="i18n" value="提交" v-on:click="editPwd()"/>
        </form>
        <div class="userPwd-div">
            <h2 class="i18n" name="sharder-operation-result">操作结果</h2>
            <span>{{Pwd.message}}{{Pwd.error}}</span>
        <#--<input type="button" value="重新修改" v-on:click="edit()"/>-->
        </div>
        <span class="close" v-on:click="winOpen()" >X</span>
    </div>
</div>

    <#include "/WEB-INF/ftl/sharders/hint/hint.ftl" >

<div class="maker"></div>

<script type="text/x-template" id="details-white-list">
    <div class="details-white-list subscribe-body">
        <p class="subscribe-head"><span class="subscribe-table i18n" name="sharder-registrant">注册人</span><span class="subscribe-table i18n" name="sharder-registrant-time">注册时间</span><span class="subscribe-table i18n" name="sharder-white-list-share">白名单份额</span></p>
        <ul class="subscribe-ul">
            <li class="subscribe-li" v-for="pd in parentData.dataList"><span class="subscribe-table">{{pd.id}}</span><span class="subscribe-table">{{pd.createDate}}</span><span class="subscribe-table">1TEH</span></li>
            <li class="subscribe-li" v-if="parentData.dataList == ''"><span>No data is found！！！</span></li>
        </ul>
    </div>
</script>
<script type="text/x-template" id="public-information">
    <div>
        <span class="subscribe-title i18n" data-name="friend-invite-reward">邀请奖励</span>
        <table class="ss-table defalut">
            <thead>
            <tr>
                <th class="i18" name="friend-regid">{{parentData.title.a}}</th>
                <th class="i18" >{{parentData.title.b}}</th>
                <th class="i18" name="friend-whiteQuotal">{{parentData.title.c}}</th>
                <th class="i18" name="friend-backQuotal">{{parentData.title.d}}</th>
            </tr>
            </thead>
            <tbody>
            <tr v-for="dealBase in parentData.dealBases.list" >
                <td>{{dealBase.userId}}</td>
                <td>{{dealBase.registerDate}}</td>
                <td>{{dealBase.whitelistsQuota==(''||null)?'-':dealBase.whitelistsQuota}}</td>
                <td>{{dealBase.dealBase==(''||null)?'-':dealBase.dealBase}}</td>
            </tr>
            </tbody>
        </table>
        <p  v-if="parentData.showHint"><span style="color: red">{{parentData.title.e}}</span><a href="#member_center" >{{parentData.title.f}}</a></p>
    </div>
</script>
<script type="text/x-template" id="rebate-details">
    <div>
        <span class="subscribe-title i18n" data-name="friend-invite-reward">邀请奖励</span>
        <table class="ss-table defalut">
            <thead>
            <tr>
                <th class="i18" name="friend-regid">{{parentData.title2.a}}</th>
                <th class="i18" >{{parentData.title2.b}}</th>
                <th class="i18" name="friend-whiteQuotal">{{parentData.title2.c}}</th>
                <th class="i18" name="friend-whiteQuotal">{{parentData.title2.i}}</th>
                <th class="i18" name="friend-backQuotal">{{parentData.title2.d}}</th>
                <th class="i18" name="friend-backQuotal">{{parentData.title2.e}}</th>
                <th class="i18" name="friend-backQuotal">{{parentData.title2.f}}</th>
                <th class="i18" name="friend-backQuotal">{{parentData.title2.g}}</th>
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
                <td v-if="dealBase.source == 'Store'" data-name="sharder-my-info-mall" class="i18n">商城</td>
                <td v-else data-name="sharder-my-info-official-website" class="i18n">官网</td>
                <td>
                    <span v-if="dealBase.status == '1'" data-name="sharder-my-info-confirmed" class="i18n">已确认</span>
                    <span v-if="dealBase.status == '0'" data-name="sharder-my-info-to-confirmed" class="i18n">待审核</span>
                    <#--<span v-if="dealBase.status == '0'">未支付</span>-->
                    <span v-if="dealBase.status == '-1'" data-name="sharder-my-info-invalid" class="i18n">失效</span>
                    <#--<span v-if="dealBase.status == '0'" data-name="sharder-my-info-referral-bonus" class="i18n">已发送奖励</span>-->
                </td>
                <td>
                    <#--{{dealBase.payAmount || '0'}}-->
                    <#--<span v-if="dealBase.payType == 'SYSTEM'" data-name="sharder-my-info-welfare" class="i18n">赠送</span><span v-else>{{dealBase.payType}}</span>-->
                </td>
                <td>{{dealBase.useWhitelistsQuota || '0'}}</td>
                <td>{{dealBase.whitelistAwardAmount || '0'}}</td>
                <td>{{dealBase.amount || '0'}}</td>
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
                },
                methods: {
                    //选择要显示的数据
                    selectTmpl:function(_t){
                        $(".personal.crowd-funding").css("border-bottom","0px");
                        $(".personal.rebate").css("border-bottom","0px");
                        pc.dealBases = "";
                        pc.title={a:$("span[name='sharder-registrant-uid']").text(),
                            b:$("span[name='sharder-registrant-time']").text(),
                            c:$("div>span[name='sharder-subscribe-quota']").text(),
                            d:$("span[name='sharder-deal-base']").text(),
                            e:$("span[name='sharder-details-benefits']").text(),
                            f:$("span[name='sharder-details-immediately']").text()};
                        pc.title2={a:$("span[name='sharder-participation-time']").text(),
                            b:$("span[name='sharder-stage-participation']").text(),
                            c:$("span[name='sharder-source']").text(),
                            i:$("span[name='sharder-bill-status']").text(),
                            d:$("span[name='sahrder-support-quantity']").text(),
                            e:$("span[name='sharder-use-white-list']").text(),
                            f:$("span[name='sharder-white-list-award']").text(),
                            g:$("span[name='sharder-get-ss']").text()
                        }
                        //设置选中的模板
                        pc.template = _t;
                        if(_t == "fandian"){
                            pc.isOff3 = pc.isOff3 ? false : true;
                            pc.isOff2 = true;
                            if(pc.isOff3){
                                pc.template="";
                            }
                        }
                        if(_t == "zhongchou"){
                            pc.isOff2 = pc.isOff2 ? false : true;
                            pc.isOff3 = true;
                            if(pc.isOff2){
                                pc.template="";
                            }
                        }
                        if(!pc.isShowDetail()){
                            return;
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
                            requestUrl = "/user_center/invite_awaer.ss";
                        }else if(_t == "zhongchou"){
                            //备用
                            requestUrl = "/user_center/zhong_chou.ss";
                        }else{

                        }
                        var data = pageParams(pc.currentPage,pc.countOfCurrentPage);
                        commAjax(requestUrl,"get",data,pc.loadDealbaseResult);
                        setTimeout(function () {
                            layer.closeAll('loading');
                        },20000);
                    },
                    loadDealbaseResult:function (_result) {
                        console.log(_result);
                        layer.closeAll('loading');
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
                    winOpen:function () {
                        pc.isOpenWindos = ! pc.isOpenWindos;
                        window.console.info(pc.isOpenWindos);
                        if(pc.isOpenWindos){
                            $(".maker").css("display","none");
                            $(".edit-password").css("display","none");
                        }else {
                            $(".maker").css("display","block");
                            $(".edit-password").css("display","block");
                        }
                        pc.edit();
                    },
                    edit:function () {
                        $("input#oldPassWord").val('');
                        $("input#newPassWord1").val('');
                        $("input#newPassWord2").val('');
                        $('#userPwd').css("display","block");
                        $('.userPwd-div').css("display","none");
                    }
                    ,verification:function () {
                        var input1 = $("#oldPassWord");
                        var input2 = $("#newPassWord1");
                        var input3 = $("#newPassWord2");
                        input1.css("box-shadow","");
                        input2.css("box-shadow","");
                        input3.css("box-shadow","");
                        if(input1.val() == ''||input2.val()== '' || input3.val() == ''){
                            pc.isSubmit = false;
                        }
                        if(input1.val() == ''){
                            input1.css("box-shadow","0px 0px 6px red");
                        }
                        if(input2.val() == input3.val()){
                            pc.isSubmit = true;
                        }else{
                            input2.css("box-shadow","0px 0px 6px red");
                            input3.css("box-shadow","0px 0px 6px red");
                            pc.isSubmit = false;
                        }
                    },

                    editPwd:function () {
                        if(pc.isSubmit){
                            $.ajax({
                                type: "post",
                                url:"/passWord/edit.ss",
                                data:$('#userPwd').serialize(),
                                dataType: "json",
                                success: function(data) {
                                    console.info(data);
                                    pc.Pwd = data;
                                    $('#userPwd').css("display","none");
                                    $('.userPwd-div').css("display","block");
                                }
                            });
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
                    isShowDetail:function () {
                        //全部都关闭了
                        if(pc.isOff2 && pc.isOff3){
                            pc.showDetail =false;
                            return false;
                        }else{
                            pc.showDetail =  true;
                            return true;
                        }
                    }
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
            var  language = localStorage.getItem("userLanguage");
            if(language == "en"){
                $("#subscribe-over").attr("src","/r/cms/resource/sharders/img/index/subscribe_overPC_en.jpg");
            }
        }
    },100);



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