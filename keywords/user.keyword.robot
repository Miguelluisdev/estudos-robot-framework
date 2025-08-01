*** Keywords ***

Converter Celsius para fahrenheit
    [Arguments]    ${celsius}
    ${fahrenheit}=    Evaluate    (${celsius} * 9/5) + 32
    [Return]    ${fahrenheit}
Converter Fahrenheit para Celsius
    [Arguments]    ${fahrenheit}
    ${celsius}=    Evaluate    (${fahrenheit} - 32) * 5/9
    [Return]    ${celsius}

