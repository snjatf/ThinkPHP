﻿<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title></title>
    <script src="__PUBLIC__/liger_ui/lib/jquery/jquery-1.9.0.min.js" type="text/javascript"></script>
    <script type="text/javascript">
        jQuery(f_init);

        function f_addTabItem(url, text)
        {
            var tabid = "ligerui" + new Date().toDateString();
            parent.f_addTab(tabid, text, url);
        }


        function f_init()
        {
            var v133 = [ 
                { tag: '表单', type: '优化', content: 'checkboxlist增加参数urlParms和ajaxContentType,radiolist增加参数urlParms' },
                { tag: '表单', type: '优化', content: '下拉框增加isTextBoxMode和setTextBySource参数，onChangeValue事件' },
                { tag: 'Drag', type: '优化', content: '增加minIsHide参数' },
                { tag: '过滤器', type: '优化', content: 'field增加operator参数(操作符以逗号隔开)' },
                { tag: '过滤器', type: 'BUG', content: '修复getData()对空值无效的情况' },
                { tag: '表单', type: '优化', content: '优化html自动表单,使getData()支持隐藏域和文本框' },
                { tag: '表格树', type: '优化', content: '优化 表格-树 收缩/展开 时的细节' },
                { tag: '表格树', type: '优化', content: 'tree参数增加isExtend属性,可控制初始化 收缩/展开 状态' },
                 { tag: '表格树', type: '优化', content: '增加异步加载子节点的例子' },
                { tag: '表格', type: 'BUG', content: '修复弹出框popupedit配合时无效的问题' },
                 { tag: '布局', type: '优化', content: 'Layout增加事件onLeftToggle和onRightToggle，Panel增加事件onToggle' },
                  { tag: 'Tab', type: 'BUG', content: '修复Layout配合使用时,layout收缩左侧时宽度没有自适应的问题' },
                 { tag: '表单', type: '优化', content: 'popupedit增加参数method、async、data、searchClick' },
                   { tag: '下拉框', type: 'BUG', content: '修复下拉框-树的属性selectBoxHeight 无效无法更改高度 的问题' },
                   { tag: '下拉框', type: 'BUG', content: '修复当autocomplete为函数时，空值不触发的问题' },
                       { tag: '下拉框', type: '优化', content: '使下箭头操作支持下拉框grid' },
              { tag: '下拉框', type: 'BUG', content: '修复 用tree数据 后selectValue无法设置选中行 的问题' },
               
            ];

            var v132= [
                   { tag: '核心', type: '优化', content: '控件增加对data-XXX自动属性的加载' },
                     { tag: '表单', type: '优化', content: '所有异步加载数据组件都设置ajaxType参数' },
                     { tag: '树', type: '优化', content: '增加enabledCompleteCheckbox参数(是否启用半选择模式)' },
                      { tag: '表单', type: '优化', content: '优化editorBulider(html自动表单创建自定义函数)，使支持getData、setData和验证的正常使用' },
                    { tag: '下拉框', type: 'BUG', content: '解决在firefox无法自动完成的问题' },
               { tag: '数值编辑器', type: 'BUG', content: '解决在firefox无法正常显示的问题' },
              { tag: '表格', type: 'BUG', content: '解决表格树 展开/折叠 无法保持子节点 展开/折叠 状态 的问题' },
                            { tag: '表格', type: '优化', content: '优化 部分浏览器表格编辑定位' },
              { tag: '下拉框', type: '优化', content: '解决 下拉框树 setValue 方法当值为0时不正常设置 的问题' },
              { tag: '表单', type: '优化', content: 'combobox/listbox/checkboxlist/radiolist 增加对:hidden(隐藏域)初始化的支持' }


            ];


            var v131 = [
                    { tag: '表格', type: '需求', content: '增加滚动时分页的功能(参数scrollToPage)' },
               { tag: '核心', type: '优化', content: '优化所有需要用到异步加载数据的组件参数contentType' },
              { tag: '下拉框', type: 'BUG', content: '解决下拉框树如果用了delay，初始化时选不中的问题。' },
              { tag: 'Tree', type: '优化', content: 'selectNode()和cancelSelect()增加是否触发选择事件(默认触发)' },
              { tag: '下拉框', type: '优化', content: '增加初始化是否触发选择事件的选项' },
              { tag: '下拉框', type: '优化', content: '增加conditionSearchClick(下拉框表格搜索按钮自定义函数)(应用例子：下拉框 - 分页表格(带搜索))' },
            { tag: '表格', type: '优化', content: '刷新方法reload()增加参数(指定页),比如 reload(1)' },
         
             { tag: 'Tab', type: '优化', content: '增加方法hideTabItem和showTabItem' }
            
            ];
            var v130 = [
                 { tag: '核心', type: '优化', content: '所有需要用到url加载数据或页面的地方，增加urlParms和contentType支持。' },
                { tag: '核心', type: '优化', content: '重点整理了Grid、Form、ComboBox，增加了若干个属性参数和方法，优化了部分代码，增强了部分功能。' },
                { tag: '表单', type: '优化', content: '优化TextBox ，增加 initSelect、precision参数，支持初始化全选和小数点控制' },
                { tag: '布局', type: '优化', content: '优化Tab，增加onSwitchRender事件，getTabItemTitle、setTabItemTitle、getTabItemSrc、setTabItemSrc方法' },
                { tag: '布局', type: '优化', content: '优化Panel，增加showRefresh参数' },
                { tag: '基础', type: '优化', content: '优化Menu ，增加 cls参数' },
                { tag: '表单', type: '优化', content: '优化checkboxList ，增加 getText方法' },
                { tag: '弹窗', type: '优化', content: '优化Dialog，增加layoutMode参数' },
                { tag: '基础', type: '优化', content: '优化Drag，增加clickDelay参数' },
                { tag: '基础', type: '优化', content: '优化Filter，增加buttonCls参数' },
                 { tag: '布局', type: '优化', content: 'Tab组件addTabItem方法中的参数options.callback对于 content和target也有效' },
                 { tag: '表单', type: '优化', content: '日期控件赋值后获取值为NULL ' },
                  { tag: '布局', type: '优化', content: 'accordion增加小图标的功能  ' },
                   { tag: '基础', type: '优化', content: 'dialog组件使用load方式加载url时，不能设置height的问题 ' },
                { tag: '树', type: '优化', content: '优化Tree，增加idField、parentIDField，支持线性数据的自动识别、支持局部刷新' }
            ];


            var v125 = [
                { tag: '核心', type: '优化', content: 'grid表格在第一列有系统控件（序号、checkbox等）按钮时，百分比列宽没有把它计算在内。' },
                { tag: '下拉框', type: '优化', content: '打开下拉框以后，单击其他控件或空白处隐藏弹出框。以前单击其他输入框无法隐藏。' },
                { tag: '下拉框', type: '优化', content: '清除下拉框内容的时候重设高度' },
                { tag: '下拉框', type: '优化', content: '清除前下拉框高度会有auto和px两种情况，清除内容以后建议重新计算高度。' },
                 { tag: '表单', type: '需求', content: '对于数据容器相关的控件，支持设置dictionary属性' },
                { tag: '表单', type: '优化', content: '修复ligerForm中getEditor方法获取不到Tab中的编辑器' },
                { tag: '表单', type: '需求', content: 'form的field增加afterContent参数，可扩展后置内容' },
                { tag: '表单', type: '需求', content: 'ligerForm增加setEnabled和setVisible方法' },
                { tag: '表单', type: '需求', content: 'ligerForm增加showFieldError和hideFieldError方法，用于手工显示/隐藏指定字段的错误信息' },
                { tag: '表单', type: '需求', content: 'ligerForm增加setFieldValidate方法，用于动态设置字段的验证信息' },
                { tag: '表格', type: '优化', content: 'grid的url支持动态设置(可以为function类型)' },
                { tag: '表格', type: '优化', content: '修复grid分组行双击编辑时出错的问题' },
                { tag: '表格', type: '优化', content: '修复grid中extendDetail方法遍历不对的问题' },
                { tag: '表格', type: '优化', content: '修复grid误把已删除行汇总进去的问题' },
                { tag: '表单', type: '优化', content: '修复popup控件没有data-ligerid的问题' },
                { tag: '表单', type: '需求', content: 'radiolist增加onSelect事件' },
                { tag: '树', type: '需求', content: 'tree增加reload方法' },
                { tag: '树', type: '优化', content: '解决树无法设置parms的问题' },
                { tag: '树', type: '优化', content: ' tree修复多选checkbox为true时调用selectNode方法选择节点会取消已经选中节点的问题' },
                { tag: '下拉框', type: '优化', content: '     修复下拉框和日期选择器控件在IE6下的兼容性问题.' },
                { tag: '下拉框', type: '优化', content: '     清除下拉框内容的时候重设高度（清除前下拉框高度会有auto和px两种情况，清除内容以后建议重新计算高度。）' },
                { tag: '下拉框', type: '需求', content: '     新增下拉框中获取树对象的接口（二次开发的时候需要下拉框中的树对象，实现动态加载等功能）' },
                { tag: '下拉框', type: '优化', content: '     下拉框避免同一界面弹出多个菜单的问题' },
                { tag: '下拉框', type: '优化', content: '    修复下拉框findTextByValue不适用于下拉grid的情形。' },
                { tag: '弹窗', type: '需求', content: '   给dialog增加contentCls属性. 否则无法控制内层div的样式.' },
                { tag: '表格', type: '需求', content: '   grid增加属性autoFilter和方法showFilter ,用于高级过滤功能' },
                { tag: '表格', type: '优化', content: '     修正toolbar父容器在低版本浏览器下, 因height为0 导致不能显示的问题' },
                { tag: '表单', type: '优化', content: '   form控件增加_setData内部方法' },
                { tag: '核心', type: '优化', content: ' 当在同一个div上反复调用liger组件时, 会导致后一次生成新的id, 而使数据错乱. 修改这个行为, 使得后一次的创建直接覆盖前一次' },
                { tag: '表格', type: '需求', content: '  grid 翻页时向服务器端提交一个标记. 用于区分翻页行为与重新加载行为. 当翻页时, 服务器端不再读取总行数. 只有刷新时才重新读取总行数.' },
                { tag: '表单', type: '优化', content: '     在IE8下会出现高度过低, 显示异常的问题. 所以显式指定高度为100%.' },
                { tag: '表单', type: '优化', content: '     优化自动完成功能的性能: 当用户快速录入时, 并不是每敲一下键盘就需要到服务器取一次数据, 而是只在最后一次才取数据.' },
                { tag: '表单', type: '优化', content: '   ligerTextBox: 增加setValue方法. 便于以程序的方式设置控件的值.' }, 
                { tag: '表格', type: '优化', content: '   修改getChanges函数,使返回的结果保留__status属性,否则返回的结果无法区分状态,没有实际用处.' },
                { tag: '树', type: '优化', content: '   修正tree数据重复显示的问题' },
                { tag: '表单', type: '需求', content: '   给Input基类增加setReadonly方法' },
                { tag: '过滤器', type: '需求', content: '   ligerFilter原condition功能仅能用于服务器端数据源, 增加对客户端数据源的搜索功能.' }
            ];
             

            var v124 = [
{ tag: '核心', type: '需求', content: '所有组件统一增加cls属性' },
{ tag: 'Dialog', type: '优化', content: '解决界面样式在浏览器表现不一致的问题' },
{ tag: '下拉框', type: '优化', content: '解决select类型数据清空的问题,默认不显示“空行”选项' },
{ tag: '表单', type: 'BUG', content: '修复没有生成ID导致验证有误的问题' },
{ tag: '布局', type: '需求', content: 'accordion最后一个元素增加css类l-accordion-header-downfirst' },
{ tag: 'Dialog', type: '需求', content: '增加对自适应宽度的支持' }, 
{ tag: '表单', type: '优化', content: '增加对页签的支持,field增加hideSpace和hideLabel参数' },
{ tag: '表格', type: '优化', content: '增加参数editorTopDiff(编辑器位置误差调整)' },
{ tag: '布局', type: '优化', content: 'Layout增加centerbottom区域(中间下方区域),相关参数有centerBottomHeight、allowCenterBottomResize' },
{ tag: '菜单', type: '优化', content: '增加方法setMenuText(修改项文本)' }, 
{ tag: '工具条', type: '优化', content: '项增加文本类型' }
            ];


            var v123 = [
{ tag: '核心', type: '需求', content: '增加一套皮肤' },
{ tag: '表格', type: '优化', content: '编辑时显示的输入框自动获得焦点' },
{ tag: '表格', type: 'BUG', content: '修复列对齐、行对齐的问题' },
{ tag: '表格', type: '优化', content: '增加方法collapseAll、expandAll,增加事件onTreeCollapse、onTreeExpand、onTreeCollapsed、onTreeExpanded' },
{ tag: '表格', type: 'BUG', content: '修复Popup编辑器在多选模式下无法取消选项的问题' },
{ tag: '树', type: '需求', content: '增加方法refreshTree' },  
{ tag: 'Tab', type: '需求', content: '增加参数showSwitch(显示切换窗口按钮)、ShowSwitchInTab(切换窗口按钮显示在最后一项)' }, 
{ tag: 'Tab', type: '需求', content: '事件onReload、onBeforeAddTabItem、onAfterAddTabItem参数改为Tab选项数据' },
{ tag: '组件', type: '需求', content: '增加Panel和Portal组件' },
{ tag: '下拉框', type: '优化', content: '增加参数emptyText,使得增加一个空白的选择项' },
{ tag: '下拉框', type: '优化', content: '增加参数addRowButton、addRowButtonClick，使得在选择框下部增加一个新增按钮' },
{ tag: '下拉框', type: '优化', content: '增加事件onButtonClick' },
{ tag: '下拉框', type: '优化', content: '增加参数highLight,设置自动完成时是否匹配字符高亮显示' },
{ tag: 'Dialog', type: '优化', content: '对于iframe页面，增加对dialog的引用，方便窗口间的互动' },
{ tag: 'Dialog', type: '优化', content: '按钮增加cls参数(自定义css类)' },
{ tag: '表单', type: '优化', content: '增加width参数' }
            ];
            var v122 = [
                  { tag: 'Tree', type: '需求', content: '优化了加载数据的能力' },
                { tag: 'Tree', type: '需求', content: '增加isExpand(支持灵活地控制展开/收缩状态)' },
                { tag: 'Tree', type: '需求', content: '增加delay(支持延迟加载数据)' },
                { tag: '表格', type: '需求', content: '对表格分页条数增加缓存处理' },
                { tag: '表单', type: '需求', content: '验证部分增加对旧版本的兼容处理' },
                { tag: '表格', type: '需求', content: '增加参数toolbarShowInLeft(控制工具条显示在左边还是右边)' },
                { tag: 'ListBox', type: '需求', content: '增加方法getDataByValue' }, 
                { tag: 'Tab', type: '需求', content: '增加事件onClose、onCloseOther、onCloseAll、onReload' } 
                
            ];
            var v121 = [
				{ tag: '核心', type: '需求', content: '表单、表格编辑器的统一化处理' },
                { tag: '核心', type: 'BUG', content: '支持jQuery高版本' },
                { tag: '核心', type: 'BUG', content: '改善layout、dialog在ie下的拖拽操作体验' },

                { tag: '表单', type: '需求', content: '表单内置验证支持' }, 
                { tag: '表单', type: '需求', content: '相关表单元素增加参数valueFieldCssClass(隐藏域css样式)' },
                { tag: '表单', type: '需求', content: '相关表单元素参数parms支持运行时动态获取' },
                { tag: '表单', type: '需求', content: '下拉框组件增加参数alwayShowInTop，增加方法reload、getSelected' },
                { tag: '表单', type: '需求', content: 'listBox组件增加selectAll方法' },
                { tag: '表单', type: '需求', content: 'popupEdit增加parms参数' },
                { tag: '表单', type: '需求', content: '文本框数值类型默认右对齐' },
                { tag: '表单', type: '需求', content: ' 表单增加getData setData方法' },  

                { tag: '表格', type: '需求', content: '优化表格工具条的显示位置,并增加工具条标题的支持' },
                { tag: '表格', type: '需求', content: '表格树支持线性数据结构' },
                { tag: '表格', type: '需求', content: '表格 列支持auto' },
                { tag: '表格', type: 'BUG', content: '修复grid不能确定取得更新数据的错误' },
                { tag: '表格', type: 'BUG', content: '修复grid编辑器位置在显示标题出现错位的情况' },
                { tag: '表格', type: 'BUG', content: '修改grid排序事件没有起效的问题' },

                { tag: '树', type: '需求', content: 'tree增加ajaxType、render(自定义html)、selectable(可选择判断函数)参数' } 
            ];
			

            var v120 = [
				{ tag: '核心', type: '需求', content: '支持解析html(属性、事件直接在html元素中定义即可)' },
			
                { tag: '表单', type: '需求', content: '新增RadioList组件' },
				{ tag: '表单', type: '需求', content: '新增CheckBoxList组件' },
				{ tag: '表单', type: '需求', content: '新增ListBox组件' },
				{ tag: '表单', type: '需求', content: '新增PopupEdit(弹出编辑)组件' },
				{ tag: '树', type: '需求', content: '增加参数needCancel' },
				{ tag: '工具条', type: '需求', content: '增加方法removeItem、setEnabled、setDisabled、isEnable' },
				{ tag: '表单', type: '需求', content: '表单组件加上readonly支持' },
				{ tag: '表单', type: '需求', content: 'TextBox增加属性currency(货币格式)' },
				{ tag: 'Tab', type: '需求', content: '增加方法setHeader(设置页签项标题)' },
                { tag: '表格', type: '需求', content: 'Column Name支持点号访问子属性' },
				{ tag: '表格', type: '需求', content: '增加属性isSelected(选择初始化函数)' },
				{ tag: '表格', type: '优化', content: '优化编辑构造器,新增getText和setText' }, 
				{ tag: '表格', type: '需求', content: '增加方法setParm、removeParm(ajax参数设置)、getChanges(获取修改过的数据)' }, 
				{ tag: '表格', type: '需求', content: '增加事件onGroupExtend(分组展开事件)、onGroupCollapse(分组收缩事件)、onLoadData(加载数据前事件)' },
				
				{ tag: '表格', type: 'BUG', content: '解决编辑表格在 日期选择框框，或者下拉框 点击会结束编辑状态的情况' }, 
				{ tag: '表格', type: 'BUG', content: '解决grid刷新表格以后编辑状态还存在的问题' }, 
				{ tag: '表格', type: 'BUG', content: '解决固定列模式下无法自动根据表格内容调整高度的问题' }, 
				
				{ tag: '表单', type: '需求', content: 'ligerForm组件增加参数labelCss、fieldCss、spaceCss、readonly' },
				{ tag: '表单', type: '需求', content: 'ligerForm组件增加事件onAfterSetFields' },
				{ tag: '表单', type: '需求', content: 'ligerForm组件增加buttons属性' },
				
				{ tag: '表单', type: '优化', content: 'ligerForm组件优化编辑构造器,增加popup、checkboxlist、radiolist、listbox等' },
				{ tag: '弹窗', type: '需求', content: '增加事件onContentHeightChange、onClose、onClosed、onStopResize' },
				{ tag: '弹窗', type: 'BUG', content: '限制弹窗不能拖拽到窗口边界外' }, 
				
				{ tag: '表单', type: '需求', content: 'DateEditor增加属性cancelable、readonly' },
				
				{ tag: '表单', type: '需求', content: 'DateEditor增加下拉图标样式' },
				
				{ tag: '表单', type: '优化', content: 'DateEditor和ComboBox下拉框位置优化' },
				
				{ tag: '表单', type: '需求', content: 'ComboBox增加属性condition(条件设置,配合grid使用)' },
				{ tag: '表单', type: '需求', content: 'ComboBox增加属性cancelable、css、renderItem(下拉选项自定义html函数)' },
				
				{ tag: '表单', type: '优化', content: 'ComboBox优化url模式，增加属性parms、ajaxType，方法setUrl、setParm' },
				
				{ tag: '表单', type: '需求', content: 'ComboBox支持自动完成(url模式和grid模式)，增加autocomplete' },
				
				{ tag: '表单', type: '优化', content: 'ComboBox增加方法getGridHeight、getText、setText' },
				
				{ tag: '表单', type: '需求', content: 'Button增加属性icon(图标)' }, 
				
				{ tag: '表格', type: '需求', content: '增加loadData的别名方法reload' }, 
				
				{ tag: '表格', type: '需求', content: '表格主体的横向滚动条默认不显示' }, 
				
				{ tag: '表格', type: '需求', content: 'column.editor的onChange、onChanged事件参数改变' }, 
				
				
            ];



            var v119 = [ 
                { tag: '表单', type: 'BUG', content: '修复isChecked方法重复调用的问题' },
                { tag: '表格', type: 'BUG', content: '修复表格下拉框/日期 编辑有时无法更新值的问题' },
                { tag: '表格', type: '需求', content: '分组行优化自定义函数' },
                { tag: '下拉框', type: 'BUG', content: '修复 调用updateStyle方法无法更新下拉框树的 问题' },
                { tag: '其他', type: '需求', content: '过滤器插件增加设置规则方法' }
            ];

            var v118 = [
                { tag: '基础', type: '需求', content: '增加条件过滤器插件(通用查询组件)' },
                { tag: '表单', type: '需求', content: '增强表单插件，支持自动创建表单，支持表单元素自定义控件的构建扩展。' },
                { tag: '表单', type: '需求', content: '文本框插件支持 整数、浮点数的限制' },
                { tag: '表格', type: 'BUG', content: '修复表格单元格编辑有时无法编辑的问题' },
                { tag: 'Tab', type: 'BUG', content: '修复以target方式增加时loading不消失的问题' },
                { tag: '综合', type: 'BUG', content: '修复如果dialog里面带有grid editor ，editor会被覆盖在下面的问题。' },
                { tag: '表格', type: 'BUG', content: '修复上移，下移方法 选择状态会被取消的问题。' },
                { tag: '表格', type: 'BUG', content: '修复不能多行编辑的bug' },
                { tag: '窗口', type: 'BUG', content: '修复在dialog再次显示dialog，最后显示的dialog会被遮住的问题' }
            ];


            var v117 = [
                { tag: '基础', type: '需求', content: '增加一套皮肤' },
                { tag: '表格', type: 'BUG', content: '修复grid重复加载数据的问题' },
                { tag: '表格', type: '优化', content: '修复loading最后才显示的问题' }, 
                { tag: '对话框', type: 'BUG', content: '修复ligerDialog.confirm() 和ligerMessageBox弹出的对话框位置不是屏幕居中的问题' },
                { tag: '对话框', type: 'BUG', content: '修复ligerDialog里面带有下拉框、或者日期选择框时，选择框被遮住的问题。' }, 
                { tag: '对话框', type: 'BUG', content: '修复ligerDialog里面带有下拉框、或者日期选择框时，选择框不会随着窗口移动而移动的问题。' }, 
                { tag: '表格', type: 'BUG', content: '优化grid 日期格式的自定义渲染函数，使之支持 /Date(XXXX)/ 这种格式' }, 
                { tag: '布局', type: '需求', content: 'tab 页签项，增加content和target参数。' }, 
                { tag: '表格', type: 'BUG', content: '修复奇偶行效果' },
                { tag: '布局', type: '需求', content: 'tab 增加 loading效果。' },
                 { tag: '布局', type: '需求', content: 'layout增加调整左/右侧宽度时的最小允许宽度' },
                 { tag: '表格', type: '需求', content: '支持改变行高和表头行高' },
                 { tag: '表单', type: '需求', content: '支持设定表单元素的宽度' },
                 { tag: '表格', type: '需求', content: '支持工具条.工具条支持图标图片' }
            ];


            var v116 = [
                { tag: '基础', type: '需求', content: '全面优化框架图片' },
                { tag: '基础', type: '需求', content: '整理简化皮肤Silvery,需要依赖默认的Aqua' },
                { tag: '表格', type: 'BUG', content: '修复 隐藏列后 再次加载数据，隐藏的列会再次显示 的问题' },
                { tag: '表格', type: 'BUG', content: '修复存在行序号时,汇总行错位的问题' },
                { tag: '窗口/对话框', type: '需求', content: '支持最小化、最大化、可收缩' },
                { tag: '对话框', type: '需求', content: '支持 右下角的提示框' },
                { tag: '表格', type: '需求', content: '重写列调整,需要依赖ligerResizable' },
                { tag: '表格', type: '需求', content: '支持动态设置columns' },
                { tag: '表格', type: '需求', content: '支持行移位、表头拖拽' },
                { tag: '树', type: '需求', content: '增加节点图标' },
                 { tag: '树', type: '需求', content: '增加节点拖拽' }, 
            ];

            var v115 = [
                { tag: '表格', type: '需求', content: '固定列' },
                { tag: '表格', type: '需求', content: '多表头支持跨行合并' },
                { tag: '表格', type: '需求', content: '增加行编辑模式' },
                { tag: '表格', type: '需求', content: '增加明细编辑模式' },
                { tag: '表格', type: '需求', content: '增加扩展接口：排序、格式化器,优化扩展接口：编辑器' },
                { tag: '表格', type: '需求', content: '选择行支持Ctrl选择' }, 
                { tag: '表格', type: '需求', content: '明细框可以设置高度(detail参数增加onExtend、onCollapse 和height)' },
                { tag: '表格', type: '需求', content: '参数移除renderDate、dblClickToEdit 方法移除stringToDate、getFormatDate' },
                { tag: '表格', type: '需求', content: '增加参数detailToEdit、frozen、frozenDetail、frozenCheckbox、detailHeight、rownumbers、frozenRownumbers、rownumbersColWidth；<BR>增加方法beginEdit、SubmitEdit、cancelEdit、reRender、addEditRow、extendDetail、collapseDetail、getSelectedRows(支持Ctrl)、getSelected、getSelecteds、getSelectedRowObjs；<BR>增加事件onBeforeChangeColumnWidth、onAfterChangeColumnWidth、onBeginEdit、onAfterBeginEdit、onCancelEdit、onBeforeSubmitEdit、onAfterSubmitEdit' }, 
                { tag: '表单', type: '需求', content: 'combobox 增加事件onToggle、onShow、onHide' }, 
                { tag: '树', type: 'BUG', content: '修复右键菜单不触发的问题' }
            ];

            var v114 = [
                { tag: '核心', type: '需求', content: '增加方法的调用方式：liger{Plugin}(method) ' },
                { tag: '核心', type: '需求', content: '增加获取属性的调用方式：liger{Plugin}("option",name)' },
                { tag: '核心', type: '需求', content: '增加设置属性的调用方式：liger{Plugin}("option",name,value)' },
                { tag: '综合', type: 'BUG', content: '修复V1.1.3部分插件没有触发事件的BUG' },
                { tag: '表单', type: 'BUG', content: '修复V1.1.3验证出现的气泡没有消失的BUG' },
                { tag: '布局', type: '需求', content: 'Tab控件增加双击关闭页签' },
                { tag: '布局', type: '需求', content: 'Tab控件增加拖动页签功能' }
            ];

            var v113 = [
                { tag: '核心', type: '需求', content: '引入core/base.js,每一个插件都需要依赖这个文件,其提供了ligerui内置事件处理机制、属性动态设置机制等等' },
                { tag: '核心', type: '需求', content: '每一个插件拥有get、set、bind、trigger的方法' },
                { tag: '基础', type: '优化', content: '优化了ligerResizable和ligerDrag' },
                { tag: '基础', type: '需求', content: 'ligerDrag增加副本模式' },
                { tag: '基础', type: '需求', content: 'ligerDrag增加指定区域释放拖动(Drop)的支持' }
            ];

            var v112 = [
                { tag: '综合', type: '需求', content: '给每一个插件提供onRender和onRendered接口' },
                { tag: '表格', type: '需求', content: '为表格编辑器提供扩展接口' },
                { tag: '表格', type: '需求', content: '参数onRClickToSelect(右击行时是否选中)改名whenRClickToSelect' },
                { tag: '表格', type: '需求', content: '增加参数clickToEdit、minColumnWidth' },
                { tag: '表格', type: '需求', content: '增加事件onEndEdit' },
                { tag: '表格', type: '需求', content: '增加方法setColumnWidth(调整列宽)' },
                { tag: '表格', type: '需求', content: '参数onRClickToSelect改名whenRClickToSelect' },
                { tag: '对话框', type: '优化', content: '移除ligerDialogImagePath,改为$.ligerui.DialogImagePath' },
                { tag: '对话框', type: '需求', content: '添加设置url方法' },
                { tag: '对话框', type: '需求', content: '增加加载完成事件onloaded' },
                { tag: '对话框', type: '需求', content: '增加参数：show、title' },
                { tag: 'Window', type: '需求', content: '添加load远程文件方法和设置url方法' },
                { tag: '气泡', type: '优化', content: '优化气泡控件' },
                { tag: '树', type: '需求', content: '增加方法arrayToTree' },
            ];
            
            var v111 = [
                 { tag: '综合', type: '需求', content: '给每一个组件管理器提供扩展接口' },
                { tag: '表格', type: '需求', content: '增加addRows方法,一次性增加多行,参数为行数据数组' },
                { tag: '表格', type: '需求', content: '增加了表格列初始化隐藏的属性hide' },
                { tag: '表格', type: 'BUG', content: '解决表格返回的数据为空时页面不反应的问题' },
                { tag: '表格', type: 'BUG', content: '解决表格隐藏列以后排序,依旧会把依把已经隐藏的数据显示出来的问题' },
                { tag: '表格', type: 'BUG', content: '解决在表头右键会出现【显示/隐藏列】，但是在表头点击 【显示/隐藏列】 不消失的问题' },
                { tag: '表格', type: 'BUG', content: '解决在表格的最后一列点击鼠标右键显示【显示/隐藏列】，【显示/隐藏列】错位的问题' },
                { tag: '表格', type: 'BUG', content: '解决在表格隐藏列以后，如果是明细情况，明细的宽度没有根据现有显示列改变的问题' },
                { tag: '表格', type: 'BUG', content: '解决调用显示/隐藏列后【显示/隐藏列菜单】没有更新的问题' },
                { tag: '表格', type: 'BUG', content: '解决树表格启用编辑状态时数据没有更新准确的问题' },
                { tag: '表格', type: 'BUG', content: '解决分组模式下启用明细出现问题的BUG' },
                { tag: '表格', type: 'BUG', content: '解决分组、明细展开框 显示时 没有右边框的问题' },
                { tag: '表格', type: 'BUG', content: '解决统计时存在 明细或者复选框 不能准确显示的问题' },
                { tag: '表格', type: 'BUG', content: '解决 分组显示时，收缩所有分组 不能准确显示的问题' },
                { tag: '表格', type: 'BUG', content: '解决 隐藏列后，调整表头宽度 不能准确显示的问题' },
                { tag: '下拉框', type: 'BUG', content: '解决带分页下拉框在调整grid宽度时没反应的问题' },
                { tag: '表单', type: 'BUG', content: '解决不能设置text长度。text本身是可以设置，但在form里初始化text时，没传参数的问题' },
                { tag: '表单', type: '需求', content: '统一为每一个表单元素"管理器"提供 设置只读、获取值、设置值的接口' }

            ];
            
            var v110 = [
                { tag: '表格', type: '需求', content: '加入分组模式' },
                { tag: '表格', type: '需求', content: '加入树模式' },
                { tag: '表格', type: '需求', content: '加入统计行(位于底部)' },
                { tag: '表格', type: '需求', content: '加入延时加载' },
                { tag: '表格', type: '需求', content: '加入本地查询支持' },
                { tag: '表格', type: '需求', content: '加入复选框初始化的支持' },
                { tag: '表格', type: '需求', content: '列 百分比' },
                { tag: '表格', type: '需求', content: '列 显示和隐藏' },
                { tag: '表格', type: '需求', content: '列 表头改变文字' },
                { tag: '表格', type: '需求', content: '编辑器事件: 编辑前事件、验证编辑器结果是否通过、结束编辑后事件' },
                { tag: '表格', type: '需求', content: '增加右击接口' },
                { tag: '表格', type: '需求', content: '多表头' },
                { tag: '表格', type: '优化', content: 'grid新增行的时候可通过column的defaultValue进行设置默认值' },
                { tag: '表格', type: 'BUG', content: 'grid的编辑功能和checkbox多选功能存在冲突' },
                { tag: '表格', type: 'BUG', content: '加载时不显示loading的问题，并加入自定义加载时的支持' },
                { tag: '表格', type: 'BUG', content: 'grid addRow()如果没有数据的时候row没有高度' },
                { tag: '表格', type: 'BUG', content: '修改可编辑grid中DateEditor编辑错误的问题' },
                { tag: '表格', type: 'BUG', content: '修改可编辑grid中DateEditor编辑错误的问题' },
                { tag: '下拉框', type: '需求', content: '支持动态改变值' },
                { tag: '下拉框', type: '需求', content: '增加打开下拉框前事件，利用这个参数可以用来调用其他函数，比如打开一个新窗口来选择值' },
                { tag: '表单', type: '需求', content: 'spinner支持最大最小值' },
                { tag: '下拉框', type: '需求', content: '支持动态改变值' },
                { tag: '树', type: '需求', content: '增加 选择/反选择节点 接口' },
                { tag: '弹窗', type: '需求', content: '支持回车关闭' },
                { tag: '弹窗', type: 'BUG', content: 'dialog.frame浏览器兼容支持' }
            ];
            var v102 = [
                { tag: '皮肤', type: '需求', content: '增加一套皮肤(Silvery)' },
                { tag: '皮肤', type: '需求', content: '增加一套图标' },
                { tag: '表单', type: '需求', content: '增加表单提示气泡插件，结合表单验证使用，在demo中提供表单验证的一个解决方案' },
                { tag: '表单', type: '优化', content: '优化表单,每个表单插件(ligerTextBox、ligerSpinner等)可以通过属性ligerui自动加载参数，如ligerui="{width:200}"' },
                { tag: '表格', type: '优化', content: 'gridRows和Total字段名可配置，提交给服务器的参数可配置，所有与用户操作交互的地方（如上一页、下一页）都加上事件"' },
                { tag: '表格', type: '优化', content: '插件执行直接返回ligerGrid Manager(其他用到接口管理对象的插件都类同)' },
                { tag: '树', type: '需求', content: '树支持id pid的这种线性数据结构格式' },
                { tag: '弹窗', type: 'BUG', content: '弹窗样式冲突' },
                { tag: '弹窗', type: '需求', content: '弹窗增加close支持' },
                { tag: '弹窗', type: '需求', content: '弹窗增加close支持' }
              ];

              var v101 = [
                { tag: '表格', type: '需求', content: '汇总方式增加一个render(自定义函数，不限于sum、avg、count、max、min)' },
                { tag: '表格', type: '需求', content: '增加复选框列，同时增加相应的事件和方法。' },
                { tag: '表格', type: '需求', content: '优化了显示速度' },
                { tag: '表格', type: 'BUG', content: '解决在IE6下表格头部文字消失的问题' },
                { tag: '表格', type: 'BUG', content: '解决包含在form下不能正常显示高度的问题(height设置为百分比)' },
                { tag: '弹窗', type: '需求', content: '增加新插件：弹框，命名空间为$.ligerDialog。一系列静态方法。包括Open、Success、Error、Warn、Show。（这个样式比较美观，于是加上去了。并采用九格的排版方式，兼容性更好，扩展性更好）集对话框、模态窗口、非模态窗口等于这个命名空间下。（原来已经有弹出框插件和窗口插件了，ligerWindow和ligerMessage，不推荐，暂时保留）' },
                { tag: '菜单', type: '需求', content: '增加新插件：菜单、菜单条、工具条,菜单可以自定义图片，可以动态设置项，动态的显示位置。菜单条和是在菜单的基础上显示的一个类似Window菜单的一个插件，工具条是一些按钮的集合，可以自定义图片。' },
                { tag: '树', type: '需求', content: '提供右击方法实现的接口' },
                { tag: '树', type: '优化', content: '点击项就折叠/反折叠，而不是点击 + 才折叠' },
                { tag: '下拉框', type: '需求', content: '支持在分页的表格在选取数据(配置grid,参数跟ligerGrid的参数一致)' },
                { tag: '下拉框', type: '需求', content: '提供Resize方法实现的接口' },
                { tag: '下拉框', type: '优化', content: '细节优化' },
                { tag: '布局', type: '需求', content: 'ligerTab增加右键菜单功能，包括 关闭其他/关闭全部等。' },
                { tag: '布局', type: '需求', content: 'ligerTab增加获取Items Count，删除项等常见方法 ' },
                { tag: '布局', type: '需求', content: 'ligerLayout增加初始化控制左边/右边隐藏、是否折叠、是否调整大小等方法。 ' },
                { tag: '布局', type: '优化', content: '面板点击项就折叠/反折叠，而不是点击 + 才折叠' },
                { tag: '布局', type: 'BUG', content: '解决ligerLayout，在IE6下调整Line太宽的问题 ' },
                { tag: '布局', type: 'BUG', content: '解决ligerLayout，包含在form下不能正常显示高度的问题 ' },
                { tag: '表单', type: 'BUG', content: 'ligerSpinner每次点击即增加/减少，而不是按住的时候才有效果 ' },
              ];
              f_addVersionLog('V1.3.3更新记录', v133);
              f_addVersionLog('V1.3.2更新记录', v132);
              f_addVersionLog('V1.3.1更新记录', v131);
              f_addVersionLog('V1.3.0更新记录', v130);

              f_addVersionLog('V1.2.5更新记录', v125, "感谢Scott Yan和codfish提供的Pull Requests");
              f_addVersionLog('V1.2.4更新记录', v124);
              f_addVersionLog('V1.2.3更新记录', v123);
              f_addVersionLog('V1.2.2更新记录', v122);
              f_addVersionLog('V1.2.1更新记录', v121);
              f_addVersionLog('V1.2.0更新记录', v120);
              f_addVersionLog('V1.1.9更新记录', v119);
              f_addVersionLog('V1.1.8更新记录', v118);
              f_addVersionLog('V1.1.7更新记录', v117);
              f_addVersionLog('V1.1.6更新记录', v116);
              f_addVersionLog('V1.1.5更新记录', v115);
              f_addVersionLog('V1.1.4更新记录', v114);
              f_addVersionLog('V1.1.3更新记录', v113);
              f_addVersionLog('V1.1.2更新记录', v112);
              f_addVersionLog('V1.1.1更新记录', v111);
              f_addVersionLog('V1.1.0更新记录', v110);
              f_addVersionLog('V1.0.2更新记录', v102);
              f_addVersionLog('V1.0.1更新记录', v101);

              $("#oldverson").change(function ()
              {
                  if (this.value)
                  {
                      //$("#download").attr("src", this.value);
                      $("#downloadlink").attr("href", this.value).show();
                  } else
                  {
                      $("#downloadlink").hide();
                  }
              });
        }

        function f_addVersionLog(title, items, subtitle)
        {
           
            var jtitle = $("<h2 class='l-title'></h2>");
            jtitle.html(title).appendTo('body');
            if (subtitle)
            {
                $("<div class='subtitle'>" + subtitle + "</div>").appendTo('body');
            }
            var tagGroups = [];
            var tagItems = [];
            $(items).each(function (i, item)
            {
                if (!item) return;
                var tag = item['tag'];
                var tagIndex = $.inArray(tag, tagGroups);
                if (tagIndex == -1)
                {
                    tagGroups.push(tag);
                    tagIndex = tagGroups.length - 1;
                    tagItems.push([]);
                }
                tagItems[tagIndex].push(item);
            });
            $(tagGroups).each(function (i, item)
            {
                f_addVersionTagLog(item, tagItems[i]);
            });
        }
        function f_addVersionTagLog(tag, items)
        {
            var jtitle = $("<h3 class='l-title'></h3>");
            jtitle.html(tag).appendTo('body');
            $(items).each(function ()
            {
                var jitem = $('<p class="l-log-content"><span class="l-log-content-tag"></span></p>');
                $("span:first", jitem).html("[" + this.type + "]");
                jitem.append(this.content).appendTo('body');
            });
        }
        
    </script>
    <style type="text/css">
        p.l-log-content
        {
            margin: 0;
            padding: 0;
            padding-left: 20px;
            line-height: 22px;
            font-size: 12px;
        }
        span.l-log-content-tag
        {
            color: #008000;
            margin-right: 2px;
            font-weight: bold;
        }
        h2.l-title
        {
            margin: 7px;
            padding: 0;
            font-size: 17px;
            font-weight: bold;
        }
        h3.l-title
        {
            margin: 4px;
            padding: 0;
            font-size: 15px;
            font-weight: bold;
        }
        a {
            color:#1870A9;
        }
        a.hover {
            color: #BC2A4D;
        }
        .subtitle {
            margin: 12px 7px;padding-left: 20px;color:#666666; text-decoration:underline;
        }
    </style>
