*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${browser}    chrome
${url}       https://opensource-demo.orangehrmlive.com/web/index.php/auth/login

*** Test Cases ***

*** Test Cases ***
LoginTest
    Open Browser    ${url}    ${browser}
    Maximize Browser Window
    Wait Until Element Is Visible    xpath=//input[@placeholder='Username']    timeout=10s
    Input Text    xpath=//input[@placeholder='Username']    Admin
    Input Text    xpath=//input[@placeholder='Password']    admin123
    Click Button  xpath=//button[@type='submit']
    Wait Until Page Contains Element    xpath=//h6[text()='Dashboard']    timeout=10s
    Click Element       //i[@class='oxd-icon bi-caret-down-fill oxd-userdropdown-icon']

    Click Element   //a[normalize-space()='Logout']
