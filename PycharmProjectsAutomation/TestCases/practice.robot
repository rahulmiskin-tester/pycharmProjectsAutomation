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
        Input Text    //input[contains(@name,'Email')]    Rahul     miskin
        Set Selenium Implicit Wait    10

         #Click Button    //button[contains(text(), ' NEXT ')]
         Input Text    //input[contains(@name,"FullName")]   Rahul Miskin
         Input Text    //input[contains(@formcontrolname,"phoneNumber")]  9898989898
         Input Text    //input[contains(@name,"Email")]   rd@gmail.com
         Click Element    //div[contains(@class,"mt-2 mb-3 mob-pin-div")]//child::span[contains(text(),"Male")]

         Wait Until Element Is Visible    xpath=//input[@aria-label='Date of Birth']    10s
         Clear Element Text              xpath=//input[@aria-label='Date of Birth']
         Input Text                      xpath=//input[@aria-label='Date of Birth']    08/01/2008


        Execute Javascript    window.scrollBy(0,500)
            Click Button    xpath=//button[contains(@class,'headBtn next-btn')]




         Click Element    //label[contains(@class,"option option-1")][1]

         Click Element   //label[contains(@for,"smokeChewNo")]
         Execute Javascript     window.scrollBy(0,500)
         Click Button    //button[contains(@class,"headBtn next-btn-hmevt mb-3")]
         
         TRY
             Element Should Be Enabled    //button[contains(@type"button")]//parent::div[contains(@class,"mt-2 col-md-12")]



         EXCEPT
            Capture Page Screenshot
            Log To Console    NO exception


         END
             


         Capture Page Screenshot
         ${status}=  Run Keyword And Return Status    Page Should Contain    Bajaj Life iSecure II
         Run Keyword If    '${status}'=='True'
         ...    Log    pass
         ...  ELSE      Log     fail
         @{text}=    Create List    Bajaj Life iSecure II   Calculate Benefits         Key Benefits

         FOR    ${t}    IN    @{text}
         ${status}=  Run Keyword And Return Status    Page Should Contain    ${t}
         Run Keyword If    '$status}'=='True'
         ...    Log    pass
         ...  ELSE   Log    fail
          END
            TRY
                Page Should Contain    ${t}
                Log To Console    Pass


            EXCEPT
                Log   no such element exception
                
            Capture Page Screenshot
                
            END

            ${status}=  Run Keyword And Return Status   Element Should Be Visible   //button[contains(@type,"button")]//parent::div[contains(@class,"mt-2 col-md-12")]
            Run Keyword If    ${status}   Click Element    //button[contains(@type,"button")]//parent::div[contains(@class,"mt-2 col-md-12")]
            Run Keyword If    not ${status}   Log To Console     no
            
            Select From List By Label    //select[contains(@name,"education")]




      




