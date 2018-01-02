<@layout.htmlHead title="我就是标题" keywords="我就是标题" description="我就是标题">
<link rel="stylesheet" href="/r/cms/resource/sharders/css/user_center.css" />
<script src="/r/cms/resource/sharders/js/vue.js" type="text/javascript" charset="utf-8"></script>
</@layout.htmlHead>

<@layout.htmlBody>
<div class="container ss-theme-background-color">
    <div class="subscribe">
        <div class="subscribe-share">
            <span class="subscribe-make">白名单份额预约</span>
            <span class="subscribe-time">1月8日9:00——1月21日23:59</span>
            <div class="speed-progress">
						<span class="progress">
							<span class="line" style="width: ${subscribeNumber/10!}%"></span>
						</span>
                <span class="total-subscribe">总份额1000ETH(或等价的BTC,LTCM)</span>
                <span class="subscribe-proportion">${subscribeNumber/10!}%</span>
            </div>
            <ul class="invitation">
                <li style="<#if subscribe0.maxSubscribe == 0 >display:none;</#if> "><span class="invitation-name">账户：<#if userName0 ??>${userName0!}</#if></span><span
                        class="invitation-quota">获得额度:<#if subscribe0 ??>${subscribe0.maxSubscribe!}</#if>ETH</span></li>
                <li style="<#if subscribe1.maxSubscribe == 0 >display:none;</#if>" ><span class="invitation-name">账户：<#if userName1 ??>${userName1!}</#if></span><span
                        class="invitation-quota">获得额度:<#if subscribe1 ??>${subscribe1.maxSubscribe!}</#if>ETH</span></li>
                <li style="<#if subscribe2.maxSubscribe == 0 >display:none;</#if> "><span class="invitation-name">账户：<#if userName2 ??>${userName1!}</#if></span><span
                        class="invitation-quota">获得额度:<#if subscribe2 ??>${subscribe2.maxSubscribe!}</#if>ETH</span></li>
            </ul>
        </div>
        <div class="subscribe-rule">
            <span class="subscribe-detailed">白名单预约细明</span>
            <span class="title">白名单解释:</span>
            <p class="text">
                为确保sharder贡献和支持者都有公平参与机会，加大宣传力度。豆匣基金会推出了白名单计划。<br/> 本次白名单预约发行总额度为1000ETH或等价的BTC，LTC。
            </p>
            <span class="title">获得方式:</span>
            <p class="text">
                每个人的起始额度为0，邀请一人在官网注册成功，可获得1ETH的额度，每个账号每天最多可获得10次要求奖励，白名单预约期间为1月8日 -1月22日。每个账户总上限为100ETH或等价的LTC，BTC
                <br/> 你可以在账户信息查看你的专属邀请链接。
            </p>
            <span class="title">使用方式:</span>
            <p class="text">
                白名单获得的预约额度在天使轮众筹购买豆匣币(SSC)时，可额外获得20%的豆匣币(SSC)奖励。<br/> 参与天使轮众筹后即消耗本账户的名额，未使用完的额度将在天使轮众筹结束后清零。
                <br/> 你可以在我的资产查看白名单状态及邀请信息。
                <br/> *投资机构及大额投资者请联系官方人员获得XXXXXX
            </p>
        </div>
        <div class="user-subscribe">你当前的白名单额度 : ${maxSubscribe!}ETH</div>
    </div>
    <div class="user">
        <span class="title">账户信息</span>
        <ul>
            <li><span class="user-title">用户名:</span><span class="user-value"><#if user ??>${user.username!}</#if></span><span
                    class="user-operation"><a href="/member/profile.jspx">修改用户名</a></span></li>
            <li><span class="user-title">账号:</span><span class="user-value"><#if user ??>${user.realname!}</#if></span></li>
            <li><span class="user-title">UID码:</span><span class="user-value"><#if user ??>${user.id!}</#if></span></li>
            <li><span class="user-title">登录密码:</span><span class="user-value">******</span><span class="user-operation"><a href="/member/pwd.jspx">修改密码</a></span></li>
            <li><span class="user-title">交易密码:</span><span class="user-value">未设置</span><span class="user-operation"><a href="/member/pwd.jspx">设置交易密码</a></span></li>
            <li><span class="user-title">专属邀请链接:</span><input class="user-value link" id="contents" value="http://community.conchain.org/" />
                <span class="user-operation" onClick="jsCopy();" >复制邀请码</span></li>
        </ul>
    </div>
    <div class="assets">
        <span class="title">我的资产</span>
        <div class="total-assets">
            <span class="personal-total-assets">总资产</span>
            <span class="sharder-ss">豆匣币(SS)</span>
            <span class="shardr-assets">0</span>
        </div>
        <div class="subscribe-crowd-funding">
            <div class="personal white-list">
                <span class="explain">白名单额度<img src="/r/cms/resource/sharders/img/index/gantanhao.png" class="personal-img"/></span>
                <span class="currency">ETH</span>
                <span class="quota used">${maxSubscribe!}</span>
                <span class="alreadyUsed">已使用额度 : ${nowSubscribe!}ETH</span>
                <span class="details"v-on:click="isLuck(1)">{{isOff1 ? "查看详情" : "关闭详情"}}</span>
            </div>
            <div class="personal crowd-funding">
                <span class="explain">众筹所得<img src="/r/cms/resource/sharders/img/index/gantanhao.png" class="personal-img"/></span>
                <span class="currency">豆匣币(SS)</span>
                <span class="quota">0</span>
                <span class="details"v-on:click="isLuck(2)">{{isOff2 ? "查看详情" : "关闭详情"}}</span>
            </div>
            <div class="personal rebate">
                <span class="explain">返点奖励<img src="/r/cms/resource/sharders/img/index/gantanhao.png" class="personal-img"/></span>
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
                    <li class="paging-li" v-on:click="pagingQuery(name,currentPage-1)">上一页</li>
                    <li class="paging-li qqq" v-on:click="pagingQuery(name,currentPage >= totalPage-6 ? totalPage-6 : currentPage)">{{currentPage >= totalPage-6 ? totalPage-6 : currentPage}}</li>
                    <li class="paging-li" v-on:click="pagingQuery(name,currentPage+1 >= totalPage-5 ? totalPage-5 : currentPage+1)">{{currentPage+1 >= totalPage-5 ? totalPage-5 : currentPage+1}}</li>
                    <li class="paging-li" v-on:click="pagingQuery(name,currentPage+2 >= totalPage-4 ? totalPage-4 : currentPage+2)">{{currentPage+2 >= totalPage-4 ? totalPage-4 : currentPage+2}}</li>
                    <li class="paging-li" v-on:click="pagingQuery(name,currentPage+3 >= totalPage-3 ? totalPage-3 : currentPage+3)">{{currentPage+3 >= totalPage-3 ? totalPage-3 : currentPage+3}}</li>
                    <li class="paging-li" v-on:click="pagingQuery(name,currentPage+4 >= totalPage-2 ? totalPage-2 : currentPage+4)">{{currentPage+4 >= totalPage-2 ? totalPage-2 : currentPage+4}}</li>
                    <li class="paging-li" v-on:click="pagingQuery(name,currentPage+5 >= totalPage-1 ? totalPage-1 : currentPage+5)">{{currentPage+5 >= totalPage-1 ? totalPage-1 : currentPage+5}}</li>
                    <li class="paging-li">...</li>
                    <li class="paging-li" v-on:click="pagingQuery(name,totalPage)">{{totalPage}}</li>
                    <li class="paging-li" v-on:click="pagingQuery(name,currentPage+1)">下一页</li>
                </ul>
            </div>
        </div>
        <button class="currency-ss">提币</button>
        <img src="/r/cms/resource/sharders/img/index/wenhao.png"/>
    </div>
    <div class="remarks">邀请注册并参与众筹可获得5%的返点奖励！</div>
    <div class="rule">
        <span class="title">返点奖励解释:</span>
        <p class="text">
            通过你的专属链接邀请注册并参与众筹成功后你可以获得豆匣币(SS)奖励。
        </p>
        <span class="title">获得方式:</span>
        <p class="text">
            通过你的专属链接注册并成功参与天使轮众筹。你可以获得其天使轮和众筹获得豆匣币(SC)总额的5%作为返点奖励。<br/> 要求返点活动与白名单邀请无冲突且无要请限制，可以继续要请并获得返点奖励。
        </p>
    </div>
