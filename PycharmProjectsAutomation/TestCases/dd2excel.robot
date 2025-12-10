*** Settings ***
Library    SeleniumLibrary
Library    Datadriver    file=../TestData/lpabotogindata.xlsx
Resource   ../Resource/login_resources.robot

Suite Setup       Open My Browser
Suite Teardown    Close Browser
Test Template     Invalid Login

*** Test Cases ***
Login Test With Excel       ${username}     ${password}



*** Keywords ***
Invalid Login
    [Arguments]    ${username}    ${password}
    Input Username    ${username}
    Input Password    ${password}
    Click Login Button
    Error Message Should Be Visible