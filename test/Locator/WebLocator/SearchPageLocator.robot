*** Settings ***
Library    SeleniumLibrary
Library    BuiltIn
Library    AngularJSLibrary

*** Variable ***

${SearchTitle}       xpath=//div[@class='categoryTitle'][text()='Arama']
