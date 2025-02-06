*** Settings ***
Library    SeleniumLibrary


*** Variables ***
${URL}      https://test-app-revamp.ynmodata.com/auth/login
${BROWSER}  chrome
${USERNAME_FIELD}    id=login-username
${PASSWORD_FIELD}    id=login-password
${SIGN_IN_BUTTON}    id=login_btn
*** Keywords ***
Open Application
    [Documentation]    This keyword will run before the suite starts.
    Open Browser    ${URL}    ${BROWSER}
    Maximize Browser Window
      Wait Until Element Is Visible    ${USERNAME_FIELD}    timeout=10s
    Input Text    ${USERNAME_FIELD}    ${username}

    Wait Until Element Is Visible    ${PASSWORD_FIELD}    timeout=10s
    Input Text    ${PASSWORD_FIELD}    ${password}

    Wait Until Element Is Visible    ${SIGN_IN_BUTTON}    timeout=10s
    Click Button    ${SIGN_IN_BUTTON}

Close Application
    [Documentation]    This keyword will run after all test cases in the suite.
    Close Browser




