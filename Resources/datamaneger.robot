*** Settings ***
Library    ../Customlibrary/Csv.py
*** Keywords ***

Get csv Data
    [Arguments]    ${filepath}
    ${Data}=    Read CSV    ${filepath}
    RETURN    ${Data}