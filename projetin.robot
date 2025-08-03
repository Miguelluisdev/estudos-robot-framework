*** Settings ***
Library   SeleniumLibrary
Suite Setup  Open Browser   https://automationpratice.com.br/login    firefox
Suite Teardown  Close Browser
Documentation    QuAndo Site Robot Initialization
Keyword Tags   initialization regression


*** Test Cases ***

