*** Settings ***
Library    SeleniumLibrary
Library    BuiltIn
Library    AngularJSLibrary

*** Variable ***

${UsernameTextbox}       xpath=//*[@id="email"]
${PasswordTextbox}      xpath=//input[@id='password']
${LoginButton}      xpath=//input[@class='login_button_input']
${FacebookLoginButton}    xpath=//input[@class='facebook_login_button_input']
${FacebookLoginButtonOnFacebookPage}    xpath=//*[@id="loginbutton"]
${PasswordTextBoxOnFacebookPage}    xpath=//*[@id="pass"]
${ContinueAsUserButtonOnFacebookPage}   xpath=//*[@id="u_0_4_3Y"]/div[2]/div[2]/div[1]/button
${NowRegisterText}    xpath=//*[@id="indexBody"]/section/div/div/div[2]/div[1]/a
${DownloadAppText}    xpath=//*[@id="indexBody"]/section/div/div/div[2]/div[2]/div/a
${AppStoreGooglePlayIcon}   xpath=//*[@id="webToAppButtonRow"]
