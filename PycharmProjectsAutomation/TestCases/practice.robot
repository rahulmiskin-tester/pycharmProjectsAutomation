*** Settings ***

Library    SeleniumLibrary

*** Variables ***
${URL}        https://www.bajajlifeinsurance.com/buy-online/isecure
${BROWSER}      chrome




*** Test Cases ***
practice
        Open Browser    ${URL}      ${BROWSER}
        Maximize Browser Window
        Wait Until Page Contains Element    //input[contains(@type,"text")]     10
        Input Text    //input[contains(@name,'Email')]    Rahul
        Set Selenium Implicit Wait    10

         Click Button    //button[contains(text(), ' NEXT ')]
         Input Text    //input[contains(@name,"FullName")]   tex

         Click Element    //label[contains(@class,"option option-1")][1]

         Click Element   //label[contains(@for,"smokeChewNo")]
         Execute Javascript     window.scrollBy(0,500)
         Click Button    //button[contains(@class,"headBtn next-btn-hmevt mb-3")]

         Capture Page Screenshot

