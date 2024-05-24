*** Settings ***
Library    RequestsLibrary
Library    JSONLibrary
Library    Collections
Library    OperatingSystem
Library    String

*** Test Cases ***
Validation of Json data
    ${json_file}=   set variable    C:\\Users\\MRUTTYUNJAY\\robotframeworkProj\\wiproProject\\JSONData\\Employee.json
        log to console    ${json_file}
     ${JSON_OBJ}=   Get File    ${json_file}
     ${valueof}=    evaluate    json.loads(''' ${JSON_OBJ} ''')   json
        log to console    ${valueof["firstName"]}
     ${firstName}=      set variable    ${valueof["firstName"]}
        should be equal   ${firstName}     John

        log to console    ${valueof["phoneNumbers"][0]["type"]}
      ${type}=  set variable    ${valueof["phoneNumbers"][0]["type"]}

         should be equal    ${type}     iPhone