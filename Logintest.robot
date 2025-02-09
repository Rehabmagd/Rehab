*** Settings ***
Resource         ../Resources/PO/beneficiaries.robot
Resource        ../Resources/PO/Addfamily.robot
Resource        ../Resources/PO/family.robot
Resource       ../Resources/PO/Setup.robot
Resource       ../Resources/PO/case.robot
Library            SeleniumLibrary
Suite Setup       Open Application
Suite Teardown    Close Application
Test Teardown     Save Family Data

*** Variables ***
${username}  mona.abdelrahim+cent10@trianglz.com
${password}  P@ssw0rd
${fristname}   Rehab
${lastname}   Magdy
${mobile}    01090252315
${email}    rehabmagd7t8988833@gmail.com
${email2}   rehabma22111@gmail.com
${fusername}   rehabmagd599
${fusername2}   Rehab888
${fpassword}    8#zz4^WD
@{BENEFICIARIES}    Rehab3   Rehab4    Rehab5

*** Test Cases ***

Add Beneficiary
   FOR    ${beneficiary}    IN    @{BENEFICIARIES}
        Add Beneficiary    ${beneficiary}
    END




Valid User Can add family
Test Setup        Open Family Page
    Add Family   ${fristname}    ${lastname}    ${mobile}    ${email}    ${fusername}   ${fpassword}


Valid User Can add family with auto password
Test Setup        Open Family Page
    Add Family with auto password   ${fristname}    ${lastname}    ${mobile}    ${email2}    ${fusername2}
