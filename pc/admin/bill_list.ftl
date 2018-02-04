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


<#--<div id="edit_view"></div>-->
<@layout.htmlBody>
<div class="layui-fluid">
<#--功能描述
    账单列表，查看用户的投资记录
-->
    <div class="layui-row" style="margin-top: 50px;">
        <div class="demoTable layui-col-xs6">
            搜索账户：
            <div class="layui-inline">
                <input class="layui-input" name="id" id="demoReload" autocomplete="off">
            </div>
            <button class="layui-btn" data-type="reload">搜索</button>
        </div>
        <div class="layui-col-xs2">
            <button class="layui-btn layui-btn-normal add-bill-btn" data-type="addBill" >添加交易</button>
        </div>

    </div>


    <table class="layui-hide" id="bill_list" lay-filter="bill_list"></table>

    <div class="layui-row" id="add_bill" style="display: none">
        <fieldset class="layui-elem-field layui-field-title" style="margin-top: 20px;">
            <legend>添加交易</legend>
        </fieldset>
        <form class="layui-form" action="" >
            <div class="layui-form-item">
                <label class="layui-form-label">用户账号</label>
                <div class="layui-input-inline">
                    <input type="text" name="account"  autocomplete="off" class="layui-input" >
                </div>
            </div>
            <div class="layui-form-item">
                <label class="layui-form-label">状态</label>
                <div class="layui-input-inline">
                    <select name="status">
                        <option value="">请选择状态</option>
                        <option value="2" selected="2">待审核</option>
                        <option value="1">已支付</option>
                        <option value="0">未支付</option>
                        <option value="-1">失效</option>
                        <option value="-2">已发送TOKEN</option>
                    </select>
                </div>
            </div>
            <div class="layui-form-item">
                <label class="layui-form-label">来源</label>
                <div class="layui-input-inline">
                    <select name="source" >
                        <option value="">请选择来源</option>
                        <option value="Awaed" selected="2">奖励</option>
                        <option value="Subscribe">白名单</option>
                        <option value="PhaseII">早鸟</option>
                        <option value="PhaseIII">众售</option>
                        <option value="Store">商城</option>
                    </select>
                </div>
            </div>
            <div class="layui-form-item">
                <label class="layui-form-label">总额</label>
                <div class="layui-input-inline">
                    <input type="text" name="amount"  class="layui-input" >
                </div>
            </div>
            <div class="layui-form-item">
                <label class="layui-form-label">原本金额</label>
                <div class="layui-input-inline">
                    <input type="text" name="originalAmount"  class="layui-input" >
                </div>
            </div>
            <div class="layui-form-item">
                <label class="layui-form-label">奖励金额</label>
                <div class="layui-input-inline">
                    <input type="text" name="awardAmount"  class="layui-input" >
                </div>
            </div>
            <div class="layui-form-item">
                <label class="layui-form-label">支付类型</label>
                <div class="layui-input-inline">
                    <select name="payType" >
                        <option value="">请选择支付类型</option>
                        <option value="BTC" selected="2">BTC</option>
                        <option value="CNY">CNY</option>
                        <option value="ETH">ETH</option>
                    </select>
                </div>
            </div>
            <div class="layui-form-item">
                <label class="layui-form-label">支付金额</label>
                <div class="layui-input-inline">
                    <input type="text" name="payAmount"  class="layui-input">
                </div>
            </div>

            <div class="layui-form-item">
                <label class="layui-form-label">额外奖励</label>
                <div class="layui-input-inline">
                    <input type="text" name="extraAwardAmount"  class="layui-input">
                </div>
            </div>

            <div class="layui-upload">
                <button type="button" class="layui-btn" id="test2">交易截图上传</button>
                <blockquote class="layui-elem-quote layui-quote-nm" style="margin-top: 10px;">
                    预览图：
                    <div class="layui-upload-list" id="demo2"></div>
                </blockquote>
                <input type="hidden" name="tradeImgAddr">
            </div>
            <div class="layui-form-item">
                <label class="layui-form-label">用户支付钱包地址</label>
                <div class="layui-input-inline">
                    <input type="text" name="payWalletAddr"  class="layui-input">
                </div>
            </div>
            <div class="layui-form-item">
                <label class="layui-form-label">豆匣钱包收款地址</label>
                <div class="layui-input-inline">
                    <input type="text" name="shardersWalletAddr"  class="layui-input">
                </div>
            </div>
            <div class="layui-form-item">
                <label class="layui-form-label">备注</label>
                <div class="layui-input-inline">
                    <input type="text" name="memo"  class="layui-input">
                </div>
            </div>
            <div class="layui-form-item">
                <div class="layui-input-block">
                    <button class="layui-btn layui-bg-blue" lay-submit lay-filter="add_bill_form_submit" >立即提交</button>
                    <button type="reset" class="layui-btn layui-btn-primary">重置</button>
                </div>
            </div>
        </form>
    </div>
