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
            <span class="subscribe-time i18n" name="sharder-subscribe-start-end">1月8日9:00——1月21日23:59</span>
            <div class="speed-progress">
						<span class="progress">
							<span class="line" style="width: ${subscribeNumber/10!}%"></span>
						</span>
                <span class="total-subscribe i18n" name="sharder-subscribe-total-share">总份额1000ETH(或等价的BTC,LTCM)</span>
                <span class="subscribe-proportion">${subscribeNumber/10!}%</span>
            </div>
            <ul class="invitation">
                <li style="<#if subscribe0.maxSubscribe == 0 >display:none;</#if> "><span class="invitation-name"><span class="i18n" name="sharder-account-number">账户：</span><#if userName0 ??>${userName0!}</#if></span><span
                        class="invitation-quota"><span class="i18n" name="sharder-obtain-amount">获得额度:</span><#if subscribe0 ??>${subscribe0.maxSubscribe!}</#if>ETH</span></li>
                <li style="<#if subscribe1.maxSubscribe == 0 >display:none;</#if>" ><span class="invitation-name"><span class="i18n" name="sharder-account-number">账户：</span><#if userName1 ??>${userName1!}</#if></span><span
                        class="invitation-quota"><span class="i18n" name="sharder-obtain-amount">获得额度:</span><#if subscribe1 ??>${subscribe1.maxSubscribe!}</#if>ETH</span></li>
                <li style="<#if subscribe2.maxSubscribe == 0 >display:none;</#if> "><span class="invitation-name"><span class="i18n" name="sharder-account-number">账户：</span><#if userName2 ??>${userName1!}</#if></span><span
                        class="invitation-quota"><span class="i18n" name="sharder-obtain-amount">获得额度:</span><#if subscribe2 ??>${subscribe2.maxSubscribe!}</#if>ETH</span></li>
            </ul>
            <#if !nowSubscribe ??> <button class="ss-main-btn i18n" title="点击成为白名单" id="applyFor" name="sharder-become-subscribe">成为白名单</button></#if>
        </div>

        <div class="subscribe-rule">
            <span class="subscribe-detailed i18n" name="sharder-subscribe-fine">白名单预约细明</span>
            <span class="title i18n" name="sharder-subscribe-explain">白名单解释:</span>
            <p class="text i18n" name="sharder-explain-text1">
                为确保sharder贡献和支持者都有公平参与机会，加大宣传力度。豆匣基金会推出了白名单计划。<br/> 本次白名单预约发行总额度为1000ETH或等价的BTC，LTC。
            </p>
            <span class="title i18n" name="sharder-subscribe-get">获得方式:</span>
            <p class="text i18n" name="sharder-explain-text2">
                每个人的起始额度为0，邀请一人在官网注册成功，可获得1ETH的额度，每个账号每天最多可获得10次要求奖励，白名单预约期间为1月8日 -1月22日。每个账户总上限为100ETH或等价的LTC，BTC
                <br/> 你可以在账户信息查看你的专属邀请链接。
            </p>
            <span class="title i18n" name="sharder-subscribe-use">使用方式:</span>
            <p class="text i18n" name="sharder-explain-text3">
                白名单获得的预约额度在天使轮众筹购买豆匣币(SSC)时，可额外获得20%的豆匣币(SSC)奖励。<br/> 参与天使轮众筹后即消耗本账户的名额，未使用完的额度将在天使轮众筹结束后清零。
                <br/> 你可以在我的资产查看白名单状态及邀请信息。
                <br/> *投资机构及大额投资者请联系官方人员获得XXXXXX
            </p>
        </div>
        <div class="user-subscribe"><span class="i18n" name="sharder-user-subscribe-quota">你当前的白名单额度 :</span>${maxSubscribe!}ETH</div>
    </div>
    <div class="user">
        <span class="title i18n" name="sharder-user-information">账户信息</span>
        <ul>
            <li><span class="user-title i18n" name="sharder-sign-in-username">用户名:</span><span class="user-value"><#if user ??>${user.username!}</#if></span><span
                    class="user-operation" ></span></li>
            <li><span class="user-title i18n" name="sharder-account-number">账号:</span><span class="user-value">${acconut!}</span></li>
            <li><span class="user-title i18n" name="sharder-user-uid-code">UID码:</span><span class="user-value">${inviterId!}</span></li>
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
    <div class="remarks i18n" name="sharder-subscribe-text5">邀请注册并参与众筹可获得5%的返点奖励！</div>
    <div class="assets">
        <span class="title i18n" name="sharder-my-assets">我的资产</span>
        <div class="total-assets">
            <span class="personal-total-assets i18n" name="sharsder-my-total-assets">总资产</span>
            <span class="sharder-ss i18n" name="sharder-SS">豆匣币(SS)</span>
            <span class="shardr-assets">0</span>
        </div>
        <div class="subscribe-crowd-funding">
            <div class="personal white-list">
                <span class="explain"><span class="i18n" name="sharder-subscribe-quota">白名单额度</span><img src="/r/cms/resource/sharders/img/index/gantanhao.png" class="personal-img"/>
                    <div class="popup-subscribe i18n" name="sharder-subscribe-text1">邀请好友注册成功将会获得白名单额度，每人每天最多可获得10ETH或等值其他货币(只适用于早鸟阶段)。众筹期间最多可获得100ETH或等值其他货币额度。白名单额度在早鸟轮众筹期间购买份额时候将额外获得20%的奖励。未使用的白名单额度将在早鸟轮结束以后清零</div></span>
                <span class="currency">ETH</span>
                <span class="quota used">${maxSubscribe!}</span>
                <span class="alreadyUsed"><span class="i18n" name="sharder-user-already-quota">已使用额度 :</span> ${nowSubscribe!}ETH</span>
                <span class="details"v-on:click="isLuck(1)">{{isOff1 ? "查看详情" : "关闭详情"}}</span>
            </div>
            <div class="personal crowd-funding">
                <span class="explain"><span class="i18n" name="sharder-subscribe-income">众筹所得</span><img src="/r/cms/resource/sharders/img/index/gantanhao.png" class="personal-img"/>
                    <div class="popup-crowd-funding i18n" name="sharder-subscribe-text2">参与不同阶段所获得的豆匣币（SS）数量。</div></span>
                <span class="currency i18n" name="sharder-SS">豆匣币(SS)</span>
                <span class="quota">0</span>
                <span class="details"v-on:click="isLuck(2)">{{isOff2 ? "查看详情" : "关闭详情"}}</span>
            </div>
            <div class="personal rebate">
                <span class="explain"><span class="i18n" name="sharder-subscribe-rebate">返点奖励</span><img src="/r/cms/resource/sharders/img/index/gantanhao.png" class="personal-img"/>
                    <div class="poput-invitation i18n" name="sharder-subscribe-text3">邀请好友成功参与众筹，您将获得其投资获得豆匣币（SS）总额的5%作为返点奖励。</div></span>
                <span class="currency">豆匣币 ( SS )</span>
                <span class="quota">0</span>
                <span class="details" v-on:click="isLuck(3)">{{isOff3 ? "查看详情" : "关闭详情"}}</span>
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
        <div class="poput-extract i18n" name="sharder-subscribe-text4">通过官网直投的支持者，将在公开众筹结束后开始提币，三天内自动兑换到您提供的 ETH 钱包地址（锁仓者除外）。</div>

    </div>
    <div class="rule">
        <span class="title i18n" name="sharder-explain-rebate">返点奖励解释:</span>
        <p class="text i18n" name="sharder-subscribe-text6">
            通过你的专属链接邀请注册并参与众筹成功后你可以获得豆匣币(SS)奖励。
        </p>
        <span class="title i18n" name="sharder-acquisition-mode">获得方式:</span>
        <p class="text i18n" name="sharder-subscribe-text7">
            通过你的专属链接注册并成功参与天使轮众筹。你可以获得其天使轮和众筹获得豆匣币(SC)总额的5%作为返点奖励。<br/> 要求返点活动与白名单邀请无冲突且无要请限制，可以继续要请并获得返点奖励。
        </p>
    </div>
    <div class="edit-password">
            <form method="post" id="userPwd">
                <h2 class="i18n" name="sharder-user-edit-pwd">修改密码</h2>
                <input type="password" placeholder="请输入旧密码" id="oldPassWord" name="origPwd" v-on:keyup="verification()"/>
                <input type="password" placeholder="请输入新密码" id="newPassWord1" v-on:keyup="verification()"/>
                <input type="password" placeholder="再次输入密码" name="newPwd" id="newPassWord2" v-on:keyup="verification()"/>
                <input type="button" value="提交" v-on:click="editPwd()"/>
            </form>
        <div class="userPwd-div">
            <h2 class="i18n" name="sharder-operation-result">操作结果</h2>
            <span>{{Pwd.message}}{{Pwd.error}}</span>
            <input type="button" value="重新修改" v-on:click="edit()"/>
        </div>
        <span class="close" v-on:click="winOpen()" >X</span>
    </div>
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
            <li class="subscribe-li"><span class="subscribe-table">2018-01-23 09:20</span><span class="subscribe-table">天使轮</span><span class="subscribe-table">官网</span><span class="subscribe-table special">1000BTC</span><span class="subscribe-table">1000BTC</span><span class="subscribe-table">10ETH</span><span class="subscribe-table">200SS</span></li>
            <li class="subscribe-li"><span class="subscribe-table">2018-01-23 09:20</span><span class="subscribe-table">天使轮</span><span class="subscribe-table">官网</span><span class="subscribe-table special">1000BTC</span><span class="subscribe-table">1000BTC</span><span class="subscribe-table">10ETH</span><span class="subscribe-table">200SS</span></li>
            <li class="subscribe-li"><span class="subscribe-table">2018-01-23 09:20</span><span class="subscribe-table">天使轮</span><span class="subscribe-table">官网</span><span class="subscribe-table special">1000BTC</span><span class="subscribe-table">1000BTC</span><span class="subscribe-table">10ETH</span><span class="subscribe-table">200SS</span></li>
            <li class="subscribe-li"><span class="subscribe-table">2018-01-23 09:20</span><span class="subscribe-table">天使轮</span><span class="subscribe-table">官网</span><span class="subscribe-table special">1000BTC</span><span class="subscribe-table">1000BTC</span><span class="subscribe-table">10ETH</span><span class="subscribe-table">200SS</span></li>
            <li class="subscribe-li"><span class="subscribe-table">2018-01-23 09:20</span><span class="subscribe-table">天使轮</span><span class="subscribe-table">官网</span><span class="subscribe-table special">1000BTC</span><span class="subscribe-table">1000BTC</span><span class="subscribe-table">10ETH</span><span class="subscribe-table">200SS</span></li>
            <li class="subscribe-li"><span class="subscribe-table">2018-01-23 09:20</span><span class="subscribe-table">天使轮</span><span class="subscribe-table">官网</span><span class="subscribe-table special">1000BTC</span><span class="subscribe-table">1000BTC</span><span class="subscribe-table">10ETH</span><span class="subscribe-table">200SS</span></li>
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
        alert("Copy OK !!!");
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
                    return "白名单额度详情";
                }else if(name == "zhongchou"){
                    return "众筹所得详情";
                }else if(name == "fandian"){
                    return "返点奖励详情";
                }else{
                    return "未知错误"
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
    var jiathis_config={
        siteNum:1,
        sm:"ujian",
        url:"${invitePage!}?inviterId=${inviterId!}",
        summary:"",
        title:"注册sharder 享受跟多礼包",
        shortUrl:false,
        hideMore:true
    }
</script>
<script type="text/javascript" src="http://v3.jiathis.com/code_mini/jia.js" charset="utf-8"></script>
</@layout.htmlBody>