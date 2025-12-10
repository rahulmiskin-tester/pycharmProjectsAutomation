*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
MouseActions
    # Right click
    Open Browser    https://swisnl.github.io/jQuery-contextMenu/demo.html    chrome
    Maximize Browser Window
    Set Selenium Implicit Wait    3
    Open Context Menu    xpath=//span[@class="context-menu-one btn btn-neutral"]

    # Double click section
    Go To    https://testautomationpractice.blogspot.com/
    Scroll Element Into View    xpath=//button[normalize-space()='Copy Text']
    Double Click Element        xpath=//button[normalize-space()='Copy Text']

    Sleep    3

    #drag and drop action


    #Drag and drop  Source and element

    Drag And Drop     //div[@id="droppable"]            //div[@id="droppable"]



*** Keywords ***