<#import "template.ftl" as layout>
<@layout.registrationLayout displayInfo=social.displayInfo; section>
    <#if section = "title">
        ${msg("loginTitle",(realm.name!''))}
    <#elseif section = "header">
        ${msg("loginTitleHtml",(realm.name!''))}
    <#elseif section = "form">
        <#if realm.password>
            <form id="kc-form-login" class="${properties.kcFormClass!}" action="${url.loginAction}" method="post">
                <div id="form-group" class="">
                    <div class="${properties.kcFormGroupClass!}">
                        <div id="input-wrapper" class="${properties.kcInputWrapperClass!}">
                            <input id="username" class="${properties.kcInputClass!}" name="username" value="${(login.username!'')}" type="text"  placeholder=" " />
                            <div id="label" class="${properties.kcLabelWrapperClass!}">
                                <label for="username" class="${properties.kcLabelClass!}"><#if !realm.registrationEmailAsUsername>${msg("usernameOrEmail")}<#else>${msg("email")}</#if></label>
                            </div>
                        </div>
                    </div>
                </div>

                <div id="form-group" class="">
                    <div class="${properties.kcFormGroupClass!}">
                        <div id="input-wrapper" class="${properties.kcInputWrapperClass!}">
                            <input id="password" class="${properties.kcInputClass!}" name="password" type="password" placeholder=" " />
                            <div id="label" class="${properties.kcLabelWrapperClass!}">
                                <label for="password" class="${properties.kcLabelClass!}">${msg("password")}</label>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="${properties.kcFormGroupClass!}">
                    <div id="kc-form-buttons" class="${properties.kcFormButtonsClass!}">
                        <div class="${properties.kcFormButtonsWrapperClass!}">
                            <input class="${properties.kcButtonClass!} ${properties.kcButtonPrimaryClass!} ${properties.kcButtonLargeClass!}" name="login" id="kc-login" type="submit" value="${msg("doLogIn")}"/>
                        </div>
                     </div>
                    <div id="kc-form-options" class="${properties.kcFormOptionsClass!}">
                        <#if realm.rememberMe>
                            <div class="checkbox">
                                <label>
                                    <#if login.rememberMe??>
                                        <input id="rememberMe" name="rememberMe" type="checkbox" tabindex="3" checked> ${msg("rememberMe")}
                                    <#else>
                                        <input id="rememberMe" name="rememberMe" type="checkbox" tabindex="3"> ${msg("rememberMe")}
                                    </#if>
                                </label>
                            </div>
                        </#if>
                        <div class="${properties.kcFormOptionsWrapperClass!}">
                            <#if realm.resetPasswordAllowed>
                                <span><a href="${url.loginResetCredentialsUrl}">${msg("doForgotPassword")}</a></span>
                            </#if>
                        </div>
                    </div>
                </div>
            </form>
        </#if>
    <#elseif section = "info" >
        <#if realm.password && realm.registrationAllowed>
            <div id="kc-registration">
                <span>${msg("noAccount")} <a href="${url.registrationUrl}">${msg("doRegister")}</a></span>
            </div>
        </#if>

        <#if realm.password && social.providers??>
            <div id="kc-social-providers">
                <ul>
                    <#list social.providers as p>
                        <li><a href="${p.loginUrl}" id="zocial-${p.alias}" class="zocial ${p.providerId}"> <span class="text">${p.alias}</span></a></li>
                    </#list>
                </ul>
            </div>
        </#if>
    </#if>
</@layout.registrationLayout>
