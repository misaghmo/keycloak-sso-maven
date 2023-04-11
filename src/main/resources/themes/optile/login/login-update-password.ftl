<#import "template.ftl" as layout>
<@layout.registrationLayout displayInfo=false; section>
    <#if section = "title">
        ${msg("updatePasswordTitle")}
    <#elseif section = "header">
        ${msg("updatePasswordTitle")}
    <#elseif section = "form">
        <form id="kc-passwd-update-form" class="${properties.kcFormClass!}" action="${url.loginAction}" method="post">
            <div id="form-group" class="${properties.kcFormGroupClass!}">
                <div id="input-wrapper" class="${properties.kcInputWrapperClass!}">
                    <input type="password" id="password-new" name="password-new" class="${properties.kcInputClass!}" placeholder=" " autofocus />
                    <div id="label" class="${properties.kcLabelWrapperClass!}">
                        <label for="password-new" class="${properties.kcLabelClass!}">${msg("passwordNew")}</label>
                    </div>
                    <div id="input-icon">
                        <span class="info-icon"></span>
                    </div>
                    <div id="kc-tooltip">
                        ${msg("passwordStrengthMessage")}
                        <div id="kc-tooltip-text">${msg("passwordStrengthText")} <span id="strength-label">${msg("passwordStrengthNotStrongLabel")}</span></div>
                    </div>
                </div>
            </div>

            <div id="form-group" class="${properties.kcFormGroupClass!}">
                <div id="input-wrapper" class="${properties.kcInputWrapperClass!}">
                    <input type="password" id="password-confirm" name="password-confirm" class="${properties.kcInputClass!}" placeholder=" " />
                    <div id="label" class="${properties.kcLabelWrapperClass!}">
                        <label for="password-confirm" class="${properties.kcLabelClass!}">${msg("passwordConfirm")}</label>
                    </div>
                </div>
            </div>

            <div class="${properties.kcFormGroupClass!}">
                <div id="kc-form-options" class="${properties.kcFormOptionsClass!}">
                    <div class="${properties.kcFormOptionsWrapperClass!}">
                    </div>
                </div>

                <div id="kc-form-buttons" class="${properties.kcFormButtonsClass!}">
                    <input class="${properties.kcButtonClass!} ${properties.kcButtonPrimaryClass!} ${properties.kcButtonLargeClass!}" type="submit" value="${msg("doSave")}" />
                </div>
            </div>
        </form>
    </#if>
</@layout.registrationLayout>
