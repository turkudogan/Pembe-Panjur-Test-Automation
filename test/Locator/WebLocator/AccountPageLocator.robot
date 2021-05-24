*** Settings ***
Library    SeleniumLibrary
Library    BuiltIn
Library    AngularJSLibrary

*** Variable ***

${AccountSettingsText}       xpath=//div[@class='headerContainer'][text()='HESAP AYARLARI:']
