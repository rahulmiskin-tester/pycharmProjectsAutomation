*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${URL}       https://the-internet.herokuapp.com/nested_frames
${BROWSER}    chrome

*** Test Cases ***
Handle Frames In JavaDocs
    Open Browser    ${URL}    ${BROWSER}
    Maximize Browser Window
    Set Selenium Implicit Wait    5

    Select Frame            //frame[@name="frame-top"]            #either name,id you can select anyuthing

    Unselect Frame
    Sleep    2s
    
    Select Frame      //frame[@name="frame-bottom"]

    Unselect Frame




