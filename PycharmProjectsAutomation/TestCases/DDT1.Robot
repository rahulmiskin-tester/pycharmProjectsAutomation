*** Settings ***

Library     SeleniumLibrary

Resource      ../Resource/login_resources.robot
Suite Setup     open my browser
Suite Teardown   Close Browser
Test Template       Invalid Login


*** Test Cases ***
Right user empty pass       admin@yourstore.com         xyx
Right user wrong password   admin@yourstore.com     xyz
wrong userv right password  admin1@yourstore.com    admin
wrong user empty password      admi4n@yourstore.com    6474



*** Keywords ***

Invalid Login
        [Arguments]     ${username}     ${password}
        Input Username    ${username}
        Input Password        ${password}
        Click Login Button
        Error Message Should Be Visible