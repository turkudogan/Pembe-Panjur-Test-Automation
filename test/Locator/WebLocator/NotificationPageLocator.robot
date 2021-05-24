*** Settings ***
Library    SeleniumLibrary
Library    BuiltIn
Library    AngularJSLibrary

*** Variable ***

${NotificationSettingsText}       xpath=//div[@class='headerContainer'][text()='Bildirim Ayarları']
