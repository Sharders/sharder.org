<@layout.htmlHead title="sharders配置"  >

</@layout.htmlHead>


<#--<div id="edit_view"></div>-->

<@layout.htmlBody>
    <#--功能描述
        sharders配置：
        提供修改sharders配置的值 key不允许改，只有修改，查询，没有删除，
    -->

<table class="layui-hide" id="sharders_config" lay-filter="config"></table>

<script id="edit_config" type="text/html">
    <form class="layui-form" action="">
        <div class="layui-form-item">
            <label class="layui-form-label">键</label>
            <div class="layui-input-inline">
                <input type="text" name="key"  autocomplete="off" class="layui-input" value="{{d.key}}" disabled>
            </div>
        </div>
        <div class="layui-form-item">
            <label class="layui-form-label">值</label>
            <div class="layui-input-inline">
                <input type="text" class="layui-input" value="{{d.value}}"name="value">
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


<script>
    var shardersConfigs = new Array();
    <#list shardersConfig as it>
    var shardersConfig = new Object();
        shardersConfig.key = "${it.key!}";
        shardersConfig.value = "${it.value!}";
        shardersConfig.memo = "${it.memo!}";
        shardersConfigs.push(shardersConfig);
    </#list>

    layui.use(['form','laytpl','table'], function(){
        var table = layui.table,
            laytpl = layui.laytpl,
            form = layui.form;
        //展示已知数据
        table.render({
            elem: '#sharders_config'
            ,cols: [[ //标题栏
                {field: 'key', title: '键', width: 400}
                ,{field: 'value', title: '值', width: 120}
                ,{field: 'memo', title: '备注', minWidth: 150}
                ,{fixed: 'right', width:178, align:'center', toolbar: '#barBtns'}
            ]]
            ,data: shardersConfigs
            //,skin: 'line' //表格风格
            ,even: true
            ,page: true //是否显示分页
            //,limits: [5, 7, 10]
            //,limit: 5 //每页默认显示的数量
        });

        //监听工具条
        table.on('tool(config)', function(obj){
            var data = obj.data;
            if(obj.event === 'detail'){
            } else if(obj.event === 'del'){
            } else if(obj.event === 'edit'){
//                layer.open({
//                    title:'sharders配置修改',
//                    type: 1,
//                    area: ['500px', '300px'],
//                    content: $('#edit_view')
//                });
                layer.open({
                    title:'sharders配置修改',
                    type: 1,
                    area: ['500px', '300px'],
                    content: "<div id='edit_view'></div>",
                });
                var getTpl = edit_config.innerHTML
                        ,view = document.getElementById('edit_view');
                laytpl(getTpl).render(data, function(html){
                    view.innerHTML = html;
                });
            }
        });
        //监听提交
        form.on('submit(v_sumbit)', function(data){
            var requestUrl = "/config/edit.ss";
            commAjax(requestUrl,"post",data.field,editResult);
            return false;
        });
        var editResult = function (_data) {
            if(isTrue(_data.success)){
                layer.msg("修改成功",function () {
                    location.reload();
                });
            }else{
                return false;
            }
        }
    });
</script>
<script type="text/html" id="barBtns">
    <a class="layui-btn layui-btn-xs layui-bg-blue" lay-event="edit">编辑</a>
</script>
</@layout.htmlBody>

