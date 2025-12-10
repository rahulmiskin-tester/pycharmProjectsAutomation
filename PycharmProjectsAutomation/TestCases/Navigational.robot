*** Settings ***

Library    SeleniumLibrary

*** Variables ***



*** Test Cases ***
NavigationTest
        Set Selenium Implicit Wait    3

        Open Browser        https://www.google.com/         chrome
        Maximize Browser Window
        ${loc}=     Get Location
        Log To Console    ${loc}
        
        Go To    https://www.bing.com/      
        ${loc1}=    Get Location
        Log To Console    ${loc1}

        Go Back
        ${loc}=     Get Location
        Log To Console    $loc}



        




*** Keywords ***
