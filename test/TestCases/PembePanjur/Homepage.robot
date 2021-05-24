*** Settings ***

Library     SeleniumLibrary
Library  AngularJSLibrary
Library	AngularJSLibrary	ignore_implicit_angular_wait=${true}
Resource   ../../StepDefination/MySteps/MySteps.robot
Test Teardown    Close Browser

*** Test Cases ***

Control 6 menu items on homepage
    User go to login page
    User fills username textbox with "sinanulug@outlook.com"
    User fills password textbox with "Testotomasyon"
    User click "${LoginButton}" button
    Sleep    2
    User must able to see element "${MenuItemHomePage}"
    User must able to see element "${MenuItemMessages}"
    User must able to see element "${MenuItemCompatibleMembers}"
    User must able to see element "${MenuItemFavorites}"
    User must able to see element "${MenuItemSearch}"
    User must able to see element "${MenuItemAccount}"

Control welcome username text
    User go to login page
    User fills username textbox with "sinanulug@outlook.com"
    User fills password textbox with "Testotomasyon"
    User click "${LoginButton}" button
    Sleep    2
    User must able to see element "${WelcomeTitle}"
    User must able to see "${SessionUserName}" element with "Sinan" text

Go to homepage tab
    User go to login page
    User fills username textbox with "sinanulug@outlook.com"
    User fills password textbox with "Testotomasyon"
    User click "${LoginButton}" button
    Sleep    2
    User must able to see element "${WelcomeTitle}"
    User must able to see element "${MatchesTitle}"
    User click "${MenuItemMessages}" button
    User must able to see element "${IncomingMessagesText}"
    User click "${MenuItemHomePage}" button
    User must able to see element "${MatchesTitle}"

Go to messages tab
    User go to login page
    User fills username textbox with "sinanulug@outlook.com"
    User fills password textbox with "Testotomasyon"
    User click "${LoginButton}" button
    Sleep    2
    User click "${MenuItemMessages}" button
    User must able to see element "${IncomingMessagesText}"

Go to compatible members tab
    User go to login page
    User fills username textbox with "sinanulug@outlook.com"
    User fills password textbox with "Testotomasyon"
    User click "${LoginButton}" button
    Sleep    2
    User click "${MenuItemCompatibleMembers}" button
    User must able to see element "${CompatibleMembersTab}"

Go to favorites tab
    User go to login page
    User fills username textbox with "sinanulug@outlook.com"
    User fills password textbox with "Testotomasyon"
    User click "${LoginButton}" button
    Sleep    2
    User click "${MenuItemFavorites}" button
    User must able to see element "${FavoritesTab}"

Go to search tab
    User go to login page
    User fills username textbox with "sinanulug@outlook.com"
    User fills password textbox with "Testotomasyon"
    User click "${LoginButton}" button
    Sleep    2
    User click "${MenuItemSearch}" button
    User must able to see element "${SearchTitle}"

Go to account tab
    User go to login page
    User fills username textbox with "sinanulug@outlook.com"
    User fills password textbox with "Testotomasyon"
    User click "${LoginButton}" button
    Sleep    2
    User click "${MenuItemAccount}" button
    User must able to see element "${AccountSettingsText}"

Go to Notifications
    User go to login page
    User fills username textbox with "sinanulug@outlook.com"
    User fills password textbox with "Testotomasyon"
    User click "${LoginButton}" button
    Sleep    2
    Go to Menu Item Notifications if exist

Membership type as standard
    User go to login page
    User fills username textbox with "sinanulug@outlook.com"
    User fills password textbox with "Testotomasyon"
    User click "${LoginButton}" button
    Sleep    2
    User must able to see element "${MembershipType}"
    User must able to see element "${MembershipTypeStandard}"

Go to membership packages page
    User go to login page
    User fills username textbox with "sinanulug@outlook.com"
    User fills password textbox with "Testotomasyon"
    User click "${LoginButton}" button
    Sleep    2
    User click "${MembershipTypeStandard}" button
    User must able to see element "${SelectMembershipPackageText}"

Go to shortcut list item messages
    User go to login page
    User fills username textbox with "sinanulug@outlook.com"
    User fills password textbox with "Testotomasyon"
    User click "${LoginButton}" button
    Sleep    2
    User click "${ShortcutListItemMessages}" button
    User must able to see element "${IncomingMessagesText}"

