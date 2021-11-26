*** Settings ***
Library    SeleniumLibrary


*** Variables ***
${username_LOCATOR}     xpath://input[@id='ctl00_CPHContainer_txtUserLogin']
${password_LOCATOR}    xpath://input[@id='ctl00_CPHContainer_txtPassword']
${loginButton_LOCATOR}  xpath://input[@id='ctl00_CPHContainer_btnLoginn']
${loginErrorMessage_LOCATOR}  xpath://span[@id='ctl00_CPHContainer_lblOutput']