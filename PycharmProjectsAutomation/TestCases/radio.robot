*** Settings ***
Library     SeleniumLibrary


*** Variables ***
${browser}      chrome
${url}          https://rahulshettyacademy.com/AutomationPractice/



*** Test Cases ***
Login
    Open Browser    ${url}      ${browser}
    Maximize Browser Window
    Set Selenium Speed    2s

    
    Select Radio Button    radioButton    radio2

    Select Radio Button    radioButton    radio1

    Select Checkbox    checkBoxOption1
    Select Checkbox    checkBoxOption3
    
    Unselect Checkbox    checkBoxOption3
    Select Checkbox    option2


*** Keywords ***
