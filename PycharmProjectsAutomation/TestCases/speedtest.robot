*** Settings ***

Library     SeleniumLibrary




*** Variables ***




*** Test Cases ***
speedtest
       ${speed}=     Get Selenium Speed
       Log To Console    ${speed}
       

#       Open Browser     https://demowebshop.tricentis.com/
#       Maximize Browser Window
#       Click Element   //input[@type="radio"]
#       Click Element   //input[@name="q"]
#       Set Selenium Speed    2s
#       Click Element    //a[@class="ico-register"]
#       Input Text    //input[@id="FirstName"]        Rahul
#
#       Input Text   //input[@name="LastName"]    Miskin
#
#       ${speed}    Get Selenium Speed
#       Log To Console    ${speed}
#
#       Close Browser



*** Keywords ***



