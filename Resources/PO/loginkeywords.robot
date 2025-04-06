*** Settings ***
Library    SeleniumLibrary

*** Variables ***
&{LOGIN_CREDENTIALS}
...    username=mona.abdelrahim+cent10@trianglz.com
...    password=P@ssw0rd
...    login_button=id=login_btn

*** Keywords ***
Login With Credentials
    [Arguments]    &{credentials}
    Input Text    id=login-username    ${credentials.username}
    Input Text    id=login-password   ${credentials.password}
    Click Button    ${credentials.login_button}