*** Settings ***

Resource        ../Resources/PO/Addfamily.robot
Resource        ../Resources/PO/family.robot
Resource       ../Resources/PO/Setup.robot
Resource       ../Resources/PO/case.robot
Library            SeleniumLibrary
Suite Setup       Open Application
Suite Teardown    Close Application
Test Setup        Open Family Page
Test Teardown     Save Family Data

*** Variables ***
${username}  mona.abdelrahim+cent10@trianglz.com
${password}  P@ssw0rd
${fristname}   Rehab
${lastname}   Magdy
${mobile}    01090252315
${email}    rehabmagd7t8933@gmail.com
${email2}   rehabma22@gmail.com
${fusername}   rehabmagd55
${fusername2}   Rehab6
${fpassword}    8#zz4^WD

*** Test Cases ***
Valid User Can add family
    Add Family   ${fristname}    ${lastname}    ${mobile}    ${email}    ${fusername}   ${fpassword}


Valid User Can add family with auto password
    Add Family with auto password   ${fristname}    ${lastname}    ${mobile}    ${email2}    ${fusername2}
