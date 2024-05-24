*** Settings ***
Library    RequestsLibrary
Library    Collections
Library    JSONLibrary

*** Variables ***
${BASE_URL}     https://reqres.in/
${page_path}    $.page
${id_path}      $.id

*** Test Cases ***
Get Request for Delete Session
    create session    myreqsin      ${BASE_URL}     disable_warnings=1
    ${end_point}=   set variable    /api/users/2
    ${response}=    DELETE On Session     myreqsin     ${end_point}
        log to console    ${response}
        log to console    ${response.content}

 #JSON Validations
    ${status_code}=     convert to string    ${response.status_code}
        should be equal    ${status_code}   204
        log to console    ${status_code}
        log to console    ${response.content}

#    ${json_response}=   convert string to json    ${response.content}
#    ${contents}=    get value from json    ${json_response}     ${id_path}
#            should not be empty    ${contents}
#            log to console    ${contents}