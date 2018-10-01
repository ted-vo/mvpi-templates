<?xml version="1.0"?>
<recipe>
    <#if generateLayout>
    <open file="${escapeXmlAttribute(resOut)}/layout/${layoutName}.xml" />
    </#if>
    <instantiate from="src/app_package/Contract.kt.ftl"
                   to="${escapeXmlAttribute(srcOut)}/${className}Contract.kt" />
    <instantiate from="src/app_package/Activity.kt.ftl"
                   to="${escapeXmlAttribute(srcOut)}/${className}Activity.kt" />
    <instantiate from="src/app_package/Presenter.kt.ftl"
                   to="${escapeXmlAttribute(srcOut)}/${className}Presenter.kt" />
 		<instantiate from="src/app_package/Interactor.kt.ftl"
                   to="${escapeXmlAttribute(srcOut)}/${className}Interactor.kt" />
 		<instantiate from="src/app_package/Module.kt.ftl"
                   to="${escapeXmlAttribute(srcOut)}/${className}ActivityModule.kt"/>
    <instantiate from="src/app_package/activity_layout.xml.ftl"
									 to="${escapeXmlAttribute(resOut)}/layout/${layoutName}.xml" />
    <open file="${escapeXmlAttribute(srcOut)}/${className}Activity.kt"/>
</recipe>