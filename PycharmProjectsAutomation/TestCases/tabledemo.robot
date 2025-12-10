*** Settings ***
Library     SeleniumLibrary


*** Variables ***
${url}          https://testautomationpractice.blogspot.com/

${browser}      chrome


*** Test Cases ***
Demotest
        Open Browser        ${url}          ${browser}
        Maximize Browser Window
        Set Selenium Implicit Wait    2
        #${rows}=        Get Element Count    //table[@name="BookTable"]/tbody/tr
        #Log To Console    ${rows}

        ${rows}=     Get Element Count    //table[@name="BookTable"]/tbody/tr
        Log To Console    ${rows}
        ${col}=      Get Element Count    //table[@name="BookTable"]/tbody/tr[1]/th

        Log To Console    ${col}
        
        ${txt}=     Get Text    //table[@name="BookTable"]/tbody/tr[5]/td[1]
        Log To Console    ${txt}
        ${txt1}     Get Text    //table[@name="BookTable"]/tbody/tr[7]/td[3]
        Log To Console    ${txt1}
        Table Column Should Contain    xpath=//table[@name="BookTable"]              2                 Author
        table Row Should Contain      xpath=//table[@name="BookTable"]      5              Master In Selenium
        #Table Cell Should Contain              xpath=//table[@name="BookTable"]         5       2       mukesh

        Table Header Should Contain    xpath=//table[@name="BookTable"]    BookName

        Table Header Should Contain    xpath=//table[@name="BookTable"]    Author
        Table Header Should Contain   xpath=//table[@name="BookTable"]     Subject
        Close Browser




*** Keywords ***
