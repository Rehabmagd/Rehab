*** Settings ***
Library    SeleniumLibrary
Resource    ../Resources/PO/logintest.robot
Resource    ../Resources/loginv.robot
Resource    ../Resources/PO/Setup.robot
Resource    ../Resources/PO/beneficiaries.robot
Resource    ../Resources/PO/Addfamily.robot
Resource    ../Resources/PO/family.robot
Resource    ../Resources/datamaneger.robot
Suite Setup    Open Application
Suite Teardown   Close Application

*** Variables ***
@{BENEFICIARIES}    Rehab   Rehab9   Rehab1
${Login_FILE}     C:/Users/ADMIN/PycharmProjects/PythonProject2/Data/userlogin.csv
${FAMILY_CSV}       C:/Users/ADMIN/PycharmProjects/Project2/Data/Family.csv
${FAMILYp_CSV}     C:/Users/ADMIN/PycharmProjects/Project2/Data/familyp.csv

*** Test Cases ***
Login From CSV
    ${data}=    Get csv Data   ${Login_FILE}
    Sleep    2s
    FOR    ${login_data}    IN    @{data}
        Attempt Login    ${login_data[0]}    ${login_data[1]}   # Use the list indices
        Sleep    2s
    END
    Sleep    3s

Add Beneficiary
  FOR    ${beneficiary}    IN    @{BENEFICIARIES}
       Add Beneficiary    ${beneficiary}
   END

Verify User Can Add Family Successfully
   [Documentation]  Ensure a family member is added with valid data.
  ${family_data}=   Get csv Data    ${FAMILY_CSV}
   Sleep    2s
   FOR    ${row}    IN    @{family_data}
    ${family}=    Create Dictionary
    ...    first_name=${row[0]}
    ...    last_name=${row[1]}
    ...    mobile=${row[2]}
    ...    email=${row[3]}
    ...    username=${row[4]}
    ...    password=${row[5]}
    Addfamily.Add Family    ${family}
    Sleep    2s
   END



Verify User Can Add Family with Auto Password Successfully
    [Documentation]    Ensure a family member is added with valid data.
    ${family_data}=    Get csv Data    ${FAMILYp_CSV}
    Sleep    2s
    FOR    ${row}    IN    @{family_data}
        ${family}=    Create Dictionary
        ...    first_name=${row[0]}
        ...    last_name=${row[1]}
        ...    mobile=${row[2]}
        ...    email=${row[3]}
        ...    username=${row[4]}
       Add Family with auto password    ${family}
        Sleep    2s
    END