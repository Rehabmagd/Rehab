*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${FAMILY_SIDEBAR}       id=sidebar-navigate-to-8
${ADD_FAMILY}           id=families-header-action-button
${ADD_FIRSTNAME}       id=save-family-firstName
${ADD_LASTNAME}        id=save-family-lastName
${FAMILY_MOBILE}       id=save-family-mobile
${FAMILY_EMAIL}        id=save-family-email
${FAMILY_USERNAME}     id=save-family-username
${DROPDOWN}            //*[@id="save-family"]/div[1]/div[1]/div[11]/yn-select/div/nz-select
${DROPDOWN_SELECT}     //nz-option-item[@title='Rehab 01']
${imgebtn}            //*[@id="save-family-image-uploader-drop-image"]
${uploed}             //input[@type="file" and contains(@class, "hidden")]
${okm}                /nz-notification/div/div/div/div/div[1]/div
${SAVE_BTN}            id= save-family-save-and-add-new

*** Keywords ***
Add Family with auto password
    [Arguments]  ${fristname}    ${lastname}    ${mobile}    ${email}    ${fusername}
   Wait Until Element Is Visible    ${FAMILY_SIDEBAR}      timeout=20s
    Click Element     ${FAMILY_SIDEBAR}
  Wait Until Element Is Visible    ${ADD_FAMILY}      timeout=15s
  CLICK BUTTON     ${ADD_FAMILY}
   Wait Until Element Is Visible    ${ADD_FIRSTNAME}    timeout=5s
    input text  ${ADD_FIRSTNAME}    ${fristname}
    Execute Javascript    window.setTimeout(arguments[0], 5000)
    input text    ${ADD_LASTNAME}    ${lastname}
    Execute Javascript    window.setTimeout(arguments[0], 5000)
    input text  ${FAMILY_MOBILE}    ${mobile}
    Execute Javascript    window.setTimeout(arguments[0], 5000)
    input text  ${FAMILY_EMAIL}    ${email}
    Execute Javascript    window.setTimeout(arguments[0], 5000)
    input text  ${FAMILY_USERNAME}    ${fusername}
    Execute Javascript    window.setTimeout(arguments[0], 5000)
    Click Element        ${imgebtn}
    Execute Javascript    window.setTimeout(arguments[0], 5000)
    Choose File      ${uploed}    C:/Users/ADMIN/Desktop/Cloudy.jpeg
    Execute Javascript    window.setTimeout(arguments[0], 5000)
    Click Element  ${DROPDOWN}
    Execute Javascript    window.setTimeout(arguments[0], 5000)
    Click Element   ${DROPDOWN_SELECT}
    Execute Javascript    window.setTimeout(arguments[0], 5000)
    click button   ${SAVE_BTN}

