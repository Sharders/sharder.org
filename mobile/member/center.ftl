<#import "/WEB-INF/ftl/sharders/pc/mobile/layout.ftl" as lay/>
<@lay.htmlHead    pagename="invest">
<link rel="stylesheet" href="/r/cms/resource/sharders/css/mobile/center.css">
<link rel="stylesheet" href="/r/cms/resource/sharders/layui/css/layui.css">
</@lay.htmlHead>

<@lay.htmlBody>
<div class="phone-center-main">
    <div class="user-information" >
        <h1 class="phone-center-information-title">账户信息</h1>
        <ul class="user-information-text">
            <li><labal class="user-title">账号:</labal><span class="user-text">${acconut!}</span></li>
            <li><labal class="user-title">用户名:</labal><span class="user-text">${user.username!}</span></li>
            <li><labal class="user-title">推广码:</labal><span class="user-text">${inviterId!}</span></li>
            <li><labal class="user-title">推广链接:</labal><span class="user-text augoid" id="contents">${invitePage!}?inviterId=${inviterId!}</span></li>
        </ul>
        <button class="copy-link" onclick="jsCopy()">复制推广链接</button>
        <p class="text-color">通你的专属链接/邀请码注册并成功参与众筹。</p>
        <p class="text-color">你可以获得其众筹获得豆匣币(SS)总额度的5%作为返点奖励。</p>
    </div>
    <div class="asset-information" id="center">
        <h1 class="phone-center-information-title">资产信息</h1>
        <div class="sharders-total-assets">
            <p class="sharder-total-assets">总资产</p>
            <p class="sharder-sharder">豆匣币(SS)</p>
            <p class="sharder-quota">0</p>
        </div>
        <div class="crowd-funding-rebate">
                <div class="crowd-funding details">
                    <p class="crowd-funding-title">
                        <img src="/r/cms/resource/sharders/img/gantanhao.png" class="crowd-funding-img">
                        <span class="details-title">众筹所得</span>
                    </p>
                    <p class="crowd-funding quota ">0SS</p>
                    <p class="details-colse" >{{crowd ? "关闭详情" : "查看详情"}}</p>
                    <#--<p class="details-colse" v-on:click="tabBtn(1)">{{crowd ? "关闭详情" : "查看详情"}}</p>-->
                </div>
                <div class="rebate details">
                    <p class="crowd-funding-title">
                        <img src="/r/cms/resource/sharders/img/gantanhao.png" class="crowd-funding-img img">
                        <span class="details-title">返点奖励</span>
                    </p>
                    <p class="rebate-quota quota">0SS</p>
                    <p class="details-colse" >{{isRebate ? "关闭详情" : "查看详情"}}</p>
                    <#--<p class="details-colse" v-on:click="tabBtn(2)">{{isRebate ? "关闭详情" : "查看详情"}}</p>-->
                </div>
        </div>
        <div class="paging-query">
                <component :is="template"></component>
                <div id="page"></div>
        </div>
    </div>
    <div class="subscribe-information">
        <h1 class="phone-center-information-title">白名单额度预约</h1>
        <p class="subscribe-start-end-time">时间1月8日9:00-1月21日23.59</p>
        <span class="subscribe-line"><span style="width: ${subscribeNumber/10!}%"></span></span>
        <p class="subscribe-line-text"><span>总份额: <span>1000</span></span><span>ETH(或等价的BTC,LTC)</span><span class="line-number">${subscribeNumber/10!}%</span></p>
        <ul class="subscribe-user-list">
            <li><span class="username-list">账户:${userName0!}</span><span>获得额度:</span><span>${subscribe0.maxSubscribe!}</span><span>ETH</span></li>
            <li><span class="username-list">账户:${userName1!}</span><span>获得额度:</span><span>${subscribe1.maxSubscribe!}</span><span>ETH</span></li>
            <li><span class="username-list">账户:${userName2!}</span><span>获得额度:</span><span>${subscribe2.maxSubscribe!}</span><span>ETH</span></li>
        </ul>
        <p class="subscribe-quota">
            <span>你当前的白名单额度为:</span><span>${maxSubscribe!}ETH</span><span class="subscribe-quota-info">已经使用额度:${nowSubscribe!}ETH</span>
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
        <p class="subscribe-head"><span class="subscribe-table i18n" name="sharder-participation-time">参与时间</span><span class="subscribe-table i18n" name="sharder-obtain-token">来源</span><span class="subscribe-table i18n" name="sharder-obtain-token">获得代币(SS)</span><span class="subscribe-table i18n" name="sharder-white-list-award">白名单奖励</span></p>
        <ul class="subscribe-ul">
            <li class="subscribe-li"><span class="subscribe-table">2018-01-23 09:20</span><span class="subscribe-table">官网</span><span class="subscribe-table special">1000SS</span><span class="subscribe-table">200SS</span></li>
            <li class="subscribe-li"><span class="subscribe-table">2018-01-23 09:20</span><span class="subscribe-table">官网</span><span class="subscribe-table special">1000SS</span><span class="subscribe-table">200SS</span></li>
            <li class="subscribe-li"><span class="subscribe-table">2018-01-23 09:20</span><span class="subscribe-table">官网</span><span class="subscribe-table special">1000SS</span><span class="subscribe-table">200SS</span></li>
            <li class="subscribe-li"><span class="subscribe-table">2018-01-23 09:20</span><span class="subscribe-table">官网</span><span class="subscribe-table special">1000SS</span><span class="subscribe-table">200SS</span></li>
            <li class="subscribe-li"><span class="subscribe-table">2018-01-23 09:20</span><span class="subscribe-table">官网</span><span class="subscribe-table special">1000SS</span><span class="subscribe-table">200SS</span></li>
            <li class="subscribe-li"><span class="subscribe-table">2018-01-23 09:20</span><span class="subscribe-table">官网</span><span class="subscribe-table special">1000SS</span><span class="subscribe-table">200SS</span></li>
        </ul>
    </div>
