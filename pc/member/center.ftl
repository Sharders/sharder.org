<@layout.htmlHead    pagename="center">
<link rel="stylesheet" href="/r/cms/resource/sharders/css/user_center.css" />
<script src="/r/cms/resource/sharders/layui/lay/modules/layer.js" type="text/javascript" charset="utf-8"></script>
</@layout.htmlHead>

<@layout.htmlBody>


<!-- JiaThis Button BEGIN -->

<!-- JiaThis Button END -->




<div class="container ss-theme-background-color">
    <div class="subscribe">
        <div class="subscribe-share">
            <span class="subscribe-make i18n" name="sharder-subscribe-share">白名单份额预约</span>
            <span class="subscribe-time i18n" name="sharder-subscribe-start-end">1月18日9:00——1月28日23:59</span>
            <div class="speed-progress">
						<span class="progress">
							<span class="line" style="width: ${subscribeNumber/10!}%"></span>
						</span>
                <span class="total-subscribe i18n" name="sharder-subscribe-total-share">总份额1000ETH(或等价的BTC,LTC)</span>
                <span class="subscribe-proportion">${subscribeNumber/10!}%</span>
            </div>
            <ul class="invitation">
                <p style="text-align: center" class="i18n" name="subscribe-list">白名单额度排名</p>
                <li style="<#if subscribe0.maxSubscribe == 0 >display:none;</#if> "><span class="invitation-name"><span class="i18n" name="sharder-account-number">账户：</span><#if userName0 ??>${userName0!}</#if></span><span
                        class="invitation-quota"><span class="i18n" name="sharder-obtain-amount">获得额度:</span><#if subscribe0 ??>${subscribe0.maxSubscribe!}</#if>ETH</span></li>
                <li style="<#if subscribe1.maxSubscribe == 0 >display:none;</#if>" ><span class="invitation-name"><span class="i18n" name="sharder-account-number">账户：</span><#if userName1 ??>${userName1!}</#if></span><span
                        class="invitation-quota"><span class="i18n" name="sharder-obtain-amount">获得额度:</span><#if subscribe1 ??>${subscribe1.maxSubscribe!}</#if>ETH</span></li>
                <li style="<#if subscribe2.maxSubscribe == 0 >display:none;</#if> "><span class="invitation-name"><span class="i18n" name="sharder-account-number">账户：</span><#if userName2 ??>${userName2!}</#if></span><span
                        class="invitation-quota"><span class="i18n" name="sharder-obtain-amount">获得额度:</span><#if subscribe2 ??>${subscribe2.maxSubscribe!}</#if>ETH</span></li>
            </ul>
            <#if !nowSubscribe ??> <button class="ss-main-btn i18n" title="点击成为白名单" id="applyFor" name="sharder-become-subscribe">成为白名单</button></#if>
        </div>

        <div class="subscribe-rule">
            <#--<span class="subscribe-detailed i18n" name="sharder-subscribe-fine">白名单解释</span>-->
            <span class="title i18n" name="sharder-subscribe-1">白名单说明</span>
            <p class="text i18n" name="sharder-subscribe-2">
                在早鸟轮正式开始前成功注册账号都拥有1个ETH的基础白名单额度。
            </p>
            <span class="title i18n" name="sharder-subscribe-3">白名单额度</span>
            <p class="text i18n" name="sharder-subscribe-4">
                好友通过您分享的专属链接或邀请码注册，每注册成功1人会增加1个ETH的白名单额度。单个账户额度上限为100ETH。
            </p>
            <span class="title i18n" name="sharder-subscribe-5">白名单奖励:</span>
            <p class="text i18n" name="sharder-subscribe-6">
                早鸟轮认购豆匣(SS)时，系统会自动赠送20%的豆匣(SS)。
            </p>
            <p class="text i18n" name="sharder-subscribe-7">
                如拥有1ETH白名单额度，认购总额为3ETH，则换币的计算公式为:1*ETH锁定价/SS单价*(1+20%)+2*ETH锁定价/SS单价。
            </p>
        </div>
        <div class="user-subscribe" style="text-align: center"><span  style="float: left"><span class="i18n" name="sharder-user-subscribe-quota">您当前的白名单额度 :</span>${maxSubscribe!}ETH</span><a style="border-bottom: 1px solid;color: rgb(214, 203, 203);cursor: pointer;margin-left: -168px;" class="i18n" name="sharder-early-bird">参与早鸟轮</a></div>
    </div>
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
                <div class="jiathis_style_32x32">
                    <a class="jiathis_button_weixin"></a>
                    <a class="jiathis_button_cqq"></a>
                    <a class="jiathis_button_qzone"></a>
                </div>
                <span class="user-operation i18n" name="sharder-copy-invitation-code" onClick="jsCopy();" >复制邀请码</span>
            </li>

        </ul>
    </div>
    <div class="remarks i18n" name="sharder-subscribe-text5">如果所邀请好友参与早鸟轮或众筹轮投资，邀请人可获得好友认购SS数量*5%的返点，该返点无上限。</div>
    <div class="assets">
        <span class="title i18n" name="sharder-my-assets">我的资产</span>
        <div class="total-assets">
            <span class="personal-total-assets i18n" name="sharsder-my-total-assets">总资产</span>
            <span class="sharder-ss i18n" name="sharder-SS">豆匣(SS)</span>
            <span class="shardr-assets">0</span>
        </div>
        <div class="subscribe-crowd-funding">
            <div class="personal white-list">
                <span class="explain"><span class="i18n" name="sharder-subscribe-quota">白名单额度</span><img src="/r/cms/resource/sharders/img/index/wenhao.png" class="personal-img"/>
                    <div class="popup-subscribe i18n" name="sharder-subscribe-text1">邀请好友注册成功将会获得白名单额度，每人每天最多可获得10ETH或等值其他代币(仅适用于早鸟)。众筹期间最多可获得100ETH或等值其他代币额度。白名单额度在早鸟期认购时将额外获得20%SS奖励。</div></span>
                <span class="currency">ETH</span>
                <span class="quota used">${maxSubscribe!}</span>
                <span class="alreadyUsed"><span class="i18n" name="sharder-user-already-quota">已使用额度 :</span> ${nowSubscribe!}ETH</span>
                <span class="details" v-on:click="isLuck(1)">{{retruenTExt(isOff1)}}</span>
            </div>
            <div class="personal crowd-funding">
                <span class="explain"><span class="i18n" name="sharder-subscribe-income">众筹所得</span><img src="/r/cms/resource/sharders/img/index/wenhao.png" class="personal-img"/>
                    <div class="popup-crowd-funding i18n" name="sharder-subscribe-text2">获得的豆匣（SS）数量。</div></span>
                <span class="currency i18n" name="sharder-SS">豆匣(SS)</span>
                <span class="quota">0</span>
                <#--<span class="details" v-on:click="isLuck(2)">{{isOff2 ? "查看详情" : "关闭详情"}}</span>-->
                <span class="details" >{{retruenTExt(isOff2)}}</span>
            </div>
            <div class="personal rebate">
                <span class="explain"><span class="i18n" name="sharder-subscribe-rebate">返点奖励</span><img src="/r/cms/resource/sharders/img/index/wenhao.png" class="personal-img"/>
                    <div class="poput-invitation i18n" name="sharder-subscribe-text3">邀请好友成功参与众筹，您将获得其投资获得豆匣（SS）总额的5%作为返点奖励。</div></span>
                <span class="currency i18n" name="sharder-SS">豆匣 ( SS )</span>
                <span class="quota">0</span>
                <span class="details" >{{retruenTExt(isOff3)}}</span>
                <#--<span class="details" v-on:click="isLuck(3)">{{isOff3 ? "查看详情" : "关闭详情"}}</span>-->
            </div>
        </div>
        <div class="subscribe-list">
            <span class="subscribe-title">{{nameText(name)}}</span>
            <component :is="template"></component>
            <div class="paging">
                <ul class="paging-ul">
                    <li class="paging-li" v-on:click="pagingQuery(name,currentPage-1)">⇇</li>
                    <li class="paging-li qqq" v-on:click="pagingQuery(name,currentPage >= totalPage-6 ? totalPage-6 : currentPage)">{{currentPage >= totalPage-6 ? totalPage-6 : currentPage}}</li>
                    <li class="paging-li" v-on:click="pagingQuery(name,currentPage+1 >= totalPage-5 ? totalPage-5 : currentPage+1)">{{currentPage+1 >= totalPage-5 ? totalPage-5 : currentPage+1}}</li>
                    <li class="paging-li" v-on:click="pagingQuery(name,currentPage+2 >= totalPage-4 ? totalPage-4 : currentPage+2)">{{currentPage+2 >= totalPage-4 ? totalPage-4 : currentPage+2}}</li>
                    <li class="paging-li" v-on:click="pagingQuery(name,currentPage+3 >= totalPage-3 ? totalPage-3 : currentPage+3)">{{currentPage+3 >= totalPage-3 ? totalPage-3 : currentPage+3}}</li>
                    <li class="paging-li" v-on:click="pagingQuery(name,currentPage+4 >= totalPage-2 ? totalPage-2 : currentPage+4)">{{currentPage+4 >= totalPage-2 ? totalPage-2 : currentPage+4}}</li>
                    <li class="paging-li" v-on:click="pagingQuery(name,currentPage+5 >= totalPage-1 ? totalPage-1 : currentPage+5)">{{currentPage+5 >= totalPage-1 ? totalPage-1 : currentPage+5}}</li>
                    <li class="paging-li">...</li>
                    <li class="paging-li" v-on:click="pagingQuery(name,totalPage)">{{totalPage}}</li>
                    <li class="paging-li" v-on:click="pagingQuery(name,currentPage+1)">⇉</li>
                </ul>
            </div>
        </div>
        <button class="currency-ss i18n" name="sharder-subscribe-currency">提币</button>
        <img src="/r/cms/resource/sharders/img/index/wenhao.png" class="personal-img"/>
        <div class="poput-extract i18n" name="sharder-subscribe-text4">通过官网直投的，将于公开众筹结束后开始提币，三天内自动兑换到您提供的ETH钱包地址（锁仓者除外）。</div>

    </div>
    <div class="rule">
        <p class="text">
            <span class="title i18n" name="sharder-subscribe-8">返点奖励</span><span class="i18n" name="sharder-subscribe-9">邀请的好友参与早鸟投资后，您可获得好友认购SS数量*5%的返点，返点无上限。</span>
        </p>
        <p class="text">
            <span class="title i18n" name="sharder-subscribe-10">空投红利</span><span class="i18n" name="sharder-subscribe-11">成功邀请10个以上好友能享受特殊空投红利，具体数量以官网和社区公告为准，符合要求者系统会自动空投到您的豆匣账户。</span>
        </p>
    </div>
    <div class="edit-password">
            <form method="post" id="userPwd">
                <h2 class="i18n" name="sharder-user-edit-pwd">修改密码</h2>
                <div>
                    <label class="i18n" name="user-text-1">请输入旧密码</label> <input type="password" id="oldPassWord" name="origPwd" v-on:keyup="verification()"/>
                </div>
               <div>
                   <label class="i18n" name="user-text-2">请输入新密码</label><input type="password" id="newPassWord1" v-on:keyup="verification()"/>
               </div>
                <div>
                    <label class="i18n" name="user-text-3">再次输入密码</label><input type="password"  name="newPwd" id="newPassWord2" v-on:keyup="verification()"/>
                </div>

                <input type="button" value="提交" v-on:click="editPwd()"/>
            </form>
        <div class="userPwd-div">
            <h2 class="i18n" name="sharder-operation-result">操作结果</h2>
            <span>{{Pwd.message}}{{Pwd.error}}</span>
            <#--<input type="button" value="重新修改" v-on:click="edit()"/>-->
        </div>
        <span class="close" v-on:click="winOpen()" >X</span>
    </div>
