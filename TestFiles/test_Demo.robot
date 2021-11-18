*** Settings ***
Library  SeleniumLibrary
#test1
Library     AutoRecorder
#test12


*** Test Cases ***
Open Facebook and close the browser
    [Tags]  Smoke
    Open Facebook for user
    Close the browser



*** Keywords ***
Open Facebook for user
    Open Browser    https://www.facebook.com/   chrome
    Maximize Browser Window
    page should contain image   Facebook
    log     This is Feature-1 branch in master


Close the browser
    Close Browser
