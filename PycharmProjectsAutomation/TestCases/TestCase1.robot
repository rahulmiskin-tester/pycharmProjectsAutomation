*** Settings ***
Library    SeleniumLibrary
Resource   ../Keywords/LoginKeywords.robot
Resource    ../Resource/LoginKeywords.robot

*** Variables ***
${URL}      https://www.bajajallianzlife.com/campaign/term-insurance-plans-premium-calculator/etouch-all-in-one-prices-term-plan.html?utm_source=google&utm_medium=Google_Search-Brand&utm_campaign=BALIC_Sok_Search_Term_Brand&adgroupid=164855968251&utm_content=691606522728&utm_term=bajaj%20allianz%20life&device=c&gad_source=1&gad_campaignid=21049166602&gbraid=0AAAAADE_zWDs41-sBBnyGObk9rDpyLSus&gclid=CjwKCAjwtrXFBhBiEiwAEKen17XuhDbqJk04fYtT1bU24adTm1IQrc7C30QH1Krftu_EYwvsCHUHuxoCfyIQAvD_BwE
${BROWSER}  chrome

*** Test Cases ***
TestCase1
   Set Selenium Implicit Wait   5
     Open Browser    ${URL}    ${BROWSER}
    Maximize Browser Window
    Fill Registration Form
    Select gender
    dropdown
    closing
    go to new
    javascript
    Click Button
    Handle alert all

