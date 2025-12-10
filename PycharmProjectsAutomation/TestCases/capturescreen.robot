*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
Screenshot
    Open Browser    https://support.orangehrm.com/portal/en/signin    chrome
    Maximize Browser Window
    Set Selenium Implicit Wait    2
    Sleep    2
     Capture Element Screenshot    //img[@data-id="portal_logo"]
     Click Element    //label[contains(@class,"option option-1")][1]
     Click Element    //label[contains(@class,'option option-2 w-100')]
     Click Element    //label[contains(@class,"option option-3 w-100")]
    #Click Button    //button[contains(@class,"headBtn next-btn-hmevt mb-3")]
     Click Button    //button[contains(text(), ' NEXT ')]