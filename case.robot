*** Settings ***
Library    SeleniumLibrary


*** Variables ***
${ADD_FAMILY}           id=families-header-action-button
${FAMILY_SIDEBAR}       id=sidebar-navigate-to-8
${SAVE_BTN}            id= save-family-save-and-add-new
*** Keywords ***
Open Family Page
    [Documentation]  This keyword runs before each test.
  Wait Until Element Is Visible    ${FAMILY_SIDEBAR}      timeout=20s
    Click Element     ${FAMILY_SIDEBAR}


Save Family Data
    [Documentation]    This keyword runs after each test.
     click button   ${SAVE_BTN}