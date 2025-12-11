*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
Screenshot
    Open Browser    https://support.orangehrm.com/portal/en/signin    chrome
    Maximize Browser Window
    Set Selenium Implicit Wait    2
    Sleep    2
    
   # Capture Element Screenshot              img alt//[@aria-label="OrangeHRM home"]     C:/Users/Admin/PycharmProjectsAutomation/TestCases/capture.robot/rahul.png
   # Capture Page Screenshot          C:/Users/Admin/PycharmProjectsAutomation/d1.png

    Capture Element Screenshot     img alt//[@aria-label="OrangeHRM home"]          imagei.pmg

   Capture Page Screenshot     Rahul.png
   ghj
