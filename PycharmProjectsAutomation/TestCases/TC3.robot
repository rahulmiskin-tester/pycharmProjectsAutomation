*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${browser}           chrome
${url}               https://opensource-demo.orangehrmlive.com/web/index.php/auth/login
${username_input}    xpath=//input[@placeholder='Username']
${password_input}    xpath=//input[@placeholder='Password']
${login_button}      xpath=//button[@type='submit']
${dashboard_text}    xpath=//h6[text()='Dashboard']
${user_dropdown}     xpath=//i[@class='oxd-icon bi-caret-down-fill oxd-userdropdown-icon']
${user_logout}       xpath=//a[normalize-space()='Logout']

*** Test Cases ***
LoginTest
    Open Browser    ${url}    ${browser}
    Maximize Browser Window
    LoginIntoApplication

    # ✅ Dashboard check
    Wait Until Page Contains Element    ${dashboard_text}    timeout=10s
    Element Should Be Visible           ${dashboard_text}

    # ✅ Logout sequence
    Click Element    ${user_dropdown}
    Wait Until Element Is Visible       ${user_logout}    timeout=10s
    Click Element                       ${user_logout}

    # ✅ Login page confirmation
    Wait Until Element Is Visible       ${username_input}    timeout=10s
    Element Should Be Visible           ${username_input}
    Element Should Be Enabled           ${username_input}
    Title Should Be                     OrangeHRM
    Close Browser

*** Keywords ***
LoginIntoApplication
    Wait Until Element Is Visible       ${username_input}    timeout=10s
    Input Text                          ${username_input}    Admin
    Input Text                          ${password_input}    admin123
    Click Button                        ${login_button}
    Title Should Be                     OrangeHRM


