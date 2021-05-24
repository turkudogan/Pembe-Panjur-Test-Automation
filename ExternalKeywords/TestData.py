import random, string
from selenium import webdriver
from random import choice
from string import ascii_uppercase
from faker import Faker

options = webdriver.ChromeOptions()
options.add_argument('--ignore-ssl-errors=yes')
options.add_argument('--ignore-certificate-errors')
driver = webdriver.Chrome(options=options)

def getRandomEmails():
    a = ''.join(random.choice(string.ascii_lowercase + string.digits) for i in range(16))
    email = a + '@' + 'gmail.com'
    return email

def getRandomAlphanumericCharacter(length):
    return ''.join(choice(ascii_uppercase + string.digits) for i in range(length))

def getRandomNumericCharacter(length):
    return ''.join(choice(string.digits) for i in range(length))

def Remove_Whitespace(instring):
    return instring.strip()
