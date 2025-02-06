*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${USERNAME_FIELD}    id=login-username
${PASSWORD_FIELD}    id=login-password
${SIGN_IN_BUTTON}    id=login_btn

*** Keywords ***
Login With Credentials
    [Arguments]    ${username}    ${password}
    Wait Until Element Is Visible    ${USERNAME_FIELD}    timeout=10s
    Input Text    ${USERNAME_FIELD}    ${username}

    Wait Until Element Is Visible    ${PASSWORD_FIELD}    timeout=10s
    Input Text    ${PASSWORD_FIELD}    ${password}

    Wait Until Element Is Visible    ${SIGN_IN_BUTTON}    timeout=10s
    Click Button    ${SIGN_IN_BUTTON}
