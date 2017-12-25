<?xml version="1.0"?>
<#import "root://activities/common/kotlin_macros.ftl" as kt>
<recipe>
    <@kt.addAllKotlinDependencies />
    <#if useSupport><dependency mavenUrl="com.android.support:support-v4:${buildApi}.+"/></#if>
    <instantiate from="src/app_package/Contract.java.ftl"
                   to="${escapeXmlAttribute(srcOut)}/${className}Contract.java" />
    <instantiate from="src/app_package/Model.java.ftl"
                   to="${escapeXmlAttribute(srcOut)}/${className}Model.java" />
    <instantiate from="src/app_package/View.java.ftl"
                   to="${escapeXmlAttribute(srcOut)}/${className}View.java" />
    <instantiate from="src/app_package/MvpViewFragment.java.ftl"
                   to="${escapeXmlAttribute(srcOut)}/${className}Fragment.java" />
    <instantiate from="src/app_package/BasePresenter.java.ftl"
                   to="${srcDir}/${slashedPackageName(applicationPackage)}/BasePresenter.java" />
    <instantiate from="src/app_package/Presenter.java.ftl"
                   to="${escapeXmlAttribute(srcOut)}/${className}Presenter.java" />
 
    <#if includeLayout>
        <instantiate from="res/layout/fragment_blank.xml.ftl"
                       to="${escapeXmlAttribute(resOut)}/layout/${escapeXmlAttribute(fragmentName)}.xml" />

        <open file="${escapeXmlAttribute(resOut)}/layout/${escapeXmlAttribute(fragmentName)}.xml" />
    </#if>
 
    <open file="${srcOut}/${className}Presenter.java"/>
</recipe>
