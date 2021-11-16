*** Settings ***
Library  SeleniumLibrary
Library     Dialogs
Library     AutoRecorder

*** Test Cases ***
Open Facebook and close the browser
    Open Facebook for user
    Close the browser



*** Keywords ***
Open Facebook for user
    Open Browser    https://www.facebook.com/   chrome
    Maximize Browser Window
    page should contain image   Facebook


Close the browser
    Close Browser