</div>
<div style="display: none">
    <span id="chakan" class="i18n" name="user-test-text1">查看详情</span>
    <span id="guanbi" class="i18n" name="user-test-text2">关闭详情</span>
    <span id="subscribe" class="i18n" name="user-test-text3">白名单额度详情</span>
    <span id="crodw-funding" class="i18n" name="user-test-text4">众筹所得详情</span>
    <span id="fandian" class="i18n" name="user-test-text5">返点奖励详情</span>
    <span id="erro" class="i18n" name="user-test-text6">未知错误</span>
</div>
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
    <div class="public-information subscribe-body">
        <p class="subscribe-head"><span class="subscribe-table i18n" name="sharder-registrant-uid">注册人UID</span><span class="subscribe-table i18n" name="sharder-registrant-time">注册时间</span><span class="subscribe-table i18n" name="sharder-public-access">众筹获得</span><span class="subscribe-table special i18n" name="sharder-deal-base">返点奖励(20%)</span></p>
        <ul class="subscribe-ul">
            <li class="subscribe-li"><span class="subscribe-table">yc0000001</span><span class="subscribe-table">2018年1月8日 10:00</span><span class="subscribe-table">20SS</span><span class="subscribe-table special">20SS</span></li>
            <li class="subscribe-li"><span class="subscribe-table">yc0000001</span><span class="subscribe-table">2018年1月8日 10:00</span><span class="subscribe-table">20SS</span><span class="subscribe-table special">20SS</span></li>
            <li class="subscribe-li"><span class="subscribe-table">yc0000001</span><span class="subscribe-table">2018年1月8日 10:00</span><span class="subscribe-table">20SS</span><span class="subscribe-table special">20SS</span></li>
            <li class="subscribe-li"><span class="subscribe-table">yc0000001</span><span class="subscribe-table">2018年1月8日 10:00</span><span class="subscribe-table">20SS</span><span class="subscribe-table special">20SS</span></li>
            <li class="subscribe-li"><span class="subscribe-table">yc0000001</span><span class="subscribe-table">2018年1月8日 10:00</span><span class="subscribe-table">20SS</span><span class="subscribe-table special">20SS</span></li>
        </ul>
    </div>
