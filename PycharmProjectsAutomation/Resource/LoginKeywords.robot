*** Settings ***
Library    SeleniumLibrary
Variables  ../PageObjects/locators.py

*** Keywords ***
Fill Registration Form
    Input Text    ${txt_full_name}    Rahul Miskin
    Input Text    ${txt_MobNumber}    9876543210
    Input Text    ${txt_Email}        rahul@test.com
    Input Text    ${txt_dob}        2/12/2003

    Input Text    ${txt_pincode}    413002
    Click Element   ${txt_premium}



Select gender
        Click Element    rdo_male
dropdown
       Select From List By Label        ${txt_income}           2

closing
    Close All Browsers

go to new
        Go To    $(url}
Alert button
        Click Button     $ {alert_btn}

Handle alert all
        Handle Alert    accept
        Handle Alert    dismiss
        Handle Alert    leave
        Alert Should Be Present         I am an alert box!
javascript
        Execute Javascript          window.scrollBy(0,500)
        Sleep    1



