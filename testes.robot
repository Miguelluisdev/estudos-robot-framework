*** Settings ***
Library           OperatingSystem

*** Test Cases ***
Verificar diretório atual
    [Documentation]    Verifica se o diretório atual é acessível
    ${output}=    Run    pwd
    Log    Diretório atual: ${output}