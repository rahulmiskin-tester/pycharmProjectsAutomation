*** Settings ***
Library     SeleniumLibrary


*** Variables **
${url}      https://www.worldometers.info/geography/flags-of-the-world/
${browser}      chrome






*** Test Cases ***
Scrolling
        Open Browser        ${url}              ${browser}
        Maximize Browser Window
        Set Selenium Implicit Wait    3

        Execute Javascript     window.scrollTo(0,500)      #for perticular argument (horizantal,vertical)

        Scroll Element Into View    //img[@class="w-[120px] h-[80px] object-contain"]       #perticular element

        Execute Javascript  window.scrollTo(0,document.body.scrollHeight)    #End of the page

        Execute Javascript      window.scrollTo(0,-document.body.scrollHeight)  #starting of thr page






*** Keywords ***