</script>
<script type="text/x-template" id="rebate-details">
    <div class="rebate-details subscribe-body">
        <p class="subscribe-head"><span class="subscribe-table i18n" name="sharder-participation-time">参与时间</span><span class="subscribe-table i18n" name="sharder-stage-participation">参与阶段</span><span class="subscribe-table i18n" name="sharder-source">来源</span><span class="subscribe-table special i18n" name="sahrder-support-quantity">支持数量</span><span class="subscribe-table i18n" name="sharder-obtain-token">获得代币(SS)</span><span class="subscribe-table i18n" name="sharder-use-white-list">使用白名单额度</span><span class="subscribe-table i18n" name="sharder-white-list-award">白名单奖励</span></p>
        <ul class="subscribe-ul">
            <li class="subscribe-li"><span class="subscribe-table">2018-01-23 09:20</span><span class="subscribe-table">早鸟轮</span><span class="subscribe-table">官网</span><span class="subscribe-table special">1000BTC</span><span class="subscribe-table">1000BTC</span><span class="subscribe-table">10ETH</span><span class="subscribe-table">200SS</span></li>
            <li class="subscribe-li"><span class="subscribe-table">2018-01-23 09:20</span><span class="subscribe-table">早鸟轮</span><span class="subscribe-table">官网</span><span class="subscribe-table special">1000BTC</span><span class="subscribe-table">1000BTC</span><span class="subscribe-table">10ETH</span><span class="subscribe-table">200SS</span></li>
            <li class="subscribe-li"><span class="subscribe-table">2018-01-23 09:20</span><span class="subscribe-table">早鸟轮</span><span class="subscribe-table">官网</span><span class="subscribe-table special">1000BTC</span><span class="subscribe-table">1000BTC</span><span class="subscribe-table">10ETH</span><span class="subscribe-table">200SS</span></li>
            <li class="subscribe-li"><span class="subscribe-table">2018-01-23 09:20</span><span class="subscribe-table">早鸟轮</span><span class="subscribe-table">官网</span><span class="subscribe-table special">1000BTC</span><span class="subscribe-table">1000BTC</span><span class="subscribe-table">10ETH</span><span class="subscribe-table">200SS</span></li>
            <li class="subscribe-li"><span class="subscribe-table">2018-01-23 09:20</span><span class="subscribe-table">早鸟轮</span><span class="subscribe-table">官网</span><span class="subscribe-table special">1000BTC</span><span class="subscribe-table">1000BTC</span><span class="subscribe-table">10ETH</span><span class="subscribe-table">200SS</span></li>
            <li class="subscribe-li"><span class="subscribe-table">2018-01-23 09:20</span><span class="subscribe-table">早鸟轮</span><span class="subscribe-table">官网</span><span class="subscribe-table special">1000BTC</span><span class="subscribe-table">1000BTC</span><span class="subscribe-table">10ETH</span><span class="subscribe-table">200SS</span></li>
        </ul>
    </div>
