*** Settings ***
Library    SeleniumLibrary

*** Variable ***
${LOGIN_URL}    http://admin-demo.nopcommerce.com
${BROWSER}      chrome

*** Test Case ***
Valid Login

    open browser   ${LOGIN_URL}    ${BROWSER}