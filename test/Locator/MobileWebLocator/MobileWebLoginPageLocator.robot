*** Settings ***
Library    SeleniumLibrary
Library    BuiltIn
Library    AngularJSLibrary

*** Variable ***

${MobileUsernameTextbox}       xpath=//input[@class='text'][@name='email']
${MobilePasswordTextbox}      xpath=//input[@class='text'][@name='password']
${MobileLoginButton}      id=grs_button