</div>

<script type="text/x-template" id="details-white-list">
    <div class="details-white-list subscribe-body">
        <p class="subscribe-head"><span class="subscribe-table">注册人</span><span class="subscribe-table">注册时间</span><span class="subscribe-table">白名单份额</span></p>
        <ul class="subscribe-ul">
            <li class="subscribe-li" v-for="pd in parentData.dataList"><span class="subscribe-table">{{pd.id}}</span><span class="subscribe-table">{{pd.createDate}}</span><span class="subscribe-table">1TEH</span></li>
            <li class="subscribe-li" v-if="parentData.dataList == ''"><span>没有找到相关数据了！！！</span></li>
        </ul>
    </div>
</script>
<script type="text/x-template" id="public-information">
    <div class="public-information subscribe-body">
        <p class="subscribe-head"><span class="subscribe-table">注册人UID</span><span class="subscribe-table">注册时间</span><span class="subscribe-table">众筹获得</span><span class="subscribe-table special">返点奖励(20%)</span></p>
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
        <p class="subscribe-head"><span class="subscribe-table">参与时间</span><span class="subscribe-table">参与阶段</span><span class="subscribe-table">来源</span><span class="subscribe-table special">支持数量</span><span class="subscribe-table">获得代币(SS)</span><span class="subscribe-table">使用白名单额度</span><span class="subscribe-table">白名单奖励</span></p>
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
        var e = document.getElementById("contents"); //对象是contents
        e.select(); //选择对象
        tag = document.execCommand("Copy"); //执行浏览器复制命令
        if(tag) {
            alert('复制内容成功');
        }
    }
    var pc = new Vue({
        el: ".assets",
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
                var url = "/shardersF/user_center";
                if(name == "baimingdan"){
                    url += "/details_whitelist.do?page="+num ;
                }else if(name == "zhongchou"){
                    url += "/details_whitelist.do?page="+num ;//需要修改
                }else if(name == "fandian"){
                    url += "/details_whitelist.do?page="+num ;//需要修改
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
        }
    });

</script>
</@layout.htmlBody>