<div>
<#--修改账单的模板 start-->
<script id="edit_bill" type="text/html">
    <fieldset class="layui-elem-field layui-field-title" style="margin-top: 20px;">
        <legend>提示：状态1为已支付，2为待审核，3为未支付 已支付的不能修改</legend>
    </fieldset>
    <form class="layui-form" action="">
        <div class="layui-form-item" style="display: none;">
            <label class="layui-form-label">账单ID</label>
            <div class="layui-input-inline">
                <input type="text" name="id"  autocomplete="off" class="layui-input" value="{{d.id}}" disabled>
                <input type="hidden" name="userId"  autocomplete="off" class="layui-input" value="{{d.userId}}" disabled>
            </div>
        </div>
        <div class="layui-form-item">
            <label class="layui-form-label">状态</label>
            <div class="layui-input-inline">
                <input type="text" class="layui-input" value="{{d.status ||''}}"name="status">
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
                <input type="text" name="amount"  class="layui-input layui-disabled" value="{{d.amount||''}}" disabled>
            </div>
        </div>
        <div class="layui-form-item">
            <label class="layui-form-label">原本金额</label>
            <div class="layui-input-inline">
                <input type="text" name="originalAmount"  class="layui-input layui-disabled" value="{{d.originalAmount||''}}" disabled>
            </div>
        </div>
        <div class="layui-form-item">
            <label class="layui-form-label">奖励金额</label>
            <div class="layui-input-inline">
                <input type="text" name="awardAmount"  class="layui-input layui-disabled" value="{{d.awardAmount||''}}" disabled>
            </div>
        </div>
        <div class="layui-form-item">
            <label class="layui-form-label">支付类型</label>
            <div class="layui-input-inline">
                <input type="text" name="payType"  class="layui-input" value="{{d.payType||''}}">
            </div>
        </div>
        <div class="layui-form-item">
            <label class="layui-form-label">支付金额</label>
            <div class="layui-input-inline">
                <input type="text" name="payAmount"  class="layui-input" value="{{d.payAmount||''}}">
            </div>
        </div>
        <div class="layui-form-item">
            <label class="layui-form-label">额外奖励</label>
            <div class="layui-input-inline">
                <input type="text" name="extraAwardAmount"  class="layui-input" value="{{d.extraAwardAmount||''}}">
            </div>
        </div>
        <div class="layui-form-item">
            <label class="layui-form-label">备注</label>
            <div class="layui-input-inline">
                <input type="text" name="memo"  class="layui-input" value="{{d.memo||''}}">
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
<#--修改账单的模板 end-->
    <#--<div id="test">测试</div>-->
<#--添加账单的模板 start-->
<#--添加账单的模板 end-->
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

        layui.use(['laypage','layer','laytpl','table','layedit', 'form','upload'], function(){
            var table = layui.table
                    ,laypage = layui.laypage
                    ,laytpl = layui.laytpl
                    ,form = layui.form
                    ,layedit = layui.layedit
                    ,upload = layui.upload
                    ,layer = layui.layer;
            table.render({
                elem: '#bill_list'
                ,cellMinWidth: 80 //全局定义常规单元格的最小宽度，layui 2.2.1 新增
                ,cols: [[
                    {field:'id', width:80, title: '账单ID', sort: true,fixed: true}
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
                    ,{field:'tradeImgAddr', width:100, title: '交易截图'}
                    ,{field:'payWalletAddr', width:120, title: '用户支付地址'}
                    ,{field:'createDate', width:120, title: '创建时间', sort: true}
                    ,{field:'modifiedDate', width:120, title: '修改时间', sort: true}
                    ,{field:'memo', width:120, title: '备注'}
                    ,{fixed: 'right', width:178, align:'center', toolbar: '#barBtns'}
                ]]
                ,data:_result.result.userBills
                    ,id: 'testReload'
                ,page: true
            });

            //监听工具条
            table.on('tool(bill_list)', function(obj){
                var data = obj.data;
                if(obj.event === 'look-img'){
                   var arr = sSplit(data.tradeImgAddr);

                    if(isNotempty(arr)){
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
                if(isTrue(_data.success)){
                    layer.msg(_data.message,function () {
                        location.reload();
                    });
                }else{
                    layer.msg(_data.message);
                    return false;
                }
            }
            form.on('submit(add_bill_form_submit)', function(data){
                var requestUrl = "/userbill/add/bill.ss";
                commAjax(requestUrl,"post",data.field,addResult);
                return false;
            });
            var addResult = function (_data) {
                if(isTrue(_data.success)){
                    layer.msg(
                        _data.message,function () {
                        location.reload();
                    });
                }else{
                    layer.msg(_data.message);
                    return false;
                }
            }
            //多图片上传
            upload.render({
                elem: '#test2'
                ,url: '/img/pay_prove/upload.ss'
                ,multiple: true
                ,before: function(obj){
                    //预读本地文件示例，不支持ie8
                    obj.preview(function(index, file, result){
                        $('#demo2').append('<img src="'+ result +'" alt="'+ file.name +'" class="layui-upload-img">')
                    });
                }
                ,done: function(res){
                    var imgUrl = res.result.url;
                    var tradeImgAddr = $("input[name='tradeImgAddr']").val();
                    $("input[name='tradeImgAddr']").val(tradeImgAddr+imgUrl);
                }
            });
            var $ = layui.$, active = {
                reload: function(){
                    var demoReload = $('#demoReload');
                    //执行重载
                    table.reload('testReload', {
                        page: {
                            curr: 1 //重新从第 1 页开始
                        }
                        ,where: {
                            key: {
                                id: demoReload.val()
                            }
                        },

                    });
                },
                addBill: function(){
                    location.href="#add_bill";
                    $("#add_bill").css("display","block");
                }
            };

            $('.demoTable .layui-btn').on('click', function(){
                var type = $(this).data('type');
                console.log(type);
                active[type] ? active[type].call(this) : '';
            });

            $('.add-bill-btn').on('click', function(){
                var type = $(this).data('type');
                active[type] ? active[type].call(this) : '';
            });

            //监听选择来源
        });


    }

</script>

</@layout.htmlBody>

