<@layout.htmlHead title="白名单列表"  >
<link rel="stylesheet" href="/r/cms/resource/sharders/admin/css/subscribe_list.css" />
</@layout.htmlHead>

<@layout.htmlBody>
<#--功能描述
    查询白名单，修改单个人的白名单额度
    页脚统计总数


-->
<div class="screen-speed-progress">
    <div class="screen">
        <fieldset class="layui-elem-field layui-field-title" style="margin-top: 20px;">
            <legend>筛选符合要求的用户</legend>
        </fieldset>
        <form class="layui-form" method="post" onsubmit="return false">
            <div class="layui-inline">
                <label class="layui-form-label">用户ID</label>
                <div class="layui-input-inline">
                    <input type="number" name="uid" lay-verify="required|number" autocomplete="off" class="layui-input">
                </div>
            </div>
            <div class="layui-inline">
                <label class="layui-form-label">支付货币种类</label>
                <div class="layui-input-inline">
                    <select name="coinType" lay-verify="required" lay-search="">
                        <option value="">直接选择或搜索选择</option>
                        <option value="BTC">BTC</option>
                        <option value="ETH">ETH</option>
                    <#--<option value="LTC">LTC</option>-->
                    </select>
                </div>
            </div>
            <div class="layui-inline">
                <label class="layui-form-label">是否审核通过</label>
                <div class="layui-input-inline">
                    <select name="state" lay-verify="required" lay-search="">
                        <option value="">直接选择或搜索选择</option>
                        <option value="true">已通过</option>
                        <option value="false">未通过</option>
                    </select>
                </div>
            </div>
            <div class="layui-inline">
                <label class="layui-form-label">筛选方式</label>
                <div class="layui-input-inline">
                    <select name="orAnd" lay-verify="required" lay-search="">
                        <option value="or">满足任意一条</option>
                        <option value="and">全部满足条件</option>
                    </select>
                </div>
            </div>
            <div class="layui-inline">
                <label class="layui-form-label">查询</label>
                <div class="layui-input-inline">
                    <button class="layui-btn layui-bg-blue" onclick="layui.select()">立刻查询</button>
                </div>
            </div>


        </form>
    </div>
    <div class="speed-progress">
        <fieldset class="layui-elem-field layui-field-title" style="margin-top: 20px;">
            <legend>白名单进度</legend>
        </fieldset>
        <div class="layui-progress layui-progress-big" lay-showpercent="true">
            <div class="layui-progress-bar layui-bg-blue" lay-percent="${subscribeTotalCount/10!}%"></div>
        </div>
    </div>
</div>

<div class="table-body">
    <table class="layui-hide" id="demo" lay-filter="demo"></table>
</div>
<script type="text/html" id="barDemo">
    <a class="layui-btn layui-btn-xs layui-bg-blue" lay-event="edit">编辑</a>
</script>
<script>
    Date.prototype.toLocaleString = function() {
        return this.getFullYear() + "-" + (this.getMonth() + 1) + "-" + this.getDate() + " " + this.getHours() + ":" + this.getMinutes() + ":" + this.getSeconds();
    };
    var myData;
    layui.use(['table','laytpl'], function(){
        var table = layui.table;
        laytpl = layui.laytpl;
        //启动方法
        function start(){
            var url="/subscribe/querys.ss";
            AsynchronousRequest("GET",url,"",callback);
        }

        //启动回调方法
        function callback(result) {
            for(var i=0;i<result.Subscribe.length;i++){
                result.Subscribe[i].createData = timeToString(result.Subscribe[i].createData);
                result.Subscribe[i].modifiedDate = timeToString(result.Subscribe[i].modifiedDate);
                result.Subscribe[i].validData = timeToString(result.Subscribe[i].validData);
            }
            RenderingTable(result.Subscribe);
        }

        //异步请求方法
        function AsynchronousRequest(_type,_url,_data,_method){
            if(!(_type == "GET" || _type == "POST")){
                console.error("请求方法只支持 GET 或 POST ！！！");
                return;
            }
            if(_url == "" || _url == undefined){
                console.error("请求路径不能为空！！！");
                return;
            }
            if(_data == "" || _data == undefined){
                console.warn("警告:你没有传入任何参数！！！");
            }
            if(typeof _method != 'function'){
                console.error("没有传入正确的回调方法！！！");
                return;
            }
            $.ajax({
                type: _type,
                url:_url,
                data:_data,
                dataType: "json",
                success: function(result) {
                    _method(result);
                },
                error:function(){
                    console.error("ajax请求异常！！！");
                }
            });
        }

        //时间转换
        function timeToString(time){
            return new Date(parseInt(time)).toLocaleString()+"";
        }


        //渲染展示已知数据
        function RenderingTable(_data){
            table.render({
                elem: '#demo'
                ,cols: [[ //标题栏
                    {field: 'id', title: 'ID', sort: true}
                    ,{field: 'uid', title: '用户id', sort: true}
                    ,{field: 'maxSubscribe', title: '最大额度', sort: true}
                    ,{field: 'minSubscribe', title: '最小额度', sort: true}
                    ,{field: 'nowSubscride', title: '现在已用额度', sort: true}
                    ,{field: 'createData', title: '创建时间', sort: true}
                    ,{field: 'modifiedDate', title: '修改时间', sort: true}
                    ,{field: 'validData', title: '白名单有效期', sort: true}
                    ,{field: 'valid', title: '是否有效', sort: true}
                    ,{field: 'coinType', title: '订购货币类型', sort: true}
                    ,{field: 'type', title: '白名单类型', sort: true}
                    ,{field: 'memo', title: '白名单备注', sort: true}
                    ,{fixed: 'right', width:178, align:'center', toolbar: '#barDemo'}
                ]]
                ,data:_data
                ,even: true//双数行颜色加重
                ,page: true //开启分页
            });
        }
        start();

        //监听工具条
        table.on('tool(demo)', function(obj) {

            var data = obj.data;
            localStorage.clear();
            localStorage.setItem("subscribeData",JSON.stringify(data));
//            layer.alert('编辑行：<br>'+ JSON.stringify(data));
            var index = layer.open({
title: "修改用户信息",
type: 2,
offset: 'auto',
area: ['720px', '560px'],
content: "/r/cms/resource/sharders/admin/html/subscribe_list.html",
});
myData=data;
});
layui.select = function() {
var url = "/subscribe/conditional_query.ss";
var _data = $("form.layui-form").serialize();
AsynchronousRequest("POST",url,_data,callback);
};
});
</script>


</@layout.htmlBody>
