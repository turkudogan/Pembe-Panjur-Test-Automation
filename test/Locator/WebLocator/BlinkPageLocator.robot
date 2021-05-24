*** Settings ***
Library    SeleniumLibrary
Library    BuiltIn
Library    AngularJSLibrary

*** Variable ***

${BlinkingAtYouTab}       xpath=//div[@class='tab active'][text()='Göz Kırpanlar:']
${BlinkedMembersTab}       xpath=//div[@class='tab active'][text()='Göz Kırptıklarınız:']
