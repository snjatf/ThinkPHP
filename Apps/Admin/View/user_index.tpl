<link href="__PUBLIC__/liger_ui/lib/ligerUI/skins/Aqua/css/ligerui-all.css" rel="stylesheet" type="text/css" />
<script src="__PUBLIC__/liger_ui/lib/jquery/jquery-1.9.0.min.js" type="text/javascript"></script>
<script src="__PUBLIC__/liger_ui/lib/ligerUI/js/core/base.js" type="text/javascript"></script>
<script src="__PUBLIC__/liger_ui/lib/ligerUI/js/ligerui.all.js" type="text/javascript"></script>
<script src="__PUBLIC__/liger_ui/lib/jquery.cookie.js"></script>
<script src="__PUBLIC__/liger_ui/lib/json2.js"></script>
<script type="text/javascript">
    //模板实体转换为JS对象
    var user_data=eval('('+'<{$user_list}>'+')');
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
            default:
                break;
        }


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
                            { text: '增加', click: itemclick, icon: 'add',img: '__PUBLIC__/liger_ui/lib/ligerUI/skins/icons/add.gif' },
                            { line: true },
                            { text: '修改', click: itemclick, icon: 'modify',img: '__PUBLIC__/liger_ui/lib/ligerUI/skins/icons/edit.gif' },
                            { line: true },
                            { text: '删除', click: deleteRow, img: '__PUBLIC__/liger_ui/lib/ligerUI/skins/icons/delete.gif' },
                            { line: true },
                            { text: '高级自定义查询', click: itemclick, img: '__PUBLIC__/liger_ui/lib/ligerUI/skins/icons/search2.gif'}
                        ]
                    },
                    checkbox: true
                });
        $("#pageloading").hide();
        $("#user_form").ligerForm();
        $("#user_role").ligerComboBox();
        $("#user_birth").ligerDateEditor();

    });

    function deleteRow(item)
    {
        g.deleteSelectedRow();
    }

    function getData()
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

    }

</script>

<div class="l-loading" style="display:block" id="pageloading"></div>


<div class="l-clear"></div>

<div id="main_grid"></div>

<div style="display:none;">

</div>

<div id="user_form" style="display: none">
    <table>
        <tbody><tr>
            <td>
                <label for="user_name">user_name：</label>
            </td>
            <td>
                <div class="l-text" style="width: 178px;">
                    <input id="user_name" name="user_name" type="text" class="ui-textbox l-text-field" ligeruiid="user_name" style="width: 174px;">
                    <div class="l-text-l"></div>
                    <div class="l-text-r"></div>
                </div>
            </td>
        </tr>
        <tr>
            <td>
                <label for="pwd1">Password：</label>
            </td>
            <td>
                <div class="l-text" style="width: 178px;">
                    <input id="pwd1" name="pwd" type="password" class="ui-password l-text-field" ligeruiid="pwd1" style="width: 174px;">
                    <div class="l-text-l"></div>
                    <div class="l-text-r"></div>
                </div>
            </td>
        </tr>
        <tr>
            <td>
                <label for="date1">user_birth：</label>
            </td>
            <td>
                <div class="l-text-wrapper" style="width: 178px;">
                    <div class="l-text l-text-date" style="width: 178px;">
                        <input id="user_birth" name="user_birth" type="text" class="ui-datepicker l-text-field" value="1992-02-02" ligeruiid="user_birth" style="width: 158px;">
                        <div class="l-text-l"></div>
                        <div class="l-text-r"></div>
                        <div class="l-trigger">
                        <div class="l-trigger-icon"></div>
                        </div>
                        <div class="l-trigger l-trigger-cancel" style="display: none;">
                            <div class="l-trigger-icon"></div>
                        </div></div></div>
            </td>
        </tr>
        <tr>
            <td>
                user_phone：
            </td>
            <td>
                <div class="l-text" style="width: 178px;">
                    <input name="user_phone" type="text" class="ui-spinner l-text-field" value="22" ligeruiid="user_phone" style="width: 158px;">
                    <div class="l-text-l"></div>
                    <div class="l-text-r"></div>
                    <div class="l-trigger"><div class="l-spinner-up">
                            <div class="l-spinner-icon"></div></div>
                        <div class="l-spinner-split"></div>
                        <div class="l-spinner-down">
                            <div class="l-spinner-icon"></div></div></div>
                </div>
            </td>
        </tr>
        <tr>
            <td>
               user_role：
            </td>
            <td>
                <select name="user_role" ligeruiid="user_role" style="display: none;">
                    <option value="0" selected="selected">开发</option>
                    <option value="1">测试</option>
                    <option value="2">PM</option>
                </select>
                <div class="l-text-wrapper">
                    <div class="l-text l-text-combobox" style="width: 178px;">
                        <input type="text" readonly="true" id="_txt" validate="{required:true}" data-comboboxid="user_role" class="l-text-field" style="width: 158px;">
                        <div class="l-text-l"></div>
                        <div class="l-text-r"></div>
                        <div class="l-trigger">
                            <div class="l-trigger-icon"></div></div></div>
                    <input type="hidden" name="_txt_val" id="_txt_val" data-ligerid="user_role" value="1">
                </div>
            </td>
        </tr>
        <tr>
            <td>
            </td>
            <td>
                <input value="setData" type="button" onclick="setData()">
                <input value="getData" type="button" onclick="getData()">
                <input value="jquery获取数据" type="button" onclick="submitForm()">
            </td>
        </tr>
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
