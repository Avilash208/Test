*** Settings ***
Library  SeleniumLibrary
#test1
Library     AutoRecorder
Library     Screenshot
Resource    ..//Resources/CommonSteps.robot
Resource    ..//Resources/GlobalVariables.robot
Resource    ..//Locators/Locators.robot
Resource    ..//Resources/StepDefination.robot
#Resource    ..//PageFiles/LoginPage.robot
Suite Setup  CommonSteps.Initiate Web Test
Suite Teardown   CommonSteps.Terminate Web Test
Test Template    StepDefination.Incorrect Credentials


#test12


*** Test Cases ***
User provides incorrect username and incorrect password     ${WrongUsername_WrongPassword.wrong_username}     ${WrongUsername_WrongPassword.wrong_password}





