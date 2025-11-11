*** Settings ***
# Impor custom library yang baru dibuat
Resource   ../../resources/page_objects/LoginScreen.robot
Suite Setup   Setup Application
Suite Teardown    Close Application

*** Test Cases ***
Successful Login Test
    [Documentation]    Test to verify successful login functionality.
    Click Menu Login
    Input Username    login@gmail.com
    Input Password    password
    Click Login Button
    Verivy Login Success