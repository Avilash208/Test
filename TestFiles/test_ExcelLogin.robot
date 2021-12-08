*** Settings ***
Library  SeleniumLibrary
#test1
Library     AutoRecorder
Library     Screenshot
Library    DataDriver   ../TestData/InvalidLogin.xlsx   sheet_name=Sheet1
Resource    ..//Resources/CommonSteps.robot
Resource    ..//Resources/GlobalVariables.robot
Resource    ..//Locators/Locators.robot
#Resource    ..//Resources/StepDefination.robot
Resource    ..//PageFiles/LoginPage.robot
Suite Setup  CommonSteps.Initiate Web Test
Suite Teardown   CommonSteps.Terminate Web Test
Test Template    Incorrect Credentials


#test12


*** Test Cases ***

Invalid Login Scenarios Using Excel DDT     ${username}  ${password}

*** Keywords ***
Incorrect Credentials

    [Arguments]    ${username}  ${password}
    input text    ${username_LOCATOR}    ${username}
    input text    ${password_LOCATOR}    ${password}
    LoginPage.Click Login Button
    LoginPage.Check the error message
    capture page screenshot    invalidlogin.png
    sleep    3s




