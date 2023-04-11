<#import "template.ftl" as layout>
<@layout.registrationLayout displayInfo=false; section>
    <#if section = "title">
        ${msg("emailForgotTitle")}
    <#elseif section = "header">
        ${msg("emailForgotTitle")}
    <#elseif section = "form">
        <form id="kc-reset-password-form" class="${properties.kcFormClass!}" action="${url.loginAction}" method="post">
            <p class="instruction">${msg("emailInstruction")}</p>
            <div id="form-group" class="${properties.kcFormGroupClass!}">
                <div  id="input-wrapper" class="${properties.kcInputWrapperClass!}">
                    <input type="text" id="username" name="username" class="${properties.kcInputClass!}"  placeholder=" "  />
                    <div id="label" class="${properties.kcLabelWrapperClass!}">
                        <label for="username" class="${properties.kcLabelClass!}">${msg("email")}</label>
                    </div>
                </div>
            </div>

            <div class="${properties.kcFormGroupClass!}">
                <div id="kc-form-buttons" class="${properties.kcFormButtonsClass!}">
                    <input class="${properties.kcButtonClass!} ${properties.kcButtonPrimaryClass!} ${properties.kcButtonLargeClass!}" type="submit" value="${msg("doSendResetLink")}"/>
                </div>
                <div id="kc-form-options" class="${properties.kcFormOptionsClass!}">
                    <div class="${properties.kcFormOptionsWrapperClass!}">
                        <span><a href="${url.loginUrl}">${msg("backToLogin")}</a></span>
                    </div>
                </div>
            </div>
        </form>
    </#if>
</@layout.registrationLayout>