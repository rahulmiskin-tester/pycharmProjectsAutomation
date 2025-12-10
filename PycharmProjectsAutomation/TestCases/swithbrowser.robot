*** Settings ***
Library     SeleniumLibrary

*** Variables ***

*** Test Cases ***
switchMultiple
        Open Browser        https://www.google.com/         chrome
        Maximize Browser Window

        Sleep    2


        Open Browser    https://www.bing.com/       chrome

        Switch Browser    1
        ${title1}=    Get Title

        Log To Console    ${title1}

        Switch Browser   2

        
        ${title2}=      Get Title
        Log To Console    ${title2}


*** Keywords ***