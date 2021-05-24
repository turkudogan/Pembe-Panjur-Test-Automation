*** Settings ***
Library    SeleniumLibrary
Library    BuiltIn
Library    AngularJSLibrary

*** Variable ***

${MessageSuggestionsText}       xpath=//div[@class='guideTitle'][text()='MESAJLARINIZ İÇİN TAVSİYELER:']
