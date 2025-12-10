*** Settings ***
Library     SeleniumLibrary

*** Variables ***

${LOGIN URL}        https://admin-demo.nopcommerce.com/login?ReturnUrl=%2Fadmin%2F
${BROWSER}      chrome


*** Keywords ***

open my browser
        Open Browser        ${LOGIN URL}        ${BROWSER}
        Maximize Browser Window

Close Browsers
        Close All Browsers

Open Login Page
        Go To   ${LOGIN URL}
Input Username
    [Arguments]    ${username}
    Input Text    id=Email    ${username}

Input Password
    [Arguments]    ${password}
    Input Text    id=Password    ${password}

Click Login Button
    Click Element    xpath=//button[@type='submit']
Click Logout
        Click Link    //a[@class="nav-link"]
Error Message Should Be Visible
        Page Should Contain    Login was unsuccessful
Dashboard Page Should Be Visible
        Page Should Contain    Dashboard


        