Go to shortcut list item sent messages
    User go to login page
    User fills username textbox with "sinanulug@outlook.com"
    User fills password textbox with "Testotomasyon"
    User click "${LoginButton}" button
    Sleep    2
    User click "${ShortcutListItemSentMessages}" button
    User must able to see element "${SentMessagesText}"

Go to shortcut list item profile visits
    User go to login page
    User fills username textbox with "sinanulug@outlook.com"
    User fills password textbox with "Testotomasyon"
    User click "${LoginButton}" button
    Sleep    2
    User click "${ShortcutListItemProfileVisits}" button
    User must able to see element "${ProfileVisitsTab}"

Go to shortcut list item visited profiles
    User go to login page
    User fills username textbox with "sinanulug@outlook.com"
    User fills password textbox with "Testotomasyon"
    User click "${LoginButton}" button
    Sleep    2
    User click "${ShortcutListItemVisitedProfiles}" button
    User must able to see element "${VisitedProfilesTab}"

Go to shortcut list item compatible members
    User go to login page
    User fills username textbox with "sinanulug@outlook.com"
    User fills password textbox with "Testotomasyon"
    User click "${LoginButton}" button
    Sleep    2
    User click "${ShortcutListItemCompatibleMembers}" button
    User must able to see element "${CompatibleMembersTab}"

Go to shortcut list item blinking at you
    User go to login page
    User fills username textbox with "sinanulug@outlook.com"
    User fills password textbox with "Testotomasyon"
    User click "${LoginButton}" button
    Sleep    2
    User click "${ShortcutListItemBlinkingAtYou}" button
    User must able to see element "${BlinkingAtYouTab}"

Go to shortcut list item blinked members
    User go to login page
    User fills username textbox with "sinanulug@outlook.com"
    User fills password textbox with "Testotomasyon"
    User click "${LoginButton}" button
    Sleep    2
    User click "${ShortcutListItemBlinkedMembers}" button
    User must able to see element "${BlinkedMembersTab}"

Go to shortcut list item choosing you favorite
    User go to login page
    User fills username textbox with "sinanulug@outlook.com"
    User fills password textbox with "Testotomasyon"
    User click "${LoginButton}" button
    Sleep    2
    User click "${ShortcutListItemChoosingYouFavorite}" button
    User must able to see element "${ChoosingYouFavoriteTab}"

Go to shortcut list item your favorites
    User go to login page
    User fills username textbox with "sinanulug@outlook.com"
    User fills password textbox with "Testotomasyon"
    User click "${LoginButton}" button
    Sleep    2
    User click "${ShortcutListItemYourFavorites}" button
    User must able to see element "${FavoritesTab}"

Go to header shortcuts new message
    User go to login page
    User fills username textbox with "sinanulug@outlook.com"
    User fills password textbox with "Testotomasyon"
    User click "${LoginButton}" button
    Sleep    2
    User click mouse over and click "${HeaderShortcuts}"
    User click "${HeaderShortcutsNewMessage}" button
    User must able to see element "${NewMessagesText}"

Go to header shortcuts incoming messages
    User go to login page
    User fills username textbox with "sinanulug@outlook.com"
    User fills password textbox with "Testotomasyon"
    User click "${LoginButton}" button
    Sleep    2
    User click mouse over and click "${HeaderShortcuts}"
    User click "${HeaderShortcutsIncomingMessages}" button
    User must able to see element "${IncomingMessagesText}"

Go to header shortcuts sent messages
    User go to login page
    User fills username textbox with "sinanulug@outlook.com"
    User fills password textbox with "Testotomasyon"
    User click "${LoginButton}" button
    Sleep    2
    User click mouse over and click "${HeaderShortcuts}"
    User click "${HeaderShortcutsSentMessages}" button
    User must able to see element "${SentMessagesText}"

Go to header shortcuts deleted messages
    User go to login page
    User fills username textbox with "sinanulug@outlook.com"
    User fills password textbox with "Testotomasyon"
    User click "${LoginButton}" button
    Sleep    2
    User click mouse over and click "${HeaderShortcuts}"
    User click "${HeaderShortcutsDeletedMessages}" button
    User must able to see element "${DeletedMessagesText}"

