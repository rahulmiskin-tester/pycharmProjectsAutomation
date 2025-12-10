*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${url}       https://www.bajajallianzlife.com/buy-online/isecure
${browser}   chrome
*** Test Cases ***
testcase
    Set Selenium Implicit Wait    10
    Open Browser    ${url}      ${browser}


          Input Text     //input[@name='fullName']    dfgh
   Input Text         //input[@name='mobileNumber']      909
      //input[@name='dob']       12/02/1993
        //input[@name='emailId']       cvb
    