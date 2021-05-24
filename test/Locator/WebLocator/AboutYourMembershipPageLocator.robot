*** Settings ***
Library    SeleniumLibrary
Library    BuiltIn
Library    AngularJSLibrary

*** Variable ***

${AboutYourMembershipText}       xpath=//div[@class='guideTitle'][text()='ÜYELİĞİNİZ HAKKINDA:']
