*** Settings ***
Library    SeleniumLibrary
Library    BuiltIn
Library    AngularJSLibrary

*** Variable ***

${CompatibleMembersTab}       xpath=//div[@class='tab active'][text()='Uygun Üyeler']
${NotInteredtedMembersTab}       xpath=//div[@class='tab active'][text()='İlgilenmediğiniz Üyeler']
