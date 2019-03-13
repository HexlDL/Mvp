<?xml version="1.0"?>
<recipe>
<#-- 创建一个实例
    from:从指定路径下引入该模板文件,相关模板代码都将在该文件中创建
    to:输出到指定的目录
       mvpPath、 相当于变量,该变量在global文件中进行定义
 -->
<#if needActivity >
    <instantiate from="root\src\app_package\LoginActivity.java.ftl"
                 to="${mvpPath}ui/activity/${commonName}Activity.java"/>

<#-- 打开创建的文件 -->
    <open file="${mvpPath}ui/activity/${commonName}Activity.java"/>

</#if>
<#if needFragment>
    <instantiate from="root/src/app_package/LoginFragment.java.ftl"
                 to="${mvpPath}ui/fragment/${commonName}Fragment.java"/>

<#-- 打开创建的文件 -->
    <open file="${mvpPath}ui/fragment/${commonName}Fragment.java"/>

</#if>

<#-- 当选中layout 为true 时才会去创建该布局 -->
<#if needActivityLayout && needActivity>
<#-- 创建activity 布局 -->
    <instantiate from="root/res/layout/simple.xml.ftl"
                 to="${escapeXmlAttribute(resOut)}/layout/${layoutActivityClass}.xml"/>
</#if>

<#if needFragmentLayout && needFragment>
<#-- 创建fragment 布局 -->
    <instantiate from="root/res/layout/simple.xml.ftl"
                 to="${escapeXmlAttribute(resOut)}/layout/${layoutFragmentClass}.xml"/>
</#if>

<#if needActivity>
    <instantiate from="root/AndroidManifest.xml.ftl"
                 to="${escapeXmlAttribute(manifestOut)}/AndroidManifest.xml"/>
</#if>

<#if needPresenter>
    <instantiate from="root/src/app_package/LoginPresenter.java.ftl"
                 to="${mvpPath}/presenter/${commonName}Presenter.java"/>
</#if>

<#if needModel>
    <instantiate from="root/src/app_package/LoginModel.java.ftl"
                 to="${mvpPath}/model/${commonName}Model.java"/>
</#if>

<#if needAdapter>
    <instantiate from="root/src/app_package/LoginAdapter.java.ftl"
                 to="${adapterPath}/${commonName}Adapter.java"/>
</#if>

<#if needAdapter && needAdapterLayout>
    <instantiate from="root/res/layout/simple.xml.ftl"
                 to="${escapeXmlAttribute(resOut)}/layout/${adapterLayoutClass}.xml"/>
</#if>
</recipe>