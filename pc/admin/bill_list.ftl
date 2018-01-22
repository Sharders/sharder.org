<@layout.htmlHead title="账单列表"  >

</@layout.htmlHead>


<#--<div id="edit_view"></div>-->
<@layout.htmlBody>
<#--功能描述
    账单列表，查看用户的投资记录
-->

<table class="layui-hide" id="bill_list"></table>



<script>
    layui.use('table', function(){
        var table = layui.table;

        table.render({
            elem: '#bill_list'
            ,url:'/invest/querys_async.ss'
            ,cellMinWidth: 80 //全局定义常规单元格的最小宽度，layui 2.2.1 新增
            ,cols: [[
                {field:'userId', width:80, title: '用户名'}
                ,{field:'pId', width:80, title: '性别', sort: true}
                ,{field:'memo', width:80, title: '城市'}
            ]]
        });
    });
</script>

</@layout.htmlBody>