</head>
<body style="background: white; font-size: 12px;"> 
 
    <h2>
        欢迎使用Liger UI框架</h2>
    <p class="l-log-content">
        作者: 谢略</p>
    <p class="l-log-content">
        QQ: 175932810</p>
    <p class="l-log-content">
        交流QQ群1群: 71664111</p>
    <p class="l-log-content">
        交流QQ群2群：104842296</p>
    <p class="l-log-content">
        交流QQ群3群：153770480</p>
    <p class="l-log-content">
        交流QQ群4群：190391819
        </p>
   <p class="l-log-content">
        交流QQ群5群：37205343
        </p> <p class="l-log-content">
        交流QQ群6群：237634156
        </p>
         <p class="l-log-content">
        交流QQ群7群：262424299
        </p>
    <p class="l-log-content">
        交流QQ群7群：262424299
        </p><p class="l-log-content">
        交流QQ群8群：427520658
        </p>
    <p class="l-log-content">
        API: <a href="http://api.ligerui.com/" target="_blank">http://api.ligerui.com/</a></p>
    <p class="l-log-content">
        演示地址:<a href="http://demo.ligerui.com/" target="_blank">http://demo.ligerui.com/</a></p>
    <p class="l-log-content">
        官方论坛: <a href="http://bbs.ligerui.com/" target="_blank">http://bbs.ligerui.com/</a></p>
    <p class="l-log-content">
        源码: 
        <a href="http://git.oschina.net/ligerui/LigerUI/" target="_blank">源码托管</a>  
    </p> 

    <p class="l-log-content">
        历史版本: 
     
        <select id="oldverson">
            <option value="">选择版本</option>
            

            	<option value="http://pan.baidu.com/s/1gddJsw7">V1.3.2</option>  
            			<option value="http://pan.baidu.com/s/1i35xUAh">V1.3.1</option>  
           <option value="http://pan.baidu.com/s/1qWDWwNy">V1.3.0</option>   
             <option value="http://pan.baidu.com/s/1c0s3d2g">V1.2.5</option>  
             <option value="http://pan.baidu.com/s/1nt4vW5V">V1.2.4</option> 
                <option value="http://pan.baidu.com/s/1D0AVO">V1.2.3</option> 
                <option value="http://pan.baidu.com/s/1jGE6mPK">V1.2.2</option>
               <option value="http://pan.baidu.com/share/link?shareid=3485679421&uk=2318736180">V1.2.1</option>
               <option value="http://pan.baidu.com/s/1dDnCauX">V1.2.0</option>
               <option value="http://pan.baidu.com/s/1c0vfCoo">V1.1.9</option>
                <option value="http://pan.baidu.com/s/1hq02x84">V1.1.8</option>
               <option value="http://pan.baidu.com/s/1i3Jxnnv">V1.1.7</option>
               <option value="http://pan.baidu.com/s/1pJG3i1H">V1.1.6</option>
              <option value="http://pan.baidu.com/s/10EDBK">V1.1.5</option>
             <option value="http://pan.baidu.com/s/1dDEfG2H">V1.1.4</option>
             <option value="http://pan.baidu.com/s/1ntt6CJZ">V1.1.3</option>
            <option value="http://pan.baidu.com/s/1pJsgBoR">V1.1.0</option>
        </select>

        <a href="#" target="_blank" id="downloadlink" style="display:none;">前往下载</a>
    </p> 



    <iframe id="download" style="display:none;"></iframe>
</body>
</html>
