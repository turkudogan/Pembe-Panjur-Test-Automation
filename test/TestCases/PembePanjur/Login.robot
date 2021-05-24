*** Settings ***

Library     SeleniumLibrary
Library  AngularJSLibrary
Library	AngularJSLibrary	ignore_implicit_angular_wait=${true}
Resource   ../../StepDefination/MySteps/MySteps.robot
Test Teardown    Close Browser

*** Test Cases ***

Successfully login with correct username and password
    User go to login page
    User fills username textbox with "sinanulug@outlook.com"
    User fills password textbox with "Testotomasyon"
    User click "${LoginButton}" button
    Sleep    2
    User must able to see element "${MenuItemHomePage}"

Successfully login with mobile phone number and password
    User go to login page
    User fills username textbox with "5423101177"
    User fills password textbox with "Testotomasyon"
    User click "${LoginButton}" button
    Sleep    2
    User must able to see element "${MenuItemHomePage}"

Login with correct username and incorrect password
    User go to login page
    User fills username textbox with "sinanulug@outlook.com"
    User fills password textbox with "yanlışşifre"
    User click "${LoginButton}" button
    User must able to see "Hatalı şifre." text on page

Login with non-registered user
    User go to login page
    User fills username textbox with "sinan.ulug@outlook.com"
    User fills password textbox with "sifre123"
    User click "${LoginButton}" button
    User must able to see "Böyle bir üye bulunamadı." text on page

Login with null username and null password
    User go to login page
    User fills username textbox with ""
    User fills password textbox with ""
    User click "${LoginButton}" button
    User must able to see "E-posta boş olamaz." text on page

Login with null username and password
    User go to login page
    User fills username textbox with ""
    User fills password textbox with "test123"
    User click "${LoginButton}" button
    User must able to see "E-posta boş olamaz." text on page

Login with username and null password
    User go to login page
    User fills username textbox with "sinanulug@outlook.com"
    User fills password textbox with ""
    User click "${LoginButton}" button
    User must able to see "Şifre boş olamaz." text on page

Verify that Üye Girişi text on login page
    User go to login page
    User must able to see "ÜYE GİRİŞİ" text on page

Verify that e-mail or phone number text should be seen on login page
    User go to login page
    User must able to see "E-posta veya Telefon Numarası" text on page

Verify that password text should be seen on login page
    User go to login page
    User must able to see "Şifre" text on page

Successfull facebook login with correct username and password
    User go to login page
    User click "${FacebookLoginButton}" button
    Sleep   3
    Select Window   Facebook
    User successfully login with "sinanulug@outlook.com" and "facebook.123" on facebook
    Sleep   5
    Select Window   Anasayfa: Sinan
    User must able to see element "${MenuItemHomePage}"

Login with correct username and incorrect password on facebook
    User go to login page
    User click "${FacebookLoginButton}" button
    Sleep   3
    Select Window   Facebook
    User successfully login with "sinanulug@outlook.com" and "abcde" on facebook
    User must able to see "Please re-enter your password" text on page

Login with correct incorrect username and correct password on facebook
    User go to login page
    User click "${FacebookLoginButton}" button
    Sleep   3
    Select Window   Facebook
    User successfully login with "sinanulug@hotmail.com" and "abcde" on facebook
    User must able to see "Incorrect email address" text on page

Register text link should be redirected to register page
    User go to login page
    User click "${NowRegisterText}" button
    Sleep   3
    User must able to see "Cinsiyetiniz:" text on page
    User must able to see "Aradığınız Kişi:" text on page
    User must able to see "Cinsiyetiniz:" text on page
    User must able to see "E-posta veya Telefon Numarası:" text on page

Download App text link should be redirected to home page
    User go to login page
    User click "${DownloadAppText}" button
    Sleep   3
    User must able to see AppStore and Google Play Store Icon
    Sleep   5
