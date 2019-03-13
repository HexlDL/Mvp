<?xml version="1.0"?>
<globals>
    <global id="hasNoActionBar" type="boolean" value="false" />
    <global id="isLauncher" type="boolean" value="${isNewProject?string}" />
<#--<global id="activityClassName" type="string" value="${commonName}Activity"/>-->
<#--<global id="fragmentClassName" type="string" value="${fragmentClass}Fragment"/>-->
<#--<global id="presenterClassName" type="string" value="${presenterClass}Presenter"/>-->
<#--<global id="modelClassName" type="string" value="${modelClass}Model"/>-->
    <global id="mvpPath" type="string" value="${escapeXmlAttribute(srcOut)}/mvp/"/>
    <global id="adapterPath" type="string" value="${escapeXmlAttribute(srcOut)}/adapter/"/>
<#include "../common/common_globals.xml.ftl" />
</globals>
