** Settings ***

Library    SeleniumLibrary
Library    OperatingSystem

*** Variables ***
${URL}        https://www.policybazaar.com/
${BROWSER}      chrome


*** Test Cases ***


TC1
    Open Browser    https://www.policybazaar.com     chrome
    Maximize Browser Window

    @{PRODUCTS}=    Create List
    ...    Term Life Insurance
    ...    Health Insurance
    ...    Investment Plans
    ...    Car Insurance
    ...    2 Wheeler Insurance
    ...    Family Health Insurance
    ...    Travel Insurance

    FOR    ${t}    IN    @{PRODUCTS}
        ${status}=    Run Keyword And Return Status    Page Should Contain    ${t}
        Run Keyword If    '${status}'=='True'    Log    ${t} found
        ...    ELSE    Fail    ${t} not found
    END
    
    Title Should Be    Insurance - Compare & Buy Insurance Plans - Health, Term, Life, Car, Bike, Investment
    Wait Until Element Is Visible    //img[contains(@alt,"term insurance icon")]        5
    Click Element    //img[contains(@alt,"term insurance icon")]

        







