*** Settings ***
Library    SeleniumLibrary
Library    Dialogs
Resource    ..//PageFiles/LoginPage.robot


*** Keywords ***
Incorrect Credentials

    [Arguments]    ${username}  ${password}
    input text    ${username_LOCATOR}    ${username}
    input text    ${password_LOCATOR}    ${password}
    LoginPage.Click Login Button
    LoginPage.Check the error message