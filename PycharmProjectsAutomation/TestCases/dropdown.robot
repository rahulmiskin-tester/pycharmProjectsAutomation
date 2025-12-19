*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${url}        https://rahulshettyacademy.com/AutomationPractice/
${browser}    Chrome

*** Test Cases ***
Handling Dropdown and List
    Open Browser        ${url}    ${browser}
    Maximize Browser Window
    Wait Until Page Contains Element    //select[@id='dropdown-class-example']
    Select From List By Label        //select[@id='dropdown-class-example']   Option2
    Sleep    1s
    Select From List By Index     //select[@id='dropdown-class-example']  3
    Sleep    1s
    Close Browser


    #List box
    
    #Select From List By Label    xpath     value1
    #select from list by label     xpath      value2

    #unselect from list by label    xpath  value1
