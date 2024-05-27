*** Settings ***
Library     SeleniumLibary
Library    ../Resources/LoginData.Robot
Library     DataDriver      ../DataDriven/LoginExcel.xlsx   sheet_name=LoginExcel


Suite Setup     open my browser
Suite Teardown     close my browser


Test Template       Invaild Login


*** Test Cases ***
LoginTestWithExcel
    log to console      ${username}
    log to console      ${password}


*** Keywords ***
Invaild Login
    [Arguments]     ${username}     ${password}
    Input User      ${username}
    Input pwd       ${password}
    click Login Button
    error message shoulc be visible
