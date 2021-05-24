*** Settings ***
Library    SeleniumLibrary
Library    BuiltIn
Library    AngularJSLibrary

*** Variable ***

${SafetySuggestionsText}       xpath=//div[@class='guideTitle'][text()='GÜVENLİĞİNİZ İÇİN TAVSİYELER:']
