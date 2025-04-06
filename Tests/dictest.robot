*** Settings ***
Library      SeleniumLibrary
Resource       ../Resources/PO/testd.robot
Resource      ../Resources/PO/beneficiaries.robot
Resource      ../Resources/PO/Setup.robot
#Suite Setup       Open Application
#Suite Teardown    Close Application
*** Variables ***
${URL}      https://test-app-revamp.ynmodata.com/auth/login
${BROWSER}  chrome

&{LOGIN_CREDENTIALS}
...    username=mona.abdelrahim+cent10@trianglz.com
...    password=P@ssw0rd

&{1Addfamily}  first=Rehab  last=Magdy  mobile=01090252315  email=rehabma291117@gmail.com username=reha9  password=8#zz4^WD
*** Test Cases ***

Valid User Can Login
  Open Browser    ${URL}    ${BROWSER}
    Maximize Browser Window
Valid User Can Login

    [Documentation]    Test that a valid user can log in successfully.
    Enter Credentials
    Verify Login Success

Test Setup        Open Family Page
    Add Family   ${1Addfamily.frist}    ${1Addfamily.lastname}    ${1Addfamily.mobile}    ${1Addfamily.email}    ${1Addfamily.username}   ${1Addfamily.password}
    Save Family Data

