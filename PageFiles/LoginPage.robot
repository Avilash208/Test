*** Settings ***
Library    SeleniumLibrary
Library    Dialogs
Resource    ..//Locators/Locators.robot
Resource    ..//Resources/StepDefination.robot


*** Keywords ***
Input Username
    [Arguments]    ${username}
    input text    ${username_LOCATOR}    ${username}

Input Password
    [Arguments]    ${password}
    input text    ${password_LOCATOR}    ${password}

Click Login Button
    click button    ${loginButton_LOCATOR}

Check the error message
    page should contain element    ${loginErrorMessage_LOCATOR}
    element text should be    ${loginErrorMessage_LOCATOR}  Userid or Password did Not Match !!
