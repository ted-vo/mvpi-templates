<?xml version="1.0"?>
<recipe>
    <#if includeLayout>
      <instantiate from="root/src/app_package/dialog_layout.xml.ftl"
                   to="${escapeXmlAttribute(resOut)}/layout/${dialogName}.xml" />
      <open file="${escapeXmlAttribute(resOut)}/layout/${dialogName}.xml" />
    </#if>
    <instantiate from="root/src/app_package/Contract.kt.ftl"
                   to="${escapeXmlAttribute(srcOut)}/${className}Contract.kt" />
    <instantiate from="root/src/app_package/Dialog.kt.ftl"
                   to="${escapeXmlAttribute(srcOut)}/${className}Dialog.kt" />
    <instantiate from="root/src/app_package/Presenter.kt.ftl"
                   to="${escapeXmlAttribute(srcOut)}/${className}Presenter.kt" />
 		<instantiate from="root/src/app_package/Interactor.kt.ftl"
                   to="${escapeXmlAttribute(srcOut)}/${className}Interactor.kt" />
 		<instantiate from="root/src/app_package/Module.kt.ftl"
                   to="${escapeXmlAttribute(srcOut)}/${className}DialogModule.kt"/>
    <instantiate from="root/src/app_package/Provider.kt.ftl"
                   to="${escapeXmlAttribute(srcOut)}/${className}DialogProvider.kt"/>
    <open file="${escapeXmlAttribute(srcOut)}/${className}Dialog.kt"/>
</recipe>