*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${URL_LOGIN}     https://www.saucedemo.com/
${BROWSER}       firefox

*** Keywords ***
Enrtrar no site
    Open Browser    ${URL_LOGIN}    ${BROWSER}
    Maximize Browser Window

Preencher os campos de texto
    Input Text    id=user-name     standard_user
    Input Text    id=password      secret_sauce
    Click Button  id=login-button

Resultado esperado
    Wait Until Page Contains    Name (A to Z)    10s
    Log    Login realizado com sucesso
    Page Should Contain    Name (A to Z)

Sair do site
    Close Browser

*** Test Cases ***
Cenario: 01 Login com sucesso
    Enrtrar no site
    Preencher os campos de texto
    Resultado esperado
    Sair do site
