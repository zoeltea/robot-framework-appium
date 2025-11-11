*** Settings ***
Resource    ../resource.robot
Resource    ../locators/home_screen.robot

*** Keywords ***

Input Username
    [Arguments]    ${username}
    Wait Locator Visible    ${USERNAME_FIELD}
    Input Text    ${USERNAME_FIELD}    ${username}

Input Password
    [Arguments]    ${password}
    Wait Locator Visible  ${PASSWORD_FIELD}
    Input Text    ${PASSWORD_FIELD}    ${password}

Click Login Button    
    Wait Locator Visible   ${LOGIN_BUTTON}
    Click Element    ${LOGIN_BUTTON}

Click Menu Login
    Wait Until Element Is Visible  ${LOGIN_MENU}
    Click Element            ${LOGIN_MENU}

Verivy Login Success
    Wait Locator Visible    ${BUTTON_SUCCESS_LOGIN}
    Click Element           ${BUTTON_SUCCESS_LOGIN}

Go To Login Page
    Click Menu Login