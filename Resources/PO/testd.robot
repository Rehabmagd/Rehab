*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${URL}          https://test-app-revamp.ynmodata.com/auth/login
${BROWSER}      chrome

#&{LOGIN_CREDENTIALS}
#...    username=mona.abdelrahim+cent10@trianglz.com
#...    password=P@ssw0rd

&{ELEMENTS}
...    username=id=login-username
...    password=id=login-password
...    login_button=id=login_btn

*** Keywords ***
Open Login Page
    Open Browser    ${URL}    ${BROWSER}
    Maximize Browser Window
    Wait Until Element Is Visible    ${ELEMENTS.username}    timeout=10s

Enter Credentials
    Input Text    ${ELEMENTS.username}    ${LOGIN_CREDENTIALS.username}
    Input Text    ${ELEMENTS.password}    ${LOGIN_CREDENTIALS.password}
    Click Button    ${ELEMENTS.login_button}

Verify Login Success
    Wait Until Page Contains    Dashboard    timeout=10s

#*** Test Cases ***
#Valid User Can Login
    #[Documentation]    Test that a valid user can log in successfully.

   # Open Login Page
    #Enter Credentials
   # Verify Login Success



