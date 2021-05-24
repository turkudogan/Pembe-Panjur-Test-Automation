*** Settings ***
Library    SeleniumLibrary
Library    BuiltIn
Library    AngularJSLibrary

*** Variable ***

${SelectMembershipPackageText}       xpath=//div[@class='paymentTitle'][text()='Üyelik Paketinizi Seçin:']
