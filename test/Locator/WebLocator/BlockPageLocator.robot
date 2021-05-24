*** Settings ***
Library    SeleniumLibrary
Library    BuiltIn
Library    AngularJSLibrary

*** Variable ***

${BlockedMembersText}       xpath=//div[@class='tab active'][text()='ENGELLEDİĞİNİZ ÜYELER:']
