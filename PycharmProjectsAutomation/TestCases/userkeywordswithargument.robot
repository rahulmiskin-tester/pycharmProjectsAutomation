*** Settings ***
Library     SeleniumLibrary
Resource        ../Resource/resources.robot






*** Variables ***
${url}           https://www.mercurytravels.co.in/flights
${browser}      chrome



*** Test Cases ***
TC1
          ${pagetitle}=     Launchbrowser    ${url}    ${browser}
          Log To Console    ${pagetitle}
           Input Text    //input[@name="fromCity"]    Solapur
           Input Text    //input[@placeholder="Type City Name or Airport Code"]    pune





