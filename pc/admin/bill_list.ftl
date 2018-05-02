<@layout.htmlHead title="账单列表"  >
<style>
    .trade-img{
        max-width: 600px;
        max-height: 1000px;
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
    .layui-upload-img{
        width: 220px;
    }
</style>
</@layout.htmlHead>
<#import "/WEB-INF/ftl/sharders/pc/admin/bill_filtrate.ftl" as b_filter>

<#--<div id="edit_view"></div>-->
<@layout.htmlBody>
<div class="layui-fluid">
<#--功能描述
    账单列表，查看用户的投资记录
-->

    <fieldset class="layui-elem-field layui-field-title" style="margin-top: 20px;">
        <legend>筛选--账单查看</legend>
    </fieldset>

    <@b_filter.filter useraddr=false hash=false />
    <table class="layui-hide" id="bill_list" lay-filter="bill_list"></table>
    <#--  分页  -->
    <div id="page"></div>
    <div style="text-align: center">
        <button class="layui-btn layui-btn-warm layui-btn-radius" onclick="downExcel()">下载Excel文档</button>
    </div>
<div>
<#--添加账单的模板 start-->
<#--添加账单的模板 end-->
<script type="text/html" id="barBtns">
    <a class="layui-btn layui-btn-xs" lay-event="look-img">查看交易图片</a>
</script>


<script>

    var pageNo = 1;  //当前页
    var pageSize = 50;  //每页大小

    var isPaging = false;
    loadDate();
    function loadDate(_data) {
        if(isEmpty(_data)){
            _data ="pageNo="+pageNo+"&pageSize="+pageSize;
        }else{
            _data +="&pageNo="+pageNo+"&pageSize="+pageSize;
        }

        var reqUrl = '/invest/querys_async.ss';
        commAjax(reqUrl,"get",_data,loadDateResult);
    }
    function loadDateResult(_result) {
        layui.use(['laypage','layer','laytpl','table','layedit', 'form','upload'], function(){
            var table = layui.table
                    ,laypage = layui.laypage
                    ,laytpl = layui.laytpl
                    ,form = layui.form
                    ,layedit = layui.layedit
                    ,upload = layui.upload
                    ,layer = layui.layer;
            layer.closeAll('loading');
            table.render({
                elem: '#bill_list'
                ,cellMinWidth: 80
                ,cols: [[
                    {field:'id', width:80, title: '账单ID', sort: true,fixed: true}
                    ,{field:'username', width:140, title: '用户名'}
                    ,{field:'pId', width:80, title: '父账单ID', sort: true}
                    ,{field:'pUserId', width:80, title: '父账单用户ID', sort: true}
                    ,{field:'userId', width:80, title: '用户ID', sort: true}
                    ,{field:'status', width:80, title: '状态', templet: '#scr_status'}

                    ,{field:'source', width:80, title: '来源', sort: true}
                    ,{field:'amount', width:80, title: '总额', sort: true}
                    ,{field:'originalAmount', width:80, title: '原本金额', sort: true}
                    ,{field:'awardAmount', width:80, title: '奖励金额', sort: true}
                    ,{field:'payType', width:80, title: '支付类型', sort: true}
                    ,{field:'payAmount', width:80, title: '支付金额', sort: true}
                    ,{field:'shardersWalletAddr', width:160, title: '豆匣钱包地址'}
                    ,{field:'tradeImgAddr', width:100, title: '交易截图'}
                    ,{field:'payWalletAddr', width:120, title: '用户支付地址'}
                    ,{field:'createDate', width:120, title: '创建时间', sort: true}
                    ,{field:'modifiedDate', width:120, title: '修改时间', sort: true}
                    ,{field:'memo', width:120, title: '备注'}
                    ,{fixed: 'right', width:178, align:'center', toolbar: '#barBtns'}
                ]]
                ,data:_result.result.data.list
                ,limit:pageSize
            });

                if(!isPaging){
                    isPaging = true;
                    setPaging(_result.result.data.totalCount);
                }


            //监听工具条
            table.on('tool(bill_list)', function(obj){
                var data = obj.data;
                if(obj.event === 'look-img'){
                   var arr = sSplit(data.tradeImgAddr);
                    if(isNotempty(arr)){
                        layer.open({
                            title:'转账截图',
                            type: 1,
                            maxmin: true, //开启最大化最小化按钮
                            content: "<ul id='look_img'></ul>",
                        });
                        $.each(arr,function (index,item) {
                            $("#look_img").append("<li class='item'><img class='trade-img' src="+item+"></li>");
                        })
                    }else{
                        layer.msg("没有上传截图");
                    }
                }
            });
            $('.demoTable .layui-btn').on('click', function(){
                var type = $(this).data('type');
                console.log(type);
                active[type] ? active[type].call(this) : '';
            });

            $('.add-bill-btn').on('click', function(){
                var type = $(this).data('type');
                active[type] ? active[type].call(this) : '';
            });
            form.on('submit(filtrate-btn)', function(data){
                layer.load(2);
                var _data = $("#filtrate-form").serialize();
                loadDate(_data);
            });

            //generate paging
            function setPaging(_count) {
                laypage.render({
                    elem: 'page'
                    ,count: _count
                    ,limit:pageSize
                    ,layout: ['count', 'prev', 'page', 'next', 'limit', 'skip']
                    ,jump: function(obj,first){
                        pageNo = obj.curr;
                        pageSize = obj.limit;
                        console.log(obj);
                        if(!first){
                            var _data = $("#filtrate-form").serialize();
                            loadDate(_data);
                        }
                    }
                });
            }

        });



    }

    function downExcel() {
        layer.msg('确认下载Excel文档吗?', {
            time: 20000, //20s后自动关闭
            btn: ['确定', '取消'],
            yes:function () {
                var data = $("#filtrate-form").serialize();
                var url = "/admin/user/bill/serveice/excel.ss";
                layer.close(layer.index);
                window.open(url+"?"+data);
            }
        });
    }
</script>

</@layout.htmlBody>

