<@layout.htmlHead title="账单列表"  >
<style>
    .trade-img{
        max-width: 400px;
        max-height: 800px;
    }
    #look_img{
        padding: 10px;
        max-height: 800px;
        overflow: auto;
        min-height: 400px;
        min-width: 200px;
    }
    #look_img .item{
        margin-top: 10px;
        margin-bottom: 10px;
    }
</style>
</@layout.htmlHead>


<#--<div id="edit_view"></div>-->
<@layout.htmlBody>
<#--功能描述
    账单列表，查看用户的投资记录
-->

<table class="layui-hide" id="bill_list" lay-filter="bill_list"></table>
<img src="">
<#--<div id="demo1"></div>-->
<script id="edit_bill" type="text/html">
    <form class="layui-form" action="">
        <div class="layui-form-item">
            <label class="layui-form-label">账单ID</label>
            <div class="layui-input-inline">
                <input type="text" name="id"  autocomplete="off" class="layui-input" value="{{d.id}}" disabled>
                <input type="hidden" name="userId"  autocomplete="off" class="layui-input" value="{{d.userId}}" disabled>
            </div>
        </div>
        <div class="layui-form-item">
            <label class="layui-form-label">状态</label>
            <div class="layui-input-inline">
                <input type="text" class="layui-input" value="{{d.status}}"name="status">
            </div>
        </div>
        <div class="layui-form-item">
            <label class="layui-form-label">来源</label>
            <div class="layui-input-inline">
                <input type="text" name="source"  class="layui-input" value="{{d.source}}">
            </div>
        </div>
        <div class="layui-form-item">
            <label class="layui-form-label">总额</label>
            <div class="layui-input-inline">
                <input type="text" name="amount"  class="layui-input" value="{{d.amount}}">
            </div>
        </div>
        <div class="layui-form-item">
            <label class="layui-form-label">原本金额</label>
            <div class="layui-input-inline">
                <input type="text" name="originalAmount"  class="layui-input" value="{{d.originalAmount}}">
            </div>
        </div>
        <div class="layui-form-item">
            <label class="layui-form-label">奖励金额</label>
            <div class="layui-input-inline">
                <input type="text" name="awardAmount"  class="layui-input" value="{{d.awardAmount}}">
            </div>
        </div>
        <div class="layui-form-item">
            <label class="layui-form-label">支付类型</label>
            <div class="layui-input-inline">
                <input type="text" name="payType"  class="layui-input" value="{{d.payType}}">
            </div>
        </div>
        <div class="layui-form-item">
            <label class="layui-form-label">支付金额</label>
            <div class="layui-input-inline">
                <input type="text" name="payAmount"  class="layui-input" value="{{d.payAmount}}">
            </div>
        </div>
        <div class="layui-form-item">
            <label class="layui-form-label">备注</label>
            <div class="layui-input-inline">
                <input type="text" name="memo"  class="layui-input" value="{{d.memo}}">
            </div>
        </div>
        <div class="layui-form-item">
            <div class="layui-input-block">
                <button class="layui-btn layui-bg-blue" lay-submit lay-filter="v_sumbit" >立即提交</button>
                <button type="reset" class="layui-btn layui-btn-primary">重置</button>
            </div>
        </div>
    </form>
</script>


<script type="text/html" id="barBtns">
    <#--<a class="layui-btn layui-btn-primary layui-btn-xs" lay-event="detail">查看</a>-->
    <a class="layui-btn layui-btn-xs" lay-event="edit">编辑</a>
    <a class="layui-btn layui-btn-xs" lay-event="look-img">查看交易图片</a>
    <#--<a class="layui-btn layui-btn-danger layui-btn-xs" lay-event="del">删除</a>-->
</script>
<script>

    loadDate();

    function loadDate() {
        var reqUrl = '/invest/querys_async.ss';
        commAjax(reqUrl,"get","",loadDateResult);
    }
    function loadDateResult(_result) {

        layui.use(['laypage','layer','laytpl','table','form'], function(){
            var table = layui.table
                    ,laypage = layui.laypage
                    ,laytpl = layui.laytpl
                    ,form = layui.form
                    ,layer = layui.layer;
            table.render({
                elem: '#bill_list'
                ,cellMinWidth: 80 //全局定义常规单元格的最小宽度，layui 2.2.1 新增
                ,cols: [[
                    {field:'id', width:80, title: '账单ID', sort: true}
                    ,{field:'pId', width:80, title: '父账单ID', sort: true}
                    ,{field:'pUserId', width:80, title: '父账单用户ID', sort: true}
                    ,{field:'userId', width:80, title: '用户ID', sort: true}
                    ,{field:'status', width:80, title: '状态', sort: true}
                    ,{field:'source', width:80, title: '来源', sort: true}
                    ,{field:'amount', width:80, title: '总额', sort: true}
                    ,{field:'originalAmount', width:80, title: '原本金额', sort: true}
                    ,{field:'awardAmount', width:80, title: '奖励金额', sort: true}
                    ,{field:'payType', width:80, title: '支付类型', sort: true}
                    ,{field:'payAmount', width:80, title: '支付金额', sort: true}
                    ,{field:'shardersWalletAddr', width:160, title: '豆匣钱包地址'}
//                    ,{field:'tradeImgAddr', width:100, title: '交易截图'}
                    ,{field:'payWalletAddr', width:120, title: '用户支付地址'}
                    ,{field:'createDate', width:120, title: '创建时间', sort: true}
                    ,{field:'modifiedDate', width:120, title: '修改时间', sort: true}
                    ,{field:'memo', width:120, title: '备注'}
                    ,{fixed: 'right', width:178, align:'center', toolbar: '#barBtns'}
                ]],
                data:_result.result.userBills,
                page: true
            });

            //监听工具条
            table.on('tool(bill_list)', function(obj){
                var data = obj.data;
                if(obj.event === 'look-img'){
                   var arr = sSplit(data.tradeImgAddr);

                    if(arr != null){
                        layer.open({
                            title:'转账截图',
                            type: 1,
                            content: "<ul id='look_img'></ul>",
                        });

                        $.each(arr,function (index,item) {
                            $("#look_img").append("<li class='item'><img class='trade-img' src="+item+"></li>");
                        })
                    }else{
                        layer.msg("没有上传截图");
                    }

                    
                }  else if(obj.event === 'edit'){
                    layer.open({
                        title:'账单修改',
                        type: 1,
                        area: ['400px', '600px'],
                        content: "<div id='edit_view'></div>",
                    });
                    var getTpl = edit_bill.innerHTML
                            ,view = document.getElementById('edit_view');

                    laytpl(getTpl).render(data, function(html){
                        view.innerHTML = html;
                    });
                }
            });
            //监听提交
            form.on('submit(v_sumbit)', function(data){
                var requestUrl = "/invest/update.ss";
                commAjax(requestUrl,"post",data.field,editResult);
                return false;
            });
            var editResult = function (_data) {
                console.log(_data);
                if(isTrue(_data.success)){
                    layer.msg(_data.message,function () {
                        location.reload();
                    });
                }else{
                    layer.msg(_data.message);
                    return false;
                }
            }

//            //总页数大于页码总数
//            laypage.render({
//                elem: 'demo1'
//                ,count: 70 //数据总数
//                ,jump: function(obj){
//                    console.log(obj)
//                }
//            });
        });


    }

</script>

</@layout.htmlBody>

