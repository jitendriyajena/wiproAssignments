*** Settings ***
Library     AppCall.py
Library     OperatingSystem


*** Variables ***
#   No variables

*** Test Cases ***
bank Test
    ${result}=      bank    4   5
    should be equal as numbers      ${result}       9
    log to console      ${result}

Stock Test
    ${result}=      stock    10   5
    should be equal as numbers      ${result}       5
    log to console      ${result}


Display Test
    stock    400   500
    ${result}   get current result
    should be equal as numbers      ${result}   -100