</script>
<script>
    function jsCopy() {
        var text = document.getElementById("contents").innerText;
        var input = document.createElement("input");
        input.value = text;
        document.body.appendChild(input);
        input.select();
        document.execCommand("Copy");
        input.remove();
        layer.msg("复制成功");
    }
    var pc = new Vue({
        el: ".ss-theme-background-color",
        data: {
            currentPage: 1,
            totalPage: 7,
            isOff1:true,
            isOff2:true,
            isOff3:true,
            template:"",
            dataList:"",
            name:"",
            id:${user.id!},
            number:10,
            isOpenWindos:true,
            isSubmit:false,
            Pwd:'',
        },
        methods: {
            nameText:function (name) {
                if(name == "baimingdan"){
                    return $("#subscribe").text();
                }else if(name == "zhongchou"){
                    return $("#crodw-funding").text();
                }else if(name == "fandian"){
                    return $("#fandian").text();
                }else{
                    return $("#erro").text();
                }
            },
            pagingQuery:function (name,page) {
                if(page <= 0 || page > pc.totalPage || page == pc.currentPage){return;}
                pc.currentPage = page;
                pc.dataRequest(name,pc.currentPage);
                console.info(pc.currentPage);
                pc.myStyle();
            },
            isLuck: function(num) {
                var subs1 = document.getElementsByClassName("white-list");
                var subs2 = document.getElementsByClassName("crowd-funding");
                var subs3 = document.getElementsByClassName("rebate");
                subs1[0].style.borderBottom = "0px";
                subs2[0].style.borderBottom = "0px";
                subs3[0].style.borderBottom = "0px";

                if(num == 1) {
                    pc.isOff1 = !pc.isOff1;
                    pc.isOff2 = true;
                    pc.isOff3 = true;
                    pc.name="baimingdan";
                    pc.template=pc.name;
                } else if(num == 2) {
                    pc.isOff2 = !pc.isOff2;
                    pc.isOff1 = true;
                    pc.isOff3 = true;
                    pc.name="zhongchou";
                    pc.template=pc.name;
                } else if(num == 3) {
                    pc.isOff3 = !pc.isOff3;
                    pc.isOff2 = true;
                    pc.isOff1 = true;
                    pc.name="fandian";
                    pc.template=pc.name;
                }
                if(pc.isOff1 && pc.isOff2 && pc.isOff3) {
                    var subs = document.getElementsByClassName("subscribe-list");
                    subs[0].style.display = "none";
                } else {
                    if(!pc.isOff1){
                        subs1[0].style.borderBottom = "2px solid #0ba0d1";
                    }else if(!pc.isOff2){
                        subs2[0].style.borderBottom = "2px solid #0ba0d1";
                    }else if(!pc.isOff3){
                        subs3[0].style.borderBottom = "2px solid #0ba0d1";
                    }
                    pc.dataRequest(pc.name,1);
                    var subs = document.getElementsByClassName("subscribe-list");
                    subs[0].style.display = "block";
                }
                pc.currentPage=1;
                pc.myStyle();
            },
            myStyle:function(){
                var li = document.getElementsByClassName("paging-li");
                for(var i=0;i<li.length;i++){
                    li[i].classList.remove("qqq");
                }
                if(pc.currentPage < pc.totalPage-5){
                    li[1].classList.add("qqq");
                }else if(pc.currentPage == pc.totalPage-5){
                    li[2].classList.add("qqq");
                }else if(pc.currentPage == pc.totalPage-4){
                    li[3].classList.add("qqq");
                }else if(pc.currentPage == pc.totalPage-3){
                    li[4].classList.add("qqq");
                }else if(pc.currentPage == pc.totalPage-2){
                    li[5].classList.add("qqq");
                }else if(pc.currentPage == pc.totalPage-1){
                    li[6].classList.add("qqq");
                }else{
                    li[8].classList.add("qqq");
                }
            },
            dataRequest:function (name,num) {
                var url = "/user_center";
                if(name == "baimingdan"){
                    url += "/details_whitelist.ss?page="+num ;
                }else if(name == "zhongchou"){
                    url += "/details_whitelist.ss?page="+num ;//需要修改
                }else if(name == "fandian"){
                    url += "/details_whitelist.ss?page="+num ;//需要修改
                }else{
                    window.alert("请求异常！！！");
                    return;
                }
                url += "&id="+pc.id+"&number="+pc.number;
                console.info(url);
                $.ajax({
                    type: "get",
                    url:url,
                    dataType: "json",
                    success: function(data) {
                        console.info(data);
                        pc.dataList = data.userRelation;
                        console.info(pc.dataList);
                        if(data.number/pc.number > 7){
                            pc.totalPage = data.number/pc.number;
                        }
                    }
                });
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
            verification:function () {
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
                window.console.info(pc.isSubmit);
                window.console.info(input1.val()+"========"+input2.val()+"========"+input3.val());
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
            edit:function () {
                $(".edit-password input[type='password']").val("");
                $('#userPwd').css("display","block");
                $('.userPwd-div').css("display","none");
            },
            retruenTExt:function (bool) {
                if(bool){
                    return $("#chakan").text();
                }else{
                    return $("#guanbi").text();
                }
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
        }
    });
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
    })
</script>




<script type="text/javascript" >
    var jiathis_config ={
        siteNum:1,
        sm:"ujian",
        url:"${invitePage!}?inviterId=${inviterId!}",
        summary:"",
        title:"立即注册豆匣 享受白名单优惠",
        shortUrl:false,
        hideMore:true
    }
</script>
<script type="text/javascript" src="http://v3.jiathis.com/code_mini/jia.js" charset="utf-8"></script>
</@layout.htmlBody>