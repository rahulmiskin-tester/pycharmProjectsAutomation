*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${url}
${browser}   chrome

*** Test Cases ***
testcase
    Set Selenium Implicit Wait    10

    Open Browser    ${url}    ${browser}
    Maximize Browser Window
    Input Text    //input[contains(@id,'mat-input-0')]    01/01/2003
    Input Text    //input[contains(@name,'FullName')]   text   baju
    sleep  5
   Input Text   //input[@name="phoneNumber"]        9028940627
    Input Text    //input[contains(@class,"cst-input ng-untouched ng-pristine ng-invalid ng-star-inserted")]    rd@gmial.com
     Click Element   //label[contains(.,'Male')]
    #Click Element    //span[contains(.,'Male')]
    #Click Element    //label[contains(@class,"option option-1")]
   # Wait Until Element Is Visible      //img[contains(@class,"img-fluid")]    10s
    # Click Element           //img[contains(@class,"img-fluid")]
    #Click Element    //button[contains(@class,"headBtn next-btn-hmevt mb-3")]
    Click Element    //label[contains(@class,"option option-2")]
    Click Element    //button[contains(.,' NEXT ')]
   