</script>
<script src="/r/cms/resource/sharders/layui/layui.js"></script>
<script>
    var laypage;
    layui.use(['laypage'], function() {
       laypage = layui.laypage;
    });
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
    var app = new Vue({
        el:"#center",
        data:{
            crowd:false,
            isRebate:false,
            name:"",
            id:${user.id!},
            dataList:"",
            template:"",
        },
        methods:{
            paging:function () {
                laypage.render({
                    elem: 'page'
                    ,count: 100
                    ,first: false
                    ,last: false
                    ,jump: function(obj, first){
                        if(!first){
                            layer.msg('第 '+ obj.curr +' 页');
                            app.pagingQuery(obj.curr);
                        }
                    }
                });
            }
            ,tabBtn:function (num) {
                $(".paging-query").css("display","none");
                $(".crowd-funding.details").css("border-bottom","0");
                $(".rebate.details").css("border-bottom","0");
                if(num == 1){
                    app.crowd=!app.crowd;
                    app.isRebate=false;
                    app.name = "fandian";
                    app.template=app.name;
                    app.paging();
                }else if(num == 2){
                    app.isRebate=!app.isRebate;
                    app.crowd=false;
                    app.name = "zhongchou";
                    app.template=app.name;
                    app.paging();
                }else {
                    window.alert("无法识别的事件！！！");
                    return;
                }
                if(app.crowd == true){
                    $(".crowd-funding.details").css("border-bottom","2px solid #0ba0d1");
                }else if(app.isRebate == true){
                    $(".rebate.details").css("border-bottom","2px solid #0ba0d1");
                }
                if(app.crowd == true || app.isRebate == true){
                    $(".paging-query").css("display","block");
                }
                app.pagingQuery(1);
            },
            pagingQuery:function (num) {
                var url = "/user_center";
                if(app.name == "baimingdan"){
                    url += "/details_whitelist.ss?page="+num ;
                }else if(app.name == "zhongchou"){
                    url += "/details_whitelist.ss?page="+num ;//需要修改
                }else if(app.name == "fandian"){
                    url += "/details_whitelist.ss?page="+num ;//需要修改
                }else{
                    window.alert("请求异常！！！");
                    return;
                }
                url += "&id="+app.id+"&number=10";
                $.ajax({
                    type: "get",
                    url:url,
                    dataType: "json",
                    success: function(result) {
                        console.info(result);
                        app.dataList = result.userRelation;
                    },
                    error:function(){
                        console.error("ajax请求异常！！！");
                    }
                });
            }

        },
        components:{
            'zhongchou':{
                template:'#public-information',
                data:function(){
                    return{
                        parentData:this.$parent.$data
                    }
                }
            },
            'fandian':{
                template:'#rebate-details',
                data:function(){
                    return{
                        parentData:this.$parent.$data
                    }
                }
            },
        },
    });

</script>
</@lay.htmlBody>