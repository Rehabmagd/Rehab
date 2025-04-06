*** Settings ***
Library    SeleniumLibrary


*** Variables ***
${IMAGE_PATH2}          C:/Users/ADMIN/Desktop/test.jpeg
${FAMILY_SIDEBAR}       id=sidebar-navigate-to-8
${ADD_FAMILY}           id=families-header-action-button
${ADD_FIRSTNAME}       id=save-family-firstName
${ADD_LASTNAME}        id=save-family-lastName
${FAMILY_MOBILE}       id=save-family-mobile
${FAMILY_EMAIL}        id=save-family-email
${FAMILY_USERNAME}     id=save-family-username
${DROPDOWN}            //*[@id="save-family"]/div[1]/div[1]/div[11]/yn-select/div/nz-select
${DROPDOWN_SELECT}     xpath=/html/body/div/div/div/nz-option-container/div/cdk-virtual-scroll-viewport/div[1]/nz-option-item[3]
${DROPDOWN_SELECT2}    xpath=/html/body/div/div[1]/div/nz-option-container/div/cdk-virtual-scroll-viewport/div[1]/nz-option-item[2]
${imgebtn}            //*[@id="save-family-image-uploader-drop-image"]
${IMAGE_UPLOAD}      //input[@type="file" and contains(@class, "hidden")]
${SAVE_BTN}            id= save-family-save-and-add-new
${MODAL_CONTAINER}    //nz-modal-container[contains(@class, 'ant-modal-wrap')]


*** Keywords ***
Add Family with auto password
   [Arguments]  ${family_password}
    SeleniumLibrary.Wait Until Element Is Not Visible  ${MODAL_CONTAINER}    timeout=5s
    SeleniumLibrary.Wait Until Element Is Visible   ${FAMILY_SIDEBAR}      timeout=20s
    Click Element     ${FAMILY_SIDEBAR}

    Wait Until Element Is Visible    ${ADD_FAMILY}      timeout=15s
    CLICK BUTTON     ${ADD_FAMILY}

   Wait Until Element Is Visible    ${FIRST_NAME}    timeout=10s
   Input Text    ${FIRST_NAME}    ${family_password.first_name}
   Input Text    ${LAST_NAME}     ${family_password.last_name}
   Input Text    ${MOBILE}        ${family_password.mobile}
   Input Text    ${EMAIL}         ${family_password.email}
   Input Text    ${USERNAME}      ${family_password.username}


  Choose File    ${IMAGE_UPLOAD}    ${IMAGE_PATH2}

  Sleep    5s
  Click Element  ${DROPDOWN}
  Click Element   ${DROPDOWN_SELECT}
  Click Element    ${DROPDOWN_SELECT2}

  Sleep    5s
  click button   ${SAVE_BTN}
  Sleep    10s

