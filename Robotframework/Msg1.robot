*** Settings ***
Library    CustomerLib.py

*** Variables ***
${NAME}    Pytest framework


*** Test Cases ***
greet Morning Mesg
    ${msg1}=    Greet    ${NAME}
    log to console     ${msg1}
 
Mesg
    ${another_name}    set variable    NMS Wipro batch
    ${another_user}=    Greet     ${another_name}
    log to console    ${another_user}

Good night message
    ${name}     set variable    Good Night
    ${msg}=     Greet       ${name}
    log to console      ${msg}