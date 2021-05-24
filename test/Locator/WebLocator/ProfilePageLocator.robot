*** Settings ***
Library    SeleniumLibrary
Library    BuiltIn
Library    AngularJSLibrary

*** Variable ***

${ProfilePreviewButton}       xpath=//a[text()='Profil Önizleme']
${EditProfileButton}       xpath=//div[@class='sendMessageButton']//a[text()='Profil Düzenleme']
