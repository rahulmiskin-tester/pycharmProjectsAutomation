*** Settings ***

Library     SeleniumLibrary

*** Keywords ***


*** Keywords ***
Launchbrowser
        [Arguments]     ${appurl}           ${Appbrowser}
        Open Browser    ${appurl}           ${Appbrowser}
        Maximize Browser Window
        ${title}=       Get Title
        [Return]        ${title}