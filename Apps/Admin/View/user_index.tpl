<link href="__PUBLIC__/liger_ui/lib/ligerUI/skins/Aqua/css/ligerui-all.css" rel="stylesheet" type="text/css" />
<script src="__PUBLIC__/liger_ui/lib/jquery/jquery-1.9.0.min.js" type="text/javascript"></script>
<script src="__PUBLIC__/liger_ui/lib/ligerUI/js/core/base.js" type="text/javascript"></script>
<script src="__PUBLIC__/liger_ui/lib/ligerUI/js/ligerui.all.js" type="text/javascript"></script>
<script src="__PUBLIC__/liger_ui/lib/jquery.cookie.js"></script>
<script src="__PUBLIC__/liger_ui/lib/json2.js"></script>
<script type="text/javascript">
    //模板实体转换为JS对象
    var user_data=eval('('+'<{$user_list}>'+')');
/*
    function itemclick(item)
    {
        switch(item.text)
        {
            case "高级自定义查询":
                g.options.data = $.extend(true,{}, user_data);
                g.showFilter();
                break;
            case "增加":
                $.ligerDialog.open({ target: $("#user_form"),title:"新增用户",width:550,height:350});
                break;
            case "修改":
                $.ligerDialog.open({ target: $("#user_form"),title:"修改用户",width:550,height:350});
            default:
                break;
        }
    }*/

    function toolbarBtnItemClick(item) {
        switch (item.id) {
            case "add":
                CRUD({}, 1, '新增');
                break;
            case "show":
                CRUD(selected, 3, '查看');
                break;
            case "edit":
                CRUD(selected, 2, '修改');
                break;
            case "delete":
                var selected = g.getSelected();
                if (!selected) { $.ligerDialog.warn('请选择行!'); return }
                $.ligerDialog.confirm('确定删除吗?', function (confirm) {
                    if (confirm)
                        g.deleteSelectedRow();
                        //前端删除了数据库并没有
                        //f_delete();
                });
                break;
        }
    }

    //crudflg->1:add; 2:edit; 3:show;
    function CRUD(data, crudflg, t) {
        var dialog={
            target: $("#user_form"),
            title:t,
            width:600,
            height:350
        };
        $("#id").val("");
        $("#user_code").val("");
        $("#user_name").val("");
        $("#user_email").val("");
        $("#user_phone").val("");
        $("#user_pwd").val("");
        $("#user_role").val(1);
        $("#is_delete").val(0);
        $("#is_active").val(1);
        $("#user_birth").val("");
        if(crudflg==1||crudflg==2){
            //add和edit有提交按钮
            dialog={
                target: $("#user_form"),
                title:t,
                width:600,
                height:350,
                buttons: [
                    { text: '提交', onclick: function (item, dialog) { alert(item.text); } },
                    //{ text: '取消', onclick: function (item, dialog) { dialog.close(); } }
                ]
            };
        }
        if(crudflg==1){
            //add
        }
        else{
            var selected = g.getSelected();
            if (!selected) { $.ligerDialog.warn('请选择行!'); return }
            $("#id").val(selected.id);
            $("#user_code").val(selected.user_code);
            $("#user_name").val(selected.user_name);
            $("#user_email").val(selected.user_email);
            $("#user_phone").val(selected.user_phone);
            $("#user_pwd").val(selected.user_pwd);
            $("#user_role").val(selected.user_role);
            $("#is_delete").val(selected.is_delete);
            $("#is_active").val(selected.is_active);
            $("#user_birth").val(selected.user_birth);
        }
        /*if(crudflg=3){
            //锁定textbox.attr("disabled",true);
            $("#id").attr("disabled",true);
            $("#user_code").attr("disabled",true);
            $("#user_name").attr("disabled",true);
            $("#user_email").attr("disabled",true);
            $("#user_phone").attr("disabled",true);
            $("#user_pwd").attr("disabled",true);
            $("#user_role").attr("disabled",true);
            $("#is_delete").attr("disabled",true);
            $("#is_active").attr("disabled",true);
            $("#user_birth").attr("disabled",true);
        }*/
        $.ligerDialog.open(dialog);
    }

    $(function ()
    {
        window['g'] =
                $("#main_grid").ligerGrid({
                    height: '99%',
                    columns: [
                        { display: '用户名', name: 'user_name', align: 'left', width: 100, minWidth: 60 },
                        { display: '编码', name: 'user_code', minWidth: 120 },
                        { display: '邮箱', name: 'user_email', minWidth: 140},
                        { display: '联系方式', name: 'user_phone' },
                        { display: '状态', name: 'is_active' }

                    ], data: user_data, pageSize: 30, rownumbers: true,
                    toolbar: {
                        items: [
                            { text: '增加', click: toolbarBtnItemClick, icon: 'add',img: '__PUBLIC__/liger_ui/lib/ligerUI/skins/icons/add.gif',id:'add' },
                            { line: true },
                            { text: '查看', click: toolbarBtnItemClick, icon: 'modify',img: '__PUBLIC__/liger_ui/lib/ligerUI/skins/icons/edit.gif' ,id:'show'},
                            { line: true },
                            { text: '修改', click: toolbarBtnItemClick, icon: 'modify',img: '__PUBLIC__/liger_ui/lib/ligerUI/skins/icons/edit.gif' ,id:'edit'},
                            { line: true },
                            { text: '删除', click: toolbarBtnItemClick, img: '__PUBLIC__/liger_ui/lib/ligerUI/skins/icons/delete.gif',id:'delete' },
                            { line: true },
                            { text: '高级自定义查询', click: toolbarBtnItemClick, img: '__PUBLIC__/liger_ui/lib/ligerUI/skins/icons/search2.gif'}
                        ]
                    },
                    checkbox: true
                });
        $("#pageloading").hide();
//        $("#user_form").ligerForm();
//        $("#user_role").ligerComboBox();
//        $("#user_birth").ligerDateEditor();
        loadDialog();

    });
    //加载模态框表单初始数据
    function loadDialog(){
        $("#user_role").ligerComboBox(
                {
                    data:[
                        { id: 1, role: '管理员'},
                        { id: 2, role: '游客'}
                    ],
                    valueField : 'id',
                    textField: 'role',
                    value:1,
                    width:178
                }
        );
        $("#is_delete").ligerComboBox(
                {
                    data:[
                        { id: 0, delete: '未删除'},
                        { id: 1, delete: '已删除'}
                    ],
                    valueField : 'id',
                    textField: 'delete',
                    value:0,
                    width:178
                }
        );
        $("#is_active").ligerComboBox(
                {
                    data:[
                        { id: 0, actove: '未启用'},
                        { id: 1, actove: '已启用'}
                    ],
                    valueField : 'id',
                    textField: 'actove',
                    value:1,
                    width:178
                }
        );
        $("#user_birth").ligerDateEditor(
            {
                format: "yyyy/MM/dd",
                width:178,
                cancelable : true
            });
    }

    //crudflg->1:add; 2:edit;
    function commit(crudflg){

    }
