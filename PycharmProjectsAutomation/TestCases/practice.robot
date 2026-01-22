** Settings ***

Library    SeleniumLibrary
Library    OperatingSystem

*** Variables ***
${URL}        https://www.bajajlifeinsurance.com/buy-online/isecure
${BROWSER}      chrome




*** Test Cases ***
practice
        Open Browser    ${URL}      ${BROWSER}
        Maximize Browser Window
        Wait Until Page Contains Element    //input[contains(@type,"text")]     10
        #Input Text   //input[contains(@type,"text")]
        #Input Text    //input[contains(@name,'Email')]    rd@gmail.com
        Set Selenium Implicit Wait    10

         #Click Button    //button[contains(text(), ' NEXT ')]
         Input Text    //input[contains(@name,"FullName")]   Rahul Miskin
         Input Text    //input[contains(@formcontrolname,"phoneNumber")]  9898989898
         Input Text    //input[contains(@name,"Email")]   rd@gmail.com
         Click Element    //div[contains(@class,"mt-2 mb-3 mob-pin-div")]//child::span[contains(text(),"Male")]

         Wait Until Element Is Visible    //input[contains(@id,'mat-input-0')]    10s
         Clear Element Text              //input[contains(@id,'mat-input-0')]
         Input Text                      //input[contains(@id,'mat-input-0')]     08/01/2008


        Execute Javascript    window.scrollBy(0,500)
           # Click Button    xpath=//button[contains(@class,'headBtn next-btn')]
#            TRY
#             Element Should Be Enabled    //button[contains(@type"button")]//parent::div[contains(@class,"mt-2 col-md-12")]
#
#
#
#         EXCEPT
#            Capture Page Screenshot
#            Log To Console    NO exception
#
#
#         END
#
#
#
#
#         #Click Element    //label[contains(@class,"option option-1")][1]
#         Wait Until Element Is Visible   /label[contains(@for,"smokeChewNo")]
#         Click Element    //label[contains(@for,"smokeChewNo")]
#         Execute Javascript     window.scrollBy(0,500)
#         Click Button    //button[contains(@class,"headBtn next-btn-hmevt mb-3")]
#
#
#
#
#
#         Capture Page Screenshot
#         ${status}=  Run Keyword And Return Status    Page Should Contain    Bajaj Life iSecure II
#         Run Keyword If    '${status}'=='True'
#         ...    Log    pass
#         ...  ELSE      Log     fail
#         @{text}=    Create List    Bajaj Life iSecure II   Calculate Benefits         Key Benefits
#
#         FOR    ${t}    IN    @{text}
#         ${status}=  Run Keyword And Return Status    Page Should Contain    ${t}
#         Run Keyword If    '$status}'=='True'
#         ...    Log    pass
#         ...  ELSE   Log    fail
#          END
#            TRY
#                Page Should Contain    ${t}
#                Log To Console    Pass
#
#
#            EXCEPT
#                Log   no such element exception
#
#            Capture Page Screenshot
#
#            END
#
#            ${status}=  Run Keyword And Return Status   Element Should Be Visible   //button[contains(@type,"button")]//parent::div[contains(@class,"mt-2 col-md-12")]
#            Run Keyword If    ${status}   Click Element    //button[contains(@type,"button")]//parent::div[contains(@class,"mt-2 col-md-12")]
#            Run Keyword If    not ${status}   Log To Console     no
#
#
#                Select From List By Label    //select[contains(@name,"education")]         HSC
#
#
#            Wait Until Page Contains Element     //select[contains(@name,"education")]      10
#            Set Selenium Implicit Wait    10
#            Select From List By Label    //select[contains(@formcontrolname,"occupation")]       Professional
#            Input Text    //input[contains(@type,"number" )]   2000000
#            Input Text    //input[contains(@type,"Number")]    413005
#            Click Element    //button[contains(@type,"button")]
#           # Execute Javascript   window.scrollBy(0,500)
#            Scroll Element Into View    //p[normalize-space()='Life Insurance']/following-sibling::a[contains(text(),'Term Insurance')]
#              Click Element               //p[normalize-space()='Life Insurance']/following-sibling::a[contains(text(),'Term Insurance')]
#              Wait Until Element Is Visible      //form[contains(@class,"clpnri_lead_section formObj")]//child::label[contains(text(),"Full Name")]        10
#              Input Text               //form[contains(@class,"clpnri_lead_section formObj")]//child::label[contains(text(),"Full Name")]                    Raju  singh
#               Input Text    //form[contains(@class,"clpnri_lead_section formObj")]//child::label[contains(text(),"Date Of Birth")]    01/01/2007

#            Wait Until Keyword Succeeds    30    0.5    Click Element    //input[contains(@type,"checkbox")]
           # Wait Until Element Is Visible       //input[contains(@type,"checkbox")]
            Click Element    //button[contains(text()," NEXT ")]
            Wait Until Element Is Visible     //select[contains(@name,"education")]   10
            Select From List By Label    //select[contains(@name,"education")]    Graduation
            Select From List By Label    //select[contains(@name,"occupation")]    Self Employed
            Input Text        //input[contains(@type,"number")]         1500000
            Input Text    //input[contains(@type,"Number")]    411002
            Click Element   //button[contains(@type,"button")]//parent::div[contains(@class,"col-md-12")]






      




