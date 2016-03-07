<extend name="admin:base" />
<block name="menu">
    <div id="topmenu" class="l-topmenu">
        <div class="l-topmenu-logo"><?php echo C('site_name',null,'通用')?>后台管理系统</div>
        <div class="l-topmenu-welcome">
            <label> 皮肤：</label>
            <select id="skinSelect">
                <option value="aqua">默认</option>
                <option value="silvery">Silvery</option>
                <option value="gray">Gray</option>
                <option value="gray2014">Gray2014</option>
            </select>
            <a href="#" class="l-link2">当前用户：wonder4</a>
            <span class="space">|</span>
            <a href="#" class="l-link2" target="_blank">注销</a>
            <span class="space">|</span>
            <a href="#" class="l-link2" target="_blank">退出</a>
        </div>
    </div>
</block>
<block name="main">
    <div id="layout1" style="width:99.2%; margin:0 auto; margin-top:4px; ">
        <div position="left"  title="主要菜单" id="accordion1">
            <div title="功能列表" class="l-scroll">
                <ul id="tree1" style="margin-top:3px;">
            </div>
            <div title="应用场景">
                <div style=" height:7px;"></div>
                <a class="l-link" href="http://www.ligerui.com/go.aspx?id=case" target="_blank">演示系统</a>
                <a class="l-link" href="javascript:f_addTab('listpage','列表页面','demos/case/listpage.htm')">列表页面</a>
                <a class="l-link" href="demos/dialog/win7.htm" target="_blank">模拟Window桌面</a>
                <a class="l-link" href="javascript:f_addTab('week','工作日志','demos/case/week.htm')">工作日志</a>
            </div>
            <div title="实验室">
                <div style=" height:7px;"></div>
                <a class="l-link" href="lab/generate/index.htm" target="_blank">表格表单设计器</a>
                <a class="l-link" href="lab/formdesign/index.htm" target="_blank">可视化表单设计</a>
            </div>
        </div>
        <div position="center" id="framecenter">
            <div tabid="home" title="我的主页" style="height:300px" >
                <iframe frameborder="0" name="home" id="home" src="welcome.htm"></iframe>
            </div>
        </div>

    </div>
</block>
<block name="footer">
    <div  style="height:32px; line-height:32px; text-align:center;">
        Copyright © 2011-2014 www.ligerui.com
    </div>
</block>