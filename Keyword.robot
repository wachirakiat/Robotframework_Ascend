*** Settings ***
Resource    Import.robot

*** Keywords ***
Open web seleniumeasy
    Open Browser    ${url}   ${browser}

Activate sorting age order by ASC
    ${sortingOrderByASC}    Run Keyword And Return Status    Page Should Contain Element    ${sortAgeByASC}
    Run Keyword If    '${sortingOrderByASC}'== 'True'    Click Element    ${sortAgeByASC}

Activate sorting age order by DESC  
    ${sortingOrderByASC}    Run Keyword And Return Status    Page Should Contain Element    ${sortAgeByASC}
    Run Keyword If    '${sortingOrderByASC}'== 'True'    Click Element    ${sortAgeByASC}
    ${noSortingByDESC}    Run Keyword And Return Status    Page Should Contain Element    ${sortAgeByDESC}
    Run Keyword If    '${noSortingByDESC}'== 'True'    Click Element    ${sortAgeByDESC}
    ...       
    
Validate sorting age order by ASC
    @{ageList}=    Create List
    : For    ${index}    IN RANGE    1    11
    \    ${age}    Get Text    //*[@id="example"]/tbody/tr[${index}]/td[4]
    \    ${age}=    Convert To Integer    ${age}
    \    Append To List    ${ageList}    ${age}
    Should Be True    @{ageList}[0] <= @{ageList}[1]
    Should Be True    @{ageList}[1] <= @{ageList}[2]
    Should Be True    @{ageList}[2] <= @{ageList}[3]
    Should Be True    @{ageList}[3] <= @{ageList}[4]
    Should Be True    @{ageList}[4] <= @{ageList}[5]
    Should Be True    @{ageList}[5] <= @{ageList}[6]
    Should Be True    @{ageList}[6] <= @{ageList}[7]
    Should Be True    @{ageList}[7] <= @{ageList}[8]
    Should Be True    @{ageList}[8] <= @{ageList}[9]

Validate sorting age order by DESC
    @{ageList}=    Create List
    : For    ${index}    IN RANGE    1    11
    \    ${age}    Get Text    //*[@id="example"]/tbody/tr[${index}]/td[4]
    \    ${age}=    Convert To Integer    ${age}
    \    Append To List    ${ageList}    ${age}
    Should Be True    @{ageList}[0] >= @{ageList}[1]
    Should Be True    @{ageList}[1] >= @{ageList}[2]
    Should Be True    @{ageList}[2] >= @{ageList}[3]
    Should Be True    @{ageList}[3] >= @{ageList}[4]
    Should Be True    @{ageList}[4] >= @{ageList}[5]
    Should Be True    @{ageList}[5] >= @{ageList}[6]
    Should Be True    @{ageList}[6] >= @{ageList}[7]
    Should Be True    @{ageList}[7] >= @{ageList}[8]
    Should Be True    @{ageList}[8] >= @{ageList}[9]
    
