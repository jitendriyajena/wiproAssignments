*** Settings ***
Library     DatabaseLibrary
Library     OperatingSystem

*** Variables ***
${DBname}   librarydb
${DBUser}   root
${DBPassword}   Password@1
${DBHost}   localhost
${DBPort}   3306



*** Keywords ***
connect DB
    connect to database     pymysql     ${DBname}   ${DBUser}   ${DBPassword}   ${DBHost}   ${DBPort}

Disconnect DB
    disconnect from database

*** Test Cases ***
verify table creations
    ${output}   =    excute sql string   create  Table Pay( empId int, empname varchar(255), amt int
    should be equal as strings  ${output}   None
