<%@page pageEncoding="UTF-8" contentType="text/html; UTF-8" isELIgnored="false" %>
<script>
    $(function () {

        //表格初始化
        $("#userlist").jqGrid({
            //width:800,
            styleUI: "Bootstrap",//设置为bootstrap风格的表格
            url: "${pageContext.request.contextPath}/emp/findAll",//获取服务端数据url 注意获取结果要json
            datatype: "json",//预期服务器返回结果类型
            mtype: "post",//请求方式
            colNames: ["编号", "姓名", "工资", "生日", "操作"],//列名称数组
            colModel: [
                {name: "id", align: 'center', hidden: true},//colModel中全部参数都写在列配置对象
                {name: "name", editable: true,},
                {name: "salary", editable: true,},
                /* {name:"sex",editable:true,edittype:"select",
                 editoptions:{ //1.本地方式获取数据   //2.远程方式获取数据
                 value:"21:男;22:女",//本地数据
                 //dataUrl:"/dept/showAllDepts",// "<select><option value="21">研发部</option></select>"//获取所有部门 远程数据获取的不是json数据 获取是html标签字符串
                 }
                 },*/
                {
                    name: "bir", editable: true, index: 'bir', formatter: "date", formatoptions: {
                    srcformat: "Y-m-d", newformat: "Y-m-d"
                }
                },

                {
                    name: "options",
                    formatter: function (cellvalue, options, rowObject) {  //对当前单元格数据格式化
                        var id = rowObject.id;
                        //return "<button class='btn btn-success' onclick=\"editRow("+id+");\">修改</button>&nbsp;&nbsp;<button class='btn btn-danger'>删除</button>  ";
                        return `<button class="btn btn-success" onclick="editRow('` + id + `');">修改</button>&nbsp;&nbsp;<button class='btn btn-danger' onclick="delRow('` + id + `');">删除</button>`;
                    }
                }
            ],//列数组值配置列对象
            pager: "#pager",//设置分页工具栏html
            // 注意: 1.一旦设置分页工具栏之后在根据指定url查询时自动向后台传递page(当前页) 和 rows(每页显示记录数)两个参数
            rowNum: 2,//这个代表每页显示记录数
            rowList: [2, 4, 10, 20],//生成可以指定显示每页展示多少条下拉列表
            viewrecords: true,//显示总记录数
            caption: "用户列表",//表格标题
            cellEdit: true,//开启单元格编辑功能
            editurl: "${pageContext.request.contextPath}/emp/crud",//开启编辑时执行编辑操作的url路径  添加  修改  删除
            autowidth: true,//自适应外部容器
            multiselect: true,
            rownumbers: true,
            height: 300,//指定表格高度
            toolbar: [true, 'top'],//给表格指定工具栏  如果工具栏位置为top 工具栏id为:t_tableid  下面位置tb_tableid
            gridComplete: function () { //给表格加入一个完成事件
                //添加的工具栏
                $("#t_userlist").empty().append("<button class='btn btn-primary' onclick='saveRow();'>添加</button>&nbsp;&nbsp;<button class='btn btn-primary'>下载所有数据</button>")
            },

        }).navGrid(
            "#pager",//参数1: 当前分页工具栏
            {add: true, edit: true, del: true, search: true, refresh: true}, //开启编辑操作
            {closeAfterEdit: true, height: 300, width: 600, editCaption: "编辑用户信息", reloadAfterSubmit: true},//对编辑面板的配置对象
            {closeAfterAdd: true, height: 500, width: 600, addCaption: "用户添加", reloadAfterSubmit: true},//对添加面板的配置对象
            {},//对删除时的配置对象
            {
                sopt: ['eq', 'ne']//配置搜索条件如何
            },//对搜索时的配置对象
        );//开启增删改工具按钮  注意:1.这里存在一个bug surl为实现

    });

    function saveRow() {
        //参数1:方法名  参数2......:方法参数
        $("#userlist").jqGrid('editGridRow', "new", {
            height: 500,
            reloadAfterSubmit: true,
            closeAfterAdd: true
        });
    }
    //修改一条记录
    function editRow(id) {
        console.log(id);
        $("#userlist").jqGrid('editGridRow', id, {
            height: 300,
            reloadAfterSubmit: false
        });
    }
    //删除一条记录
    function delRow(id) {
        if (window.confirm("确定要删除吗?")) {
            $("#userlist").trigger('reloadGrid');
            /*//发送ajax请求删除
             $.post("/delete",{id:id},function(){
             //刷新表格
             $("#userList").trigger('reloadGrid');//刷新表格
             });*/
        }

    }
</script>
<div class="page-header">
    <h2>员工管理</h2>
</div>
<ul class="nav nav-tabs">
    <li class="active"><a>员工信息</a></li>
</ul>
<div class="panel">
    <!--创建表格-->
    <table id="userlist" class="table table-bordered"></table>

    <!--分页工具栏-->
    <div id="pager"></div>
    <div class="alert alert-success" role="alert" id="addUserMsg" style="display: none">
        <button type="button" class="close" data-dismiss="alert" aria-label="Close">
            <span aria-hidden="true">×</span></button>
        <strong id="msgShow"></strong>
    </div>
</div>

