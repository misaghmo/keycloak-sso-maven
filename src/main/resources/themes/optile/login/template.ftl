<#function max(a, b)>
  <#return (a?number > b?number)?then(a, b)>
</#function>
<#macro registrationLayout bodyClass="" displayInfo=false displayMessage=true>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"  "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" class="${properties.kcHtmlClass!}">

<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <#if properties.meta?has_content>
        <#list properties.meta?split(' ') as meta>
            <meta name="${meta?split('==')[0]}" content="${meta?split('==')[1]}"/>
        </#list>
    </#if>
    <title><#nested "title"></title>
    <link rel="apple-touch-icon" sizes="180x180" href="${url.resourcesPath}/favicon/apple-touch-icon.png">
	<link rel="icon" type="image/png" sizes="32x32" href="${url.resourcesPath}/favicon/32x32.png">
	<link rel="icon" type="image/png" sizes="16x16" href="${url.resourcesPath}/favicon/16x16.png">
	<link rel="manifest" href="${url.resourcesPath}/favicon/site.webmanifest">
	<link rel="mask-icon" href="${url.resourcesPath}/favicon/safari-pinned-tab.svg" color="#008940">
	<meta name="msapplication-TileColor" content="#008940">
	<meta name="theme-color" content="#ffffff">
    <link rel="shortcut icon" href="${url.resourcesPath}/img/favicon.ico" type="image/x-icon" />
    <#if properties.styles?has_content>
        <#list properties.styles?split(' ') as style>
            <link href="${url.resourcesPath}/${style}" rel="stylesheet" />
        </#list>
    </#if>
    <#if properties.scripts?has_content>
        <#list properties.scripts?split(' ') as script>
            <script src="${url.resourcesPath}/${script}" type="text/javascript"></script>
        </#list>
    </#if>
    <#if scripts??>
        <#list scripts as script>
            <script src="${script}" type="text/javascript"></script>
        </#list>
    </#if>
</head>

<body class="${properties.kcBodyClass!}">
    <div class="animatedLogo"></div>
    <div id="container" class="container">
        <div id="logo-wrapper">
            <div id="payoneer-logo">
                <span class="logo"></span>
            </div>
        </div>
        <div id="kc-container" class="${properties.kcContainerClass!}">
            <div id="kc-container-wrapper" class="${properties.kcContainerWrapperClass!}">
                <#if displayMessage && message?has_content && message.summary?has_content>
                    <div id="kc-feedback" class="feedback-${message.type} ${properties.kcFeedBackClass!}">
                        <div id="alert-icon">
                            <span class="alert-${message.type}-icon"></span>
                        </div>
                        <button type="button" class="close" data-dismiss="alert" aria-label="Close"> 
                            <div id="close-icon">
                                <span class="close-icon"></span>
                            </div>
                        </button>
                        <div id="kc-feedback-wrapper">
                            ${message.summary}
                        </div>
                    </div>
                <#else>
                    <div id="kc-feedback-placeholder" class="${properties.kcFeedBackPlaceholderClass!}">
                        <div id="kc-feedback-placeholder-wrapper"></div>
                    </div>
                </#if>
                <div id="inner-wrapper">
                    <div id="kc-header" class="${properties.kcHeaderClass!}">
                        <div id="kc-header-wrapper" class="${properties.kcHeaderWrapperClass!}"><#nested "header"></div>
                    </div>

                    <#if realm.internationalizationEnabled>
                        <div id="kc-locale" class="${properties.kcLocaleClass!}">
                            <div id="kc-locale-wrapper" class="${properties.kcLocaleWrapperClass!}">
                                <div class="kc-dropdown" id="kc-locale-dropdown">
                                    <a href="#" id="kc-current-locale-link">${locale.current}</a>
                                    <ul>
                                        <#list locale.supported as l>
                                            <li class="kc-dropdown-item"><a href="${l.url}">${l.label}</a></li>
                                        </#list>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </#if>

                    <div id="kc-content" class="${properties.kcContentClass!}">
                        <div id="kc-content-wrapper" class="${properties.kcContentWrapperClass!}">
                            <#if displayInfo>
                                <div id="kc-info" class="${properties.kcInfoAreaClass!}">
                                    <div id="kc-info-wrapper" class="${properties.kcInfoAreaWrapperClass!}">
                                        <#nested "info">
                                    </div>
                                </div>
                            </#if>
                            <div id="kc-form" class="${properties.kcFormAreaClass!}">
                                <div id="kc-form-wrapper" class="${properties.kcFormAreaWrapperClass!}">
                                    <#nested "form">
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</body>
</html>
</#macro>
