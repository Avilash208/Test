*** Settings ***
Library    SeleniumLibrary
Library    Dialogs


*** Keywords ***

Initiate Web Test

    Open Browser    http://www.testyou.in/Login.aspx   chrome
    Maximize Browser Window

Terminate Web Test
    close browser