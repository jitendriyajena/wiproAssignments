*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${LOGIN_URL}    http://admin-demo.nopcommerce.com
${BROWSER}      Chrome

*** Keywords ***
Open my Browser
    open browser    ${LOGIN_URL}    ${BROWSER}
    maximize browser window
Open Login Page
     go to    ${LOGIN_URL}
Input user
    [Arguments]    ${username}
    input text    xpath://input[@id='Email']     ${username}
Input pwd
    [Arguments]    ${password}
    input text    xpath://input[@id='Password']    ${password}
Click Login Button
     click element  xpath://button[contains(text(),'Log in')]
Page should wait few seconds
      sleep    10s
click Logout Button
     click element   xpath://a[contains(text(),'Logout')]
Error message should be visible
     page should contain    Login was unsuccessful
DashPage Page should be visible
      page should contain    Dashboard
close my Browser
    close all browsers