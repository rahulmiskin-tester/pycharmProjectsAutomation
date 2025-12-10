*** Settings ***
Library    SeleniumLibrary

*** Variables ***



*** Test Cases ***

Closeall
         Open Browser        https://demo.nopcommerce.com/           chrome

        Open Browser        https://demowebshop.tricentis.com/      chrome

        Close All Browsers





*** Keywords ***
