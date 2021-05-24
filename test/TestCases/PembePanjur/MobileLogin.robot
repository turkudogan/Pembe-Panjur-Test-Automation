*** Settings ***

Library     SeleniumLibrary
Library  AngularJSLibrary
Library	AngularJSLibrary	ignore_implicit_angular_wait=${true}
Resource   ../../StepDefination/MySteps/MySteps.robot
Test Teardown    Close Browser

*** Test Cases ***

Successfully login with correct username and password Galaxy Note 3
    User go to login page with "Galaxy Note 3" device
    User fills username textbox with "sinanulug@outlook.com" on mobile web
    User fills password textbox with "Testotomasyon" on mobile web
    User click "${MobileLoginButton}" button
    Sleep    2
    User must able to see element "${MenuItemHomePage}"

Successfully login with correct username and password iPhone 6
    User go to login page with "iPhone 6" device
    User fills username textbox with "sinanulug@outlook.com" on mobile web
    User fills password textbox with "Testotomasyon" on mobile web
    User click "${MobileLoginButton}" button
    Sleep    2
    User must able to see element "${MenuItemHomePage}"

Successfully login with correct username and password Nokia Lumia 520
    User go to login page with "Nokia Lumia 520" device
    User fills username textbox with "sinanulug@outlook.com" on mobile web
    User fills password textbox with "Testotomasyon" on mobile web
    User click "${MobileLoginButton}" button
    Sleep    2
    User must able to see element "${MenuItemHomePage}"

Successfully login with correct username and password iPhone 6 Plus
    User go to login page with "iPhone 6 Plus" device
    User fills username textbox with "sinanulug@outlook.com" on mobile web
    User fills password textbox with "Testotomasyon" on mobile web
    User click "${MobileLoginButton}" button
    Sleep    2
    User must able to see element "${MenuItemHomePage}"

Successfully login with correct username and password BlackBerry Z30
    User go to login page with "BlackBerry Z30" device
    User fills username textbox with "sinanulug@outlook.com" on mobile web
    User fills password textbox with "Testotomasyon" on mobile web
    User click "${MobileLoginButton}" button
    Sleep    2
    User must able to see element "${MenuItemHomePage}"

Successfully login with correct username and password LG Optimus L70
    User go to login page with "LG Optimus L70" device
    User fills username textbox with "sinanulug@outlook.com" on mobile web
    User fills password textbox with "Testotomasyon" on mobile web
    User click "${MobileLoginButton}" button
    Sleep    2
    User must able to see element "${MenuItemHomePage}"
