*** Settings ***
Library    SeleniumLibrary
Library    BuiltIn
Library    AngularJSLibrary

*** Variable ***

${IncomingMessagesText}       xpath=//div[@itemref='headerTitle'][text()='GELEN MESAJLAR:']
${SentMessagesText}       xpath=//div[@itemref='headerTitle'][text()='GİDEN MESAJLAR']
${NewMessagesText}       xpath=//div[@class='headerTitle'][text()='Yeni Mesajlar']
${DeletedMessagesText}       xpath=//div[@class='headerTitle'][text()='SİLİNMİŞ MESAJLAR:']