Go to header shortcuts compatible members
    User go to login page
    User fills username textbox with "sinanulug@outlook.com"
    User fills password textbox with "Testotomasyon"
    User click "${LoginButton}" button
    Sleep    2
    User click mouse over and click "${HeaderShortcuts}"
    User click "${HeaderShortcutsCompatibleMembers}" button
    User must able to see element "${CompatibleMembersTab}"

Go to header shortcuts blinking at you
    User go to login page
    User fills username textbox with "sinanulug@outlook.com"
    User fills password textbox with "Testotomasyon"
    User click "${LoginButton}" button
    Sleep    2
    User click mouse over and click "${HeaderShortcuts}"
    User click "${HeaderShortcutsBlinkingAtYou}" button
    User must able to see element "${BlinkingAtYouTab}"

Go to header shortcuts blinked members
    User go to login page
    User fills username textbox with "sinanulug@outlook.com"
    User fills password textbox with "Testotomasyon"
    User click "${LoginButton}" button
    Sleep    2
    User click mouse over and click "${HeaderShortcuts}"
    User click "${HeaderShortcutsBlinkedMembers}" button
    User must able to see element "${BlinkedMembersTab}"

Go to header shortcuts profile visits
    User go to login page
    User fills username textbox with "sinanulug@outlook.com"
    User fills password textbox with "Testotomasyon"
    User click "${LoginButton}" button
    Sleep    2
    User click mouse over and click "${HeaderShortcuts}"
    User click "${HeaderShortcutsProfileVisits}" button
    User must able to see element "${ProfileVisitsTab}"

Go to header shortcuts visited profiles
    User go to login page
    User fills username textbox with "sinanulug@outlook.com"
    User fills password textbox with "Testotomasyon"
    User click "${LoginButton}" button
    Sleep    2
    User click mouse over and click "${HeaderShortcuts}"
    User click "${HeaderShortcutsVisitedProfiles}" button
    User must able to see element "${VisitedProfilesTab}"

Go to header shortcuts choosing you favorite
    User go to login page
    User fills username textbox with "sinanulug@outlook.com"
    User fills password textbox with "Testotomasyon"
    User click "${LoginButton}" button
    Sleep    2
    User click mouse over and click "${HeaderShortcuts}"
    User click "${HeaderShortcutsChoosingYouFavorite}" button
    User must able to see element "${ChoosingYouFavoriteTab}"

Go to header shortcuts favorites
    User go to login page
    User fills username textbox with "sinanulug@outlook.com"
    User fills password textbox with "Testotomasyon"
    User click "${LoginButton}" button
    Sleep    2
    User click mouse over and click "${HeaderShortcuts}"
    User click "${HeaderShortcutsYourFavorites}" button
    User must able to see element "${FavoritesTab}"

Go to header shortcuts logout
    User go to login page
    User fills username textbox with "sinanulug@outlook.com"
    User fills password textbox with "Testotomasyon"
    User click "${LoginButton}" button
    Sleep    2
    User click mouse over and click "${HeaderShortcuts}"
    User click "${HeaderShortcutsLogout}" button
    User must able to see element "${LoginButton}"

Control block title shortcuts
    User go to login page
    User fills username textbox with "sinanulug@outlook.com"
    User fills password textbox with "Testotomasyon"
    User click "${LoginButton}" button
    Sleep    2
    User must able to see element "${BlockTitleShortcuts}"

Control block title general recommendations
    User go to login page
    User fills username textbox with "sinanulug@outlook.com"
    User fills password textbox with "Testotomasyon"
    User click "${LoginButton}" button
    Sleep    2
    User must able to see element "${BlockTitleGeneralRecommendations}"

Control block title edit profile
    User go to login page
    User fills username textbox with "sinanulug@outlook.com"
    User fills password textbox with "Testotomasyon"
    User click "${LoginButton}" button
    Sleep    2
    User must able to see element "${BlockTitleEditProfile}"

Control block title shortcuts go to search page
    User go to login page
    User fills username textbox with "sinanulug@outlook.com"
    User fills password textbox with "Testotomasyon"
    User click "${LoginButton}" button
    Sleep    2
    User click "${BlockTitleShortcutsSearch}" button
    User must able to see element "${SearchTitle}"

Control block title shortcuts go to blocked members page
    User go to login page
    User fills username textbox with "sinanulug@outlook.com"
    User fills password textbox with "Testotomasyon"
    User click "${LoginButton}" button
    Sleep    2
    User click "${BlockTitleShortcutsBlockedMembers}" button
    User must able to see element "${BlockedMembersText}"

