*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${url}          https://demo.nopcommerce.com/
${browser}      Chrome

*** Test Cases ***
Getlinktest
    Set Selenium Implicit Wait    4
    Open Browser    ${url}    ${browser}
    Maximize Browser Window

    ${alllinks}=    Get WebElements    xpath=//a
    ${alllinkscount}=    Get Length    ${alllinks}
    Log To Console    Total links found: ${alllinkscount}

    FOR    ${i}    IN RANGE    1    ${alllinkscount}
        ${linktext}=    Get Text    xpath=(//a)[${i}]
        Log To Console    ${linktext}
    END