*** Settings ***
Library    SeleniumLibrary
Library    BuiltIn
Library    AngularJSLibrary

*** Variable ***

${PhotoSuggestionsText}       xpath=//div[@class='guideTitle'][text()='FOTOĞRAFLARINIZ İÇİN TAVSİYELER:']
