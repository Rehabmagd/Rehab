*** Settings ***
Library    SeleniumLibrary
#Resource       ../Resources/PO/Setup.robot
#Suite Setup       Open Application
#Suite Teardown    Close Application

*** Variables ***
@{BENEFICIARIES}    Rehab3   Rehab4    Rehab5
${username}  mona.abdelrahim+cent10@trianglz.com
${password}  P@ssw0rd

#*** Test Cases ***
Create Multiple Beneficiaries
   FOR    ${beneficiary}    IN    @{BENEFICIARIES}
        Add Beneficiary    ${beneficiary}
    END


*** Keywords ***
Add Beneficiary
    [Arguments]    ${beneficiary}
    Wait Until Element Is Visible      //app-beneficiaries//app-students-management//yn-button[2]/button
    Click Element     //app-beneficiaries//app-students-management//yn-button[2]/button
    Sleep    10s
    Wait Until Element Is Visible  //nz-modal-container//yn-button/button
    Click Button    //nz-modal-container//yn-button/button
    Sleep    5s
    Wait Until Element Is Visible   //*[@id="studentsNamesList"]
    Clear Element Text    //*[@id="studentsNamesList"]
    Input Text    //*[@id="studentsNamesList"]    ${beneficiary}
    Sleep    5s
    Click Button    //nz-modal-container//div/div[2]/div/yn-button[1]/button
    Sleep    5s
