*** Settings ***

Library      SeleniumLibrary
Library      AngularJSLibrary
Library      String
Library	AngularJSLibrary	ignore_implicit_angular_wait=${true}
Library      BuiltIn
Resource      ../../Locator/WebLocator/LoginPageLocator.robot
Resource      ../../Locator/MobileWebLocator/MobileWebLoginPageLocator.robot
Resource      ../../Locator/WebLocator/HomePageLocator.robot
Resource      ../../Locator/WebLocator/AccountPageLocator.robot
Resource      ../../Locator/WebLocator/CompatibleMembersPageLocator.robot
Resource      ../../Locator/WebLocator/FavoritesPageLocator.robot
Resource      ../../Locator/WebLocator/MessagesPageLocator.robot
Resource      ../../Locator/WebLocator/SearchPageLocator.robot
Resource      ../../Locator/BaseLocator/BaseLocator.robot
Resource      ../../Locator/WebLocator/MembershipPackagesPageLocator.robot
Resource      ../../Locator/WebLocator/VisitProfilePageLocator.robot
Resource      ../../Locator/WebLocator/ProfilePageLocator.robot
Resource      ../../Locator/WebLocator/BlinkPageLocator.robot
Resource      ../../Locator/WebLocator/BlockPageLocator.robot
Resource      ../../Locator/WebLocator/CharacterAnalysisLocator.robot
Resource      ../../Locator/WebLocator/AboutYourMembershipPageLocator.robot
Resource      ../../Locator/WebLocator/PhotoSuggestionsPageLocator.robot
Resource      ../../Locator/WebLocator/SafetySuggestionsPageLocator.robot
Resource      ../../Locator/WebLocator/MessageSuggestionsPageLocator.robot
Resource      ../../Locator/WebLocator/SocialPageLocator.robot
Resource      ../../Locator/WebLocator/NotificationPageLocator.robot






*** Keywords ***

User go to login page
     Close All Browsers
     Open Browser   ${URL}    ${BROWSER}
     Delete All Cookies
     Maximize Browser Window
     Set Browser Implicit Wait    2

User go to login page with "${InputText}" device
    Close All Browsers
    ${devname}    Create Dictionary    deviceName=${InputText}
    ${mobile_emulation}    Create Dictionary     mobileEmulation=${devname}
    ${chromeoptions}    Evaluate    sys.modules['selenium.webdriver.chrome.options'].Options()     sys, selenium.webdriver.chrome.options
    ${chromeoptions._experimental_options}    Set Variable     ${mobile_emulation}
    Call Method    ${chromeoptions}    add_experimental_option    mobileEmulation     ${devname}
    Create Webdriver     Chrome    chrome_options=${chromeoptions}
    Goto    ${URL}
    Delete All Cookies
    Sleep    4

User must able to see element "${WhichLocator}"
    Wait Until Element Is Enabled   ${WhichLocator}    5
    Page Should Contain Element     ${WhichLocator}

User click "${WhichLocator}" button
    Wait Until Element Is Enabled   ${WhichLocator}    5
    Click Element     ${WhichLocator}

User click "${WhichLocator}" textbox
    Click Element     ${WhichLocator}

User must able to see "${InputText}" text on page
    Wait Until Page Contains        ${InputText}
    Page Should Not Contain Textfield   ${InputText}

User fills "${WhichLocator}" textbox with "${InputText}"
    Wait Until Element Is Enabled   ${WhichLocator}   5
    Input Text     ${WhichLocator}     ${InputText}

User must able to see "${WhichLocator}" element with "${InputText}" text
    ${Text}    Get Text    ${WhichLocator}
    Should Be Equal    ${Text}     ${InputText}

User successfully login with "${Username}" and "${PasswordTextBoxOnFacebookPage}" on facebook
    User fills username textbox with "${Username}"
    User fills password textbox with "${PasswordTextBoxOnFacebookPage}" on facebook page
    User click "${FacebookLoginButtonOnFacebookPage}" button

User fills username textbox with "${InputText}"
    Input Text     ${UsernameTextbox}     ${InputText}

User fills password textbox with "${InputText}"
    Input Text     ${PasswordTextbox}     ${InputText}

User fills username textbox with "${InputText}" on mobile web
    Input Text     ${MobileUsernameTextbox}     ${InputText}

User fills password textbox with "${InputText}" on mobile web
    Input Text     ${MobilePasswordTextbox}     ${InputText}

User fills password textbox with "${InputText}" on facebook page
    Input Text     ${PasswordTextBoxOnFacebookPage}     ${InputText}

User must able to see AppStore and Google Play Store Icon
    Scroll Element Into View    ${AppStoreGooglePlayIcon}
    Page Should Contain Element         ${AppStoreGooglePlayIcon}

User click mouse over and click "${WhichLocator}"
    Wait Until Element Is Enabled   ${WhichLocator}     5
    Mouse Over  ${WhichLocator}
    Sleep   1
    Click Element    ${WhichLocator}

Go to Menu Item Notifications if exist
    Sleep     3
    ${present}=     Run Keyword And Return Status     Click Element   ${MenuItemNotifications}
    Run Keyword If      '${present}'=='True'      Page Should Contain Element         ${NotificationsText}
    Run Keyword If      '${present}'=='False'      Page Should Contain Element         ${NotificationsTitle}
