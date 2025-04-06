*** Settings ***
Library    SeleniumLibrary


*** Variables ***
${IMAGE_PATH}        C:/Users/ADMIN/Desktop/Cloudy.jpeg
${ADD_FAMILY}        id=families-header-action-button
${FAMILY_SIDEBAR}    id=sidebar-navigate-to-8
${FIRST_NAME}        id=save-family-firstName
${LAST_NAME}         id=save-family-lastName
${MOBILE}            id=save-family-mobile
${EMAIL}             id=save-family-email
${USERNAME}          id=save-family-username
${PASSWORD_TOGGLE}   id=save-family-toggle-auto-generated-password
${PASSWORD}          id=save-family-password
${IMAGE_UPLOAD}      //input[@type="file" and contains(@class, "hidden")]
${CATEGORY_DROPDOWN}    //*[@id="save-family"]/div[1]/div[1]/div[11]/yn-select/div/nz-select
${CATEGORY_OPTION}      xpath=/html/body/div/div/div/nz-option-container/div/cdk-virtual-scroll-viewport/div[1]/nz-option-item[1]
${SAVE_BTN}          id=save-family-save-and-add-new
${MODAL_CONTAINER}    //nz-modal-container[contains(@class, 'ant-modal-wrap')]
*** Keywords ***
Add Family
    [Arguments]     ${family_data}
     SeleniumLibrary.Wait Until Element Is Not Visible  ${MODAL_CONTAINER}    timeout=5s
    SeleniumLibrary.Wait Until Element Is Visible   ${FAMILY_SIDEBAR}      timeout=20s
    Click Element    ${FAMILY_SIDEBAR}

    Wait Until Element Is Visible    ${ADD_FAMILY}    timeout=15s
    Click Button    ${ADD_FAMILY}

    Wait Until Element Is Visible    ${FIRST_NAME}    timeout=10s
    Input Text    ${FIRST_NAME}    ${family_data.first_name}
    Input Text    ${LAST_NAME}     ${family_data.last_name}
    Input Text    ${MOBILE}        ${family_data.mobile}
    Input Text    ${EMAIL}         ${family_data.email}
    Input Text    ${USERNAME}      ${family_data.username}

    Choose File    ${IMAGE_UPLOAD}    ${IMAGE_PATH}

    Click Button    ${PASSWORD_TOGGLE}
    Input Text    ${PASSWORD}    ${family_data.password}
    Sleep    5s
    Click Element    ${CATEGORY_DROPDOWN}
    Sleep    2s
    Click Element    ${CATEGORY_OPTION}

    Sleep    5s
    Click Button   ${SAVE_BTN}
     Sleep    10s




