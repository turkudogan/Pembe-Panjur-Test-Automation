*** Settings ***
Library    SeleniumLibrary
Library    BuiltIn
Library    AngularJSLibrary

*** Variable ***

${ProfileVisitsTab}       xpath=//div[@class='tab active'][text()='Profilinizi Gezen']
${VisitedProfilesTab}       xpath=//div[@class='tab active'][text()='Profilini Gezdikleriniz']
