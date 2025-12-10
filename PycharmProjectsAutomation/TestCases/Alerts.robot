*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${url}        https://testautomationpractice.blogspot.com/

${browser}    chrome

*** Test Cases ***
Handle Simple Alert
    Open Browser    ${url}    ${browser}
    Maximize Browser Window
    Sleep           2s

    # Scroll to alert section (optional if not visible)
    Execute JavaScript    window.scrollBy(0, 500)
    Sleep                 1s

    # Click on "Simple Alert" button
    Click Button    id=alertBtn
    Sleep           1s

    # Handle JS popup (Click OK)
   # Handle Alert        accept
    #Handle Alert        dismiss
   # Handle Alert        leave

   #Alert Should Be Present      I am an alert box!

  # Alert Should Not Be Present  I am an alert box!

    Sleep           1s

    Close Browser