/*    function deleteRow(item)
    {
        g.deleteSelectedRow();
    }*/
    /*function getData()
    {
        var form = liger.get("user_form");
        var data = form.getData();
        alert(JSON.stringify(data));
    }
    function setData()
    {
        var obj = {
            username: "abc",
            pwd: "1234",
            area : "广东",
            birthDay: "2020-11-12",
            age : 45,
            married: true,
            depart : "2",
            country1: "en",
            country1_mul: "en;cn",
            country2: "en",
            country3: "en",
            country4: "en",
            country4_mul: "en;cn",
        };
        var form = liger.get("user_form");
        form.setData(obj);
    }
    function submitForm()
    {
        var data = {};
        $("input,select,textarea").each(function ()
        {
            var name = $(this).attr("name");
            if (name && name.indexOf('ligerui') == -1)
            {
                data[name] = this.value;
            }
        });
        alert(JSON.stringify(data));

    }*/
</script>
<!-- 加载动画 -->
<div class="l-loading" style="display:block" id="pageloading"></div>

<div class="l-clear"></div>

<div id="main_grid"></div>

<div style="display:none;"></div>
<!-- 模态框 add -->
<div id="user_form" style="display: none">
    <table>
        <tbody>
        <tr  >
            <td>
                id：
            </td>
            <td>
                <div class="l-text" style="width: 178px;">
                    <input id="id" type="text" class="ui-textbox l-text-field" ligeruiid="id" style="width: 174px;" value="123456">
                </div>
            </td>
        </tr>
        <tr>
            <td>
                user_code：
            </td>
            <td>
                <div class="l-text" style="width: 178px;">
                    <input id="user_code" type="text" class="ui-textbox l-text-field" ligeruiid="user_code" style="width: 174px;">
                </div>
            </td>
            <td>
                user_name：
            </td>
            <td>
                <div class="l-text" style="width: 178px;">
                    <input id="user_name" type="text" class="ui-textbox l-text-field" ligeruiid="user_name" style="width: 174px;">
                </div>
            </td>
        </tr>
        <tr>
            <td>
                user_email：
            </td>
            <td>
                <div class="l-text" style="width: 178px;">
                    <input id="user_email" type="text" class="ui-password l-text-field" ligeruiid="user_email" style="width: 174px;">
                </div>
            </td>
            <td>
                user_phone：
            </td>
            <td>
                <div class="l-text" style="width: 178px;">
                    <input id="user_phone" type="text" class="ui-spinner l-text-field" ligeruiid="user_phone" style="width: 158px;">

                </div>
            </td>
        </tr>
        <tr>
            <td>
                user_pwd：
            </td>
            <td>
                <div class="l-text" style="width: 178px;">
                    <input id="user_pwd" name="user_pwd" type="password" class="ui-spinner l-text-field" ligeruiid="user_pwd" style="width: 158px;">

                </div>
            </td>
            <td>
                user_role：
            </td>
            <td>
                    <input type="text" id="user_role" style="display: none" />
            </td>
        </tr>
        <tr>
            <td>
                is_delete：
            </td>
            <td>
                <input id="is_delete" type="text"style="display: none">
            </td>
            <td>
                is_active：
            </td>
            <td>
                <input id="is_active" type="text" style="display: none">
            </td>
        </tr>
        <tr>
            <td>
                <label for="date1">user_birth：</label>
            </td>
            <td>
                <input id="user_birth" type="text" style="width: 158px;">
            </td>
        </tr>
        <!--<tr>
            <td>
            </td>
            <td>
                <input value="setData" type="button" onclick="setData()">
                <input value="getData" type="button" onclick="getData()">
                <input value="jquery获取数据" type="button" onclick="submitForm()">
            </td>
        </tr>
        -->
        </tbody>
    </table>
</div>


<style type="text/css">
    h1
    {
        font-size:20px;
        font-family:Verdana;
    }
    h4
    {
        font-size:16px;
        margin-top:25px;
        margin-bottom:10px;
    }

    .description
    {
        padding-bottom:30px;
        font-family:Verdana;
    }
    .description h3
    {
        color:#CC0000;
        font-size:16px;
        margin:0 30px 10px 0px;
        padding:45px 0 8px;
        border-bottom:solid 1px #888;
    }
    td {
        padding: 5px;
    }

</style>
