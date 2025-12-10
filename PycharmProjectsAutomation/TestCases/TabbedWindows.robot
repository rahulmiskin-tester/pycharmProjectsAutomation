*** Settings ***
Library     SeleniumLibrary
Library    Process


*** Variables ***


*** Test Cases ***
TabbedWindowsTest
            Open Browser     http://demo.automationtesting.in/Windows.html      chrome

           Maximize Browser Window
            Click Element    //button[@class="btn btn-info"]
            Sleep    2sec
            ${title}=       Get Title
            Log To Console    ${title}
            Switch Window       http://www.selenium.dev  #use URL or title name

            sleep       3sec

           # Click Element       //a[@href='/downloads']







*** Keywords ***

