*** Settings ***
Library    DatabaseLibrary
Library    OperatingSystem

*** Variables ***

${DBName}  empData
${DBUser}  root
${DBPassword}  root
${DBHost}  localhost
${DBPort}  3306

*** Keywords ***
connect DB
   connect to Database     pymysql    ${DBName}   ${DBUser}  ${DBPassword}  ${DBHost}  ${DBPort}

Disconect DB
    disconnect from database

*** Test Cases ***
Verify Successful creation of Table
    [documentation]  This test case verifies that user is able to create a table successfully
    Connect DB
#   ${output}=  Execute SQL String  CREATE TABLE emp (empID int, empName varchar(255), empdept varchar(255), empdesg varchar(255));
#    Should Be Equal As Strings  ${output}  None

#Verify Data insertion in the emp table
#    ${output}=  execute sql script    ../DataBaseOne/DBtwo/insert.sql
#    should be equal as strings    ${output}    None

#Verify Data update in the table
#    ${output}=  Execute SQL String  UPDATE emp SET empname="AbdulKalam" WHERE empdept="Accounts"
#    Should Be Equal As Strings  ${output}  None

Verify Data in the table to be delete with One row
    ${output}=    Execute SQL String  DELETE from  EMP WHERE empName="Rahul"
    Should Be Equal As Strings  ${output}  None

#Verify Database Table ExitsData in the table to be delete with One row
#    ${output}=    Execute SQL String  DELETE from  EMP WHERE empName="Rahul"
#    Should Be Equal As Strings  ${output}  None

Verify whether the table exists in the Database
    check if exists in database    select empID from emp where empname="Rahul"

Verify whether table must exists
    table must exist  emp