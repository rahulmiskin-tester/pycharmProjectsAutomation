*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${url}        https://www.bajajlifeinsurance.com/buy-online/isecure
${browser}    Chrome



*** Test Cases ***
Bajaj iSecure Premium Calculation Test
    Set Selenium Implicit Wait    10
    Open Browser    ${url}    ${browser}
    Maximize Browser Window
    Set Selenium Implicit Wait    10

#      Input Text     //input[contains(@name,'FullName')]    naresh shah
#      Input Text    //input[contains(@data-placeholder,"DD/MM/YYYY")]      12/02/1993
#      Input Text    //input[contains(@formcontrolname,"phoneNumber")]    9028256128
#      Input Text   //input[contains(@name,"Email")]   rd@gmail.com
#      Click Element    //span[contains(.,'Male')]
#      Select Checkbox    //input[contains(@type,"checkbox")]
#     # Unselect Checkbox    //input[contains(@type,"checkbox")]
#     Checkbox Should Be Selected    //input[contains(@type,"checkbox")]
#     Execute Javascript     window.scrollBy(0,500)  #scroll to below
#     Execute Javascript     window.scrollBy(0,-500)   #scroll to top
#     Execute Javascript     window.scrollTo(0,document.body.scrollHeight)
     Click Element    //a[contains(@class,"pt-2 pointer existingEmp")]

     Select From List By Label    //select[contains(@name,"groupCompany")]      Bajaj General Insurance Company
       Input Text     //input[contains(@name,"employeeCode")]       32757
#      Click Element   //label[contains(@class,"option option-2")]
#      Click Element    //button[contains(@type,"button")]//parent::div[contains(@class,"mt-2 col-md-12")]
#     # Wait Until Element Is Visible    //button[contains(@type,"button")]//parent::div[contains(@class,"mt-2 col-md-12")]
#
#   # Wait Until Page Contains Element    xpath=//select[contains(@name,'education')]    20
## Education
#      # Education
#    #Wait Until Page Does Not Contain    Life Goals Loading    30
#   # Wait Until Element Is Visible       xpath=//select[@name='education']    20
#   # Select From List By Label           xpath=//select[@name='education']    HSC




#   Click Element    xpath=//select[contains(@id,'occupation')]
#    Select From List By Label    xpath=//select[contains(@name,'occupation')]    Salaried (Govt.)
#
#    Wait Until Element Is Visible    xpath=//input[contains(@name,'annualIncome')]    15
#    Clear Element Text     xpath=//input[contains(@name,'annualIncome')]
#    Input Text     xpath=//input[contains(@name,'annualIncome')]    85000
#
#    Wait Until Element Is Visible    //input[contains(@type,"Number")]
#    Clear Element Text    xpath=//input[contains(@type,"Number")]
#    Input Text    xpath=//input[contains(@type,"Number")]   5678967
#
#    Click Button     Calculate Premium
#
#    Sleep    5
#    Capture Page Screenshot
#    Close Browser
