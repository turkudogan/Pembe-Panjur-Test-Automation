Installation
============
First, we need to create one virtual environment. You can use the commands given below for this.

To install virtualenv run:
$ pip install virtualenv

To install browser driver run:
$ brew cask install chromedriver

To install robotframework for AngularJS
$ pip install robotframework-angularjs

$ pip install --upgrade -r requirements.txt


The following command can be used to run test cases on Jenkins.
1-) In test cases, the browser should be given as a parameter. If headless is on for GoogleChrome, a command like the following should be executed.(n = The number n indicates how many parallel browsers will be used.)

Before run this command, you have to add Library    pabot.PabotLib in your robot file.
$ pabot --processes n --variable BROWSER:headlesschrome TestCase.robot

cd /path/
Before run this command, you have to add Library    pabot.PabotLib in your robot file.
$ pabot --variable BROWSER:headlesschrome -t "scenario name" TestCase.robot


2-) In test cases, the browser should be given as a parameter. If headless is on for Firefox, a command like the following should be executed.(n = The number n indicates how many parallel browsers will be used.)

Before run this command, you have to add Library    pabot.PabotLib in your robot file.
$ pabot --processes n --variable BROWSER:headlessfirefox TestCase.robot

3-) In test cases, the browser should be given as a parameter. If headless is off for GoogleChrome, a command like the following should be executed.(n = The number n indicates how many parallel browsers will be used.)

Before run this command, you have to add Library    pabot.PabotLib in your robot file.
$ pabot --processes n --variable BROWSER:chrome TestCase.robot

4-) In test cases, the browser should be given as a parameter. If headless is off for Firefox, a command like the following should be executed.(n = The number n indicates how many parallel browsers will be used.)

Before run this command, you have to add Library    pabot.PabotLib in your robot file.
$ pabot --processes n --variable BROWSER:firefox TestCase.robot (n is a count)
