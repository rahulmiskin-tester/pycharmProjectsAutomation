*** Settings ***
Library     SeleniumLibrary



*** Variables ***
${url}      https://www.mercurytravels.co.in/flights
${browser}      chrome



*** Test Cases ***
TC1
#userdefinedkeywordswithoutargument
    LaunchBrowser
    Set Selenium Implicit Wait    4
    Input Text    //input[@name="fromCity"]    Solapur
    Input Text    //input[@placeholder="Type City Name or Airport Code"]    pune


    #Input Text    //input[@name="toCity"]    pune



*** Keywords ***

LaunchBrowser
     Open Browser    ${url}      ${browser}
     Maximize Browser Window
