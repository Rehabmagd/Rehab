*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${USERNAME_FIELD}   id=login-username
${PASSWORD_FIELD}    id=login-password
${LOGIN_BUTTON}      id=login_btn

*** Keywords ***
 Login keys
    [Arguments]    ${username}    ${password}
    Input Text    ${USERNAME_FIELD}    ${username}
     Execute Javascript    window.setTimeout(arguments[0], 3000)  # Sleep for 3 seconds

    Input Text    ${PASSWORD_FIELD}    ${password}
    Execute Javascript    window.setTimeout(arguments[0], 3000)  # Sleep for 3 seconds
    Click Button    ${LOGIN_BUTTON}
    Execute Javascript    window.setTimeout(arguments[0], 3000)  # Sleep for 3 seconds
