*** Settings ***
Library    SeleniumLibrary
Library    BuiltIn
Library    AngularJSLibrary

*** Variable ***

${FavoritesTab}       xpath=//div[@class='tab active'][text()='Favorileriniz:']
${ChoosingYouFavoriteTab}       xpath=//div[@class='tab active'][text()='Sizi Favori Seçen']
