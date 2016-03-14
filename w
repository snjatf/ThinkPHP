[33mcommit b0f92b151b01e7e30914627fa96a5bfc66a039c4[m
Author: zhuangsd <hbsnjzsd@163.com>
Date:   Tue Mar 8 00:03:17 2016 +0800

    init

[1mdiff --git a/.htaccess b/.htaccess[m
[1mnew file mode 100644[m
[1mindex 0000000..929995c[m
[1m--- /dev/null[m
[1m+++ b/.htaccess[m
[36m@@ -0,0 +1,8 @@[m
[32m+[m[32m<IfModule mod_rewrite.c>[m
[32m+[m[32m  Options +FollowSymlinks[m
[32m+[m[32m  RewriteEngine On[m
[32m+[m
[32m+[m[32m  RewriteCond %{REQUEST_FILENAME} !-d[m
[32m+[m[32m  RewriteCond %{REQUEST_FILENAME} !-f[m
[32m+[m[32m  RewriteRule ^(.*)$ index.php/$1 [QSA,PT,L][m
[32m+[m[32m</IfModule>[m
\ No newline at end of file[m
[1mdiff --git a/.idea/.name b/.idea/.name[m
[1mnew file mode 100644[m
[1mindex 0000000..da26bbe[m
[1m--- /dev/null[m
[1m+++ b/.idea/.name[m
[36m@@ -0,0 +1 @@[m
[32m+[m[32mNews[m
\ No newline at end of file[m
[1mdiff --git a/.idea/News.iml b/.idea/News.iml[m
[1mnew file mode 100644[m
[1mindex 0000000..c956989[m
[1m--- /dev/null[m
[1m+++ b/.idea/News.iml[m
[36m@@ -0,0 +1,8 @@[m
[32m+[m[32m<?xml version="1.0" encoding="UTF-8"?>[m
[32m+[m[32m<module type="WEB_MODULE" version="4">[m
[32m+[m[32m  <component name="NewModuleRootManager">[m
[32m+[m[32m    <content url="file://$MODULE_DIR$" />[m
[32m+[m[32m    <orderEntry type="inheritedJdk" />[m
[32m+[m[32m    <orderEntry type="sourceFolder" forTests="false" />[m
[32m+[m[32m  </component>[m
[32m+[m[32m</module>[m
\ No newline at end of file[m
[1mdiff --git a/.idea/encodings.xml b/.idea/encodings.xml[m
[1mnew file mode 100644[m
[1mindex 0000000..97626ba[m
[1m--- /dev/null[m
[1m+++ b/.idea/encodings.xml[m
[36m@@ -0,0 +1,6 @@[m
[32m+[m[32m<?xml version="1.0" encoding="UTF-8"?>[m
[32m+[m[32m<project version="4">[m
[32m+[m[32m  <component name="Encoding">[m
[32m+[m[32m    <file url="PROJECT" charset="UTF-8" />[m
[32m+[m[32m  </component>[m
[32m+[m[32m</project>[m
\ No newline at end of file[m
[1mdiff --git a/.idea/misc.xml b/.idea/misc.xml[m
[1mnew file mode 100644[m
[1mindex 0000000..72abef0[m
[1m--- /dev/null[m
[1m+++ b/.idea/misc.xml[m
[36m@@ -0,0 +1,13 @@[m
[32m+[m[32m<?xml version="1.0" encoding="UTF-8"?>[m
[32m+[m[32m<project version="4">[m
[32m+[m[32m  <component name="ProjectLevelVcsManager" settingsEditedManually="false">[m
[32m+[m[32m    <OptionsSetting value="true" id="Add" />[m
[32m+[m[32m    <OptionsSetting value="true" id="Remove" />[m
[32m+[m[32m    <OptionsSetting value="true" id="Checkout" />[m
[32m+[m[32m    <OptionsSetting value="true" id="Update" />[m
[32m+[m[32m    <OptionsSetting value="true" id="Status" />[m
[32m+[m[32m    <OptionsSetting value="true" id="Edit" />[m
[32m+[m[32m    <ConfirmationsSetting value="0" id="Add" />[m
[32m+[m[32m    <ConfirmationsSetting value="0" id="Remove" />[m
[32m+[m[32m  </component>[m
[32m+[m[32m</project>[m
\ No newline at end of file[m
[1mdiff --git a/.idea/modules.xml b/.idea/modules.xml[m
[1mnew file mode 100644[m
[1mindex 0000000..22c5d96[m
[1m--- /dev/null[m
[1m+++ b/.idea/modules.xml[m
[36m@@ -0,0 +1,8 @@[m
[32m+[m[32m<?xml version="1.0" encoding="UTF-8"?>[m
[32m+[m[32m<project version="4">[m
[32m+[m[32m  <component name="ProjectModuleManager">[m
[32m+[m[32m    <modules>[m
[32m+[m[32m      <module fileurl="file://$PROJECT_DIR$/.idea/News.iml" filepath="$PROJECT_DIR$/.idea/News.iml" />[m
[32m+[m[32m    </modules>[m
[32m+[m[32m  </component>[m
[32m+[m[32m</project>[m
\ No newline at end of file[m
[1mdiff --git a/.idea/workspace.xml b/.idea/workspace.xml[m
[1mnew file mode 100644[m
[1mindex 0000000..8e0aba4[m
[1m--- /dev/null[m
[1m+++ b/.idea/workspace.xml[m
[36m@@ -0,0 +1,606 @@[m
[32m+[m[32m<?xml version="1.0" encoding="UTF-8"?>[m
[32m+[m[32m<project version="4">[m
[32m+[m[32m  <component name="ChangeListManager">[m
[32m+[m[32m    <list default="true" id="7a1388ac-9b5c-4c1e-b1f4-26d2b365feee" name="Default" comment="" />[m
[32m+[m[32m    <ignored path="News.iws" />[m
[32m+[m[32m    <ignored path=".idea/workspace.xml" />[m
[32m+[m[32m    <ignored path=".idea/dataSources.local.xml" />[m
[32m+[m[32m    <option name="EXCLUDED_CONVERTED_TO_IGNORED" value="true" />[m
[32m+[m[32m    <option name="TRACKING_ENABLED" value="true" />[m
[32m+[m[32m    <option name="SHOW_DIALOG" value="false" />[m
[32m+[m[32m    <option name="HIGHLIGHT_CONFLICTS" value="true" />[m
[32m+[m[32m    <option name="HIGHLIGHT_NON_ACTIVE_CHANGELIST" value="false" />[m
[32m+[m[32m    <option name="LAST_RESOLUTION" value="IGNORE" />[m
[32m+[m[32m  </component>[m
[32m+[m[32m  <component name="ChangesViewManager" flattened_view="true" show_ignored="false" />[m
[32m+[m[32m  <component name="CreatePatchCommitExecutor">[m
[32m+[m[32m    <option name="PATCH_PATH" value="" />[m
[32m+[m[32m  </component>[m
[32m+[m[32m  <component name="ExecutionTargetManager" SELECTED_TARGET="default_target" />[m
[32m+[m[32m  <component name="FavoritesManager">[m
[32m+[m[32m    <favorites_list name="News" />[m
[32m+[m[32m  </component>[m
[32m+[m[32m  <component name="FileEditorManager">[m
[32m+[m[32m    <leaf>[m
[32m+[m[32m      <file leaf-file-name="IndexController.class.php" pinned="false" current-in-tab="false">[m
[32m+[m[32m        <entry file="file://$PROJECT_DIR$/Apps/Admin/Controller/IndexController.class.php">[m
[32m+[m[32m          <provider selected="true" editor-type-id="text-editor">[m
[32m+[m[32m            <state vertical-scroll-proportion="-4.071429">[m
[32m+[m[32m              <caret line="6" column="14" selection-start-line="6" selection-start-column="9" selection-end-line="6" selection-end-column="14" />[m
[32m+[m[32m              <folding />[m
[32m+[m[32m            </state>[m
[32m+[m[32m          </provider>[m
[32m+[m[32m        </entry>[m
[32m+[m[32m      </file>[m
[32m+[m[32m      <file leaf-file-name="index_show.tpl" pinned="false" current-in-tab="true">[m
[32m+[m[32m        <entry file="file://$PROJECT_DIR$/Apps/Admin/View/index_show.tpl">[m
[32m+[m[32m          <provider selected="true" editor-type-id="text-editor">[m
[32m+[m[32m            <state vertical-scroll-proportion="0.0">[m
[32m+[m[32m              <caret line="0" column="13" selection-start-line="0" selection-start-column="13" selection-end-line="0" selection-end-column="13" />[m
[32m+[m[32m              <folding />[m
[32m+[m[32m            </state>[m
[32m+[m[32m          </provider>[m
[32m+[m[32m        </entry>[m
[32m+[m[32m      </file>[m
[32m+[m[32m      <file leaf-file-name="index_index.tpl" pinned="false" current-in-tab="false">[m
[32m+[m[32m        <entry file="file://$PROJECT_DIR$/Apps/Admin/View/index_index.tpl">[m
[32m+[m[32m          <provider selected="true" editor-type-id="text-editor">[m
[32m+[m[32m            <state vertical-scroll-proportion="-2.0357144">[m
[32m+[m[32m              <caret line="3" column="36" selection-start-line="3" selection-start-column="36" selection-end-line="3" selection-end-column="41" />[m
[32m+[m[32m              <folding>[m
[32m+[m[32m                <element signature="n#div#0;n#block#1;n#!!top" expanded="false" />[m
[32m+[m[32m              </folding>[m
[32m+[m[32m            </state>[m
[32m+[m[32m          </provider>[m
[32m+[m[32m        </entry>[m
[32m+[m[32m      </file>[m
[32m+[m[32m    </leaf>[m
[32m+[m[32m  </component>[m
[32m+[m[32m  <component name="IdeDocumentHistory">[m
[32m+[m[32m    <option name="CHANGED_PATHS">[m
[32m+[m[32m      <list>[m
[32m+[m[32m        <option value="$PROJECT_DIR$/index.php" />[m
[32m+[m[32m        <option value="$PROJECT_DIR$/Apps/Home/Controller/index.html" />[m
[32m+[m[32m        <option value="$PROJECT_DIR$/Apps/Home/View/add.tpl" />[m
[32m+[m[32m        <option value="$PROJECT_DIR$/Apps/Home/Controller/IndexController.class.php" />[m
[32m+[m[32m        <option value="$PROJECT_DIR$/Apps/Home/View/index_add.tpl" />[m
[32m+[m[32m        <option value="$PROJECT_DIR$/ThinkPHP/Conf/convention.php" />[m
[32m+[m[32m        <option value="$PROJECT_DIR$/Apps/Admin/View/index_index.tpl" />[m
[32m+[m[32m        <option value="$PROJECT_DIR$/Apps/Admin/View/admin_base.tpl" />[m
[32m+[m[32m        <option value="$PROJECT_DIR$/Public/liger_ui/indexdata.js" />[m
[32m+[m[32m        <option value="$PROJECT_DIR$/Apps/Admin/Controller/IndexController.class.php" />[m
[32m+[m[32m        <option value="$PROJECT_DIR$/Apps/Admin/View/index_show.tpl" />[m
[32m+[m[32m      </list>[m
[32m+[m[32m    </option>[m
[32m+[m[32m  </component>[m
[32m+[m[32m  <component name="JsBuildToolGruntFileManager" detection-done="true" />[m
[32m+[m[32m  <component name="JsBuildToolPackageJson" detection-done="true" />[m
[32m+[m[32m  <component name="JsGulpfileManager">[m
[32m+[m[32m    <detection-done>true</detection-done>[m
[32m+[m[32m  </component>[m
[32m+[m[32m  <component name="PhpServers">[m
[32m+[m[32m    <servers />[m
[32m+[m[32m  </component>[m
[32m+[m[32m  <component name="PhpWorkspaceProjectConfiguration" backward_compatibility_performed="true" />[m
[32m+[m[32m  <component name="ProjectFrameBounds">[m
[32m+[m[32m    <option name="x" value="-8" />[m
[32m+[m[32m    <option name="y" value="-8" />[m
[32m+[m[32m    <option name="width" value="1382" />[m
[32m+[m[32m    <option name="height" value="744" />[m
[32m+[m[32m  </component>[m
[32m+[m[32m  <component name="ProjectLevelVcsManager" settingsEditedManually="false">[m
[32m+[m[32m    <OptionsSetting value="true" id="Add" />[m
[32m+[m[32m    <OptionsSetting value="true" id="Remove" />[m
[32m+[m[32m    <OptionsSetting value="true" id="Checkout" />[m
[32m+[m[32m    <OptionsSetting value="true" id="Update" />[m
[32m+[m[32m    <OptionsSetting value="true" id="Status" />[m
[32m+[m[32m    <OptionsSetting value="true" id="Edit" />[m
[32m+[m[32m    <ConfirmationsSetting value="0" id="Add" />[m
[32m+[m[32m    <ConfirmationsSetting value="0" id="Remove" />[m
[32m+[m[32m  </component>[m
[32m+[m[32m  <component name="ProjectView">[m
[32m+[m[32m    <navigator currentView="ProjectPane" proportions="" version="1">[m
[32m+[m[32m      <flattenPackages />[m
[32m+[m[32m      <showMembers />[m
[32m+[m[32m      <showModules />[m
[32m+[m[32m      <showLibraryContents />[m
[32m+[m[32m      <hideEmptyPackages />[m
[32m+[m[32m      <abbreviatePackageNames />[m
[32m+[m[32m      <autoscrollToSource />[m
[32m+[m[32m      <autoscrollFromSource />[m
[32m+[m[32m      <sortByType />[m
[32m+[m[32m      <manualOrder />[m
[32m+[m[32m      <foldersAlwaysOnTop value="true" />[m
[32m+[m[32m    </navigator>[m
[32m+[m[32m    <panes>[m
[32m+[m[32m      <pane id="Scope" />[m
[32m+[m[32m      <pane id="Scratches" />[m
[32m+[m[32m      <pane id="ProjectPane">[m
[32m+[m[32m        <subPane>[m
[32m+[m[32m          <PATH>[m
[32m+[m[32m            <PATH_ELEMENT>[m
[32m+[m[32m              <option name="myItemId" value="News" />[m
[32m+[m[32m              <option name="myItemType" value="com.intellij.ide.projectView.impl.nodes.ProjectViewProjectNode" />[m
[32m+[m[32m            </PATH_ELEMENT>[m
[32m+[m[32m          </PATH>[m
[32m+[m[32m          <PATH>[m
[32m+[m[32m            <PATH_ELEMENT>[m
[32m+[m[32m              <option name="myItemId" value="News" />[m
[32m+[m[32m              <option name="myItemType" value="com.intellij.ide.projectView.impl.nodes.ProjectViewProjectNode" />[m
[32m+[m[32m            </PATH_ELEMENT>[m
[32m+[m[32m            <PATH_ELEMENT>[m
[32m+[m[32m              <option name="myItemId" value="News" />[m
[32m+[m[32m              <option name="myItemType" value="com.intellij.ide.projectView.impl.nodes.PsiDirectoryNode" />[m
[32m+[m[32m            </PATH_ELEMENT>[m
[32m+[m[32m          </PATH>[m
[32m+[m[32m          <PATH>[m
[32m+[m[32m            <PATH_ELEMENT>[m
[32m+[m[32m              <option name="myItemId" value="News" />[m
[32m+[m[32m              <option name="myItemType" value="com.intellij.ide.projectView.impl.nodes.ProjectViewProjectNode" />[m
[32m+[m[32m            </PATH_ELEMENT>[m
[32m+[m[32m            <PATH_ELEMENT>[m
[32m+[m[32m              <option name="myItemId" value="News" />[m
[32m+[m[32m              <option name="myItemType" value="com.intellij.ide.projectView.impl.nodes.PsiDirectoryNode" />[m
[32m+[m[32m            </PATH_ELEMENT>[m
[32m+[m[32m            <PATH_ELEMENT>[m
[32m+[m[32m              <option name="myItemId" value="ThinkPHP" />[m
[32m+[m[32m              <option name="myItemType" value="com.intellij.ide.projectView.impl.nodes.PsiDirectoryNode" />[m
[32m+[m[32m            </PATH_ELEMENT>[m
[32m+[m[32m          </PATH>[m
[32m+[m[32m          <PATH>[m
[32m+[m[32m            <PATH_ELEMENT>[m
[32m+[m[32m              <option name="myItemId" value="News" />[m
[32m+[m[32m              <option name="myItemType" value="com.intellij.ide.projectView.impl.nodes.ProjectViewProjectNode" />[m
[32m+[m[32m            </PATH_ELEMENT>[m
[32m+[m[32m            <PATH_ELEMENT>[m
[32m+[m[32m              <option name="myItemId" value="News" />[m
[32m+[m[32m              <option name="myItemType" value="com.intellij.ide.projectView.impl.nodes.PsiDirectoryNode" />[m
[32m+[m[32m            </PATH_ELEMENT>[m
[32m+[m[32m            <PATH_ELEMENT>[m
[32m+[m[32m              <option name="myItemId" value="ThinkPHP" />[m
[32m+[m[32m              <option name="myItemType" value="com.intellij.ide.projectView.impl.nodes.PsiDirectoryNode" />[m
[32m+[m[32m            </PATH_ELEMENT>[m
[32m+[m[32m            <PATH_ELEMENT>[m
[32m+[m[32m              <option name="myItemId" value="Conf" />[m
[32m+[m[32m              <option name="myItemType" value="com.intellij.ide.projectView.impl.nodes.PsiDirectoryNode" />[m
[32m+[m[32m            </PATH_ELEMENT>[m
[32m+[m[32m          </PATH>[m
[32m+[m[32m          <PATH>[m
[32m+[m[32m            <PATH_ELEMENT>[m
[32m+[m[32m              <option name="myItemId" value="News" />[m
[32m+[m[32m              <option name="myItemType" value="com.intellij.ide.projectView.impl.nodes.ProjectViewProjectNode" />[m
[32m+[m[32m            </PATH_ELEMENT>[m
[32m+[m[32m            <PATH_ELEMENT>[m
[32m+[m[32m              <option name="myItemId" value="News" />[m
[32m+[m[32m              <option name="myItemType" value="com.intellij.ide.projectView.impl.nodes.PsiDirectoryNode" />[m
[32m+[m[32m            </PATH_ELEMENT>[m
[32m+[m[32m            <PATH_ELEMENT>[m
[32m+[m[32m              <option name="myItemId" value="Public" />[m
[32m+[m[32m              <option name="myItemType" value="com.intellij.ide.projectView.impl.nodes.PsiDirectoryNode" />[m
[32m+[m[32m            </PATH_ELEMENT>[m
[32m+[m[32m          </PATH>[m
[32m+[m[32m          <PATH>[m
[32m+[m[32m            <PATH_ELEMENT>[m
[32m+[m[32m              <option name="myItemId" value="News" />[m
[32m+[m[32m              <option name="myItemType" value="com.intellij.ide.projectView.impl.nodes.ProjectViewProjectNode" />[m
[32m+[m[32m            </PATH_ELEMENT>[m
[32m+[m[32m            <PATH_ELEMENT>[m
[32m+[m[32m              <option name="myItemId" value="News" />[m
[32m+[m[32m              <option name="myItemType" value="com.intellij.ide.projectView.impl.nodes.PsiDirectoryNode" />[m
[32m+[m[32m            </PATH_ELEMENT>[m
[32m+[m[32m            <PATH_ELEMENT>[m
[32m+[m[32m              <option name="myItemId" value="Public" />[m
[32m+[m[32m              <option name="myItemType" value="com.intellij.ide.projectView.impl.nodes.PsiDirectoryNode" />[m
[32m+[m[32m            </PATH_ELEMENT>[m
[32m+[m[32m            <PATH_ELEMENT>[m
[32m+[m[32m              <option name="myItemId" value="liger_ui" />[m
[32m+[m[32m              <option name="myItemType" value="co