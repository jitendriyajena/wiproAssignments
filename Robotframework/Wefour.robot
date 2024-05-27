*** Settings ***
Library     SeleniumLibary
Resource    ../Resources/LoginData.Robot

Suite Setup     Open my Browser
Suite Teardown  close my Browser

Test Template    Invalid Login

*** Test Cases ***                  USERNAME                  PASSWORD
Right User Empty pass              admin@yourstore.com         ${EMPTY}
Right User Wrong pass              admin@yourstore.com          adminOne
Wrong User Right pass              admin123@yourstore.com        admin
Wrong user empty pass              adm1@yourstore.com           admin1001
Wrong User wrong pass              admin@123.com                admin123


*** Keywords ***
Invalid Login
    [Arguments]    ${username}      ${password}
    Input User         ${username}
    Input pwd           ${password}
    Click Login Button
    Error message should be visible