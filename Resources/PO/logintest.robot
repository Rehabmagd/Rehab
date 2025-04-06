*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${URL}          https://test-app-revamp.ynmodata.com/auth/login
${BROWSER}      chrome

*** Keywords ***
Open Login Page
    Open Browser    ${URL}    ${BROWSER}
    Maximize Browser Window
    Wait Until Element Is Visible    id=login-username    timeout=10s

Attempt Login
    [Arguments]    ${username}    ${password}
    Input Text    id=login-username    ${username}
    Input Text    id=login-password    ${password}
    Click Button    id=login_btn
    Sleep    3s

Verify Login Failure
  Wait Until Element Is Visible    xpath=//app-login//yn-alert//div/span[2]    timeout=10s


Verify Login Success
   Wait Until Element Is Visible    xpath=//app-beneficiaries//app-students-management//yn-button[2]/button    timeout=20s

