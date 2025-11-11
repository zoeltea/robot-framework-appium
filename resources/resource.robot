*** Settings ***
Library    AppiumLibrary  15  run_on_failure=Log Source
Library    ../custom_libraries/ConfigurationReader.py
Variables  ../resources/capabilities/android_caps.py

*** Keywords ***
Wait Locator Visible
    [Arguments]    ${locator}    ${timeout}=10s
    Wait Until Element Is Visible    ${locator}    ${timeout}

Failure Application
    [Documentation]    Keyword to handle application failure scenarios.
    Capture Page Screenshot
    Log Source

Setup Application
    [Documentation]    Keyword to set up and open the application before each test.
    Register Keyword To Run On Failure    Failure Application
    Open Application    ${APPIUM_URL}    &{ANDROID_CAPABILITIES}