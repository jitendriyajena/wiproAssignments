*** Settings ***
Library    RequestsLibrary
Library    Collections

*** Variables ***
${BASE_URL}     https://reqres.in/
${BASE_URI}     api/users/2

*** Test Cases ***
Get User Page 2 and verify Status
    create session    myreqsin      ${BASE_URL}
    ${response}=    GET On Session    myreqsin      ${BASE_URI}
        log to console    ${response.status_code}
        log to console    ${response.content}
        log to console    ${response.headers}

 #JSON Validations
    ${status_code}=     convert to string    ${response.status_code}
        should be equal    ${status_code}   200
    ${body}=    convert to string    ${response.content}
        should contain    ${body}  Janet
     # Content-Type': 'application/json; charset=utf-8'
    ${contentvalue}=    get from dictionary    ${response.headers}      Content-Type
        should be equal    ${contentvalue}  application/json; charset=utf-8
    ${networktype}=     get from dictionary    ${response.headers}      Content-Encoding
         should be equal    ${networktype}      gzip