Control block title shortcuts go to not interested members page
    User go to login page
    User fills username textbox with "sinanulug@outlook.com"
    User fills password textbox with "Testotomasyon"
    User click "${LoginButton}" button
    Sleep    2
    User click "${BlockTitleShortcutsNotInterestedMembers}" button
    User must able to see element "${NotInteredtedMembersTab}"

Control block title shortcuts go to profile preview page
    User go to login page
    User fills username textbox with "sinanulug@outlook.com"
    User fills password textbox with "Testotomasyon"
    User click "${LoginButton}" button
    Sleep    2
    User click "${BlockTitleShortcutsProfilePreview}" button
    User must able to see element "${EditProfileButton}"

Control block title shortcuts go to profile edit page
    User go to login page
    User fills username textbox with "sinanulug@outlook.com"
    User fills password textbox with "Testotomasyon"
    User click "${LoginButton}" button
    Sleep    2
    User click "${BlockTitleShortcutsProfileEdit}" button
    User must able to see element "${ProfilePreviewButton}"

Control block title shortcuts go to character analysis page
    User go to login page
    User fills username textbox with "sinanulug@outlook.com"
    User fills password textbox with "Testotomasyon"
    User click "${LoginButton}" button
    Sleep    2
    User click "${BlockTitleShortcutsCharacterAnalysis}" button
    User must able to see element "${CharacterAnalysisText}"

Control block title general recommendations go to membership page
    User go to login page
    User fills username textbox with "sinanulug@outlook.com"
    User fills password textbox with "Testotomasyon"
    User click "${LoginButton}" button
    Sleep    2
    User click "${BlockTitleGeneralRecommendationsAboutYourMembership}" button
    User must able to see element "${AboutYourMembershipText}"

Control block title general recommendations go to photo suggestions page
    User go to login page
    User fills username textbox with "sinanulug@outlook.com"
    User fills password textbox with "Testotomasyon"
    User click "${LoginButton}" button
    Sleep    2
    User click "${BlockTitleGeneralRecommendationsPhotoSuggestions}" button
    User must able to see element "${PhotoSuggestionsText}"

Control block title general recommendations go to message suggestions page
    User go to login page
    User fills username textbox with "sinanulug@outlook.com"
    User fills password textbox with "Testotomasyon"
    User click "${LoginButton}" button
    Sleep    2
    User click "${BlockTitleGeneralRecommendationsMessageSuggestions}" button
    User must able to see element "${MessageSuggestionsText}"

Control block title general recommendations go to safety suggestions page
    User go to login page
    User fills username textbox with "sinanulug@outlook.com"
    User fills password textbox with "Testotomasyon"
    User click "${LoginButton}" button
    Sleep    2
    User click "${BlockTitleGeneralRecommendationsSafetySuggestions}" button
    User must able to see element "${SafetySuggestionsText}"

Control block title edit profile go to social page
    User go to login page
    User fills username textbox with "sinanulug@outlook.com"
    User fills password textbox with "Testotomasyon"
    User click "${LoginButton}" button
    Sleep    2
    User click "${BlockTitleEditProfileSocial}" button
    User must able to see element "${SocialMediaConnectionsText}"

Control block title edit profile go to character analysis page
    User go to login page
    User fills username textbox with "sinanulug@outlook.com"
    User fills password textbox with "Testotomasyon"
    User click "${LoginButton}" button
    Sleep    2
    User click "${BlockTitleEditProfileCharacterAnalysis}" button
    User must able to see element "${CharacterAnalysisText}"

Control block title edit profile go to notification page
    User go to login page
    User fills username textbox with "sinanulug@outlook.com"
    User fills password textbox with "Testotomasyon"
    User click "${LoginButton}" button
    Sleep    2
    User click "${BlockTitleEditProfileNotification}" button
    User must able to see element "${NotificationSettingsText}"

Control block title edit profile go to personal page
    User go to login page
    User fills username textbox with "sinanulug@outlook.com"
    User fills password textbox with "Testotomasyon"
    User click "${LoginButton}" button
    Sleep    2
    User click "${BlockTitleEditProfilePersonal}" button
    User must able to see element "${EditProfileButton}"
