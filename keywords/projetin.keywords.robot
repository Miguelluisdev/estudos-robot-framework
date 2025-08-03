*** Settings ***
Library    SeleniumLibrary
Resource  ../variables/projetin.variables.robot

*** Keywords ***
Abrir o site
    Open Browser    ${URL}    ${BROWSER}
    Maximize Browser Window

Fazer login
    Input Text    id=user-name    ${USERNAME}
    Input Text    id=password     ${PASSWORD}
    Click Button  id=login-button
    Wait Until Element Is Visible    xpath=//span[text()="Products"]    5s

Adicionar produto ao carrinho
    Click Button    xpath=//div[text()="${PRODUCT_NAME}"]/../../..//button
    Click Element   id=shopping_cart_container
    Wait Until Page Contains    ${PRODUCT_NAME}

Finalizar compra
    Click Element   id=checkout
    Input Text      id=first-name    Teste
    Input Text      id=last-name     QA
    Input Text      id=postal-code   12345
    Click Element   id=continue
    Click Element   id=finish

Verificar mensagem de sucesso
    Page Should Contain    ${SUCCESS_MESSAGE}

Fechar navegador
    Close Browser
