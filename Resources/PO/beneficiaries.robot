*** Settings ***
Library    SeleniumLibrary

*** Variables ***
#@{BENEFICIARIES}    Rehab3   Rehab4    Rehab5
*** Keywords ***
Add Beneficiary
    [Arguments]    ${beneficiary}
    Wait Until Element Is Visible      //app-beneficiaries//app-students-management//yn-button[2]/button
    Click Element     //app-beneficiaries//app-students-management//yn-button[2]/button
    Sleep    5s
    Wait Until Element Is Visible  //nz-modal-container//yn-button/button
    Click Button    //nz-modal-container//yn-button/button
    Sleep    3s
    Wait Until Element Is Visible   //*[@id="studentsNamesList"]
    Clear Element Text    //*[@id="studentsNamesList"]
    Input Text    //*[@id="studentsNamesList"]    ${beneficiary}
    Sleep    3s
    Click Button    //nz-modal-container//div/div[2]/div/yn-button[1]/button
    Sleep    3s

