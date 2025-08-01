*** Settings ***
Library   SeleniumLibrary
Suite Setup  Open Browser   https://automationpratice.com.br/login    firefox
Suite Teardown  Close Browser
Documentation    QuAndo Site Robot Initialization
Keyword Tags   initialization regression
Resource  ../keywords/qazando_keyword.robot
Resource  ../variables/qazando.variables.robot


*** Test Cases ***
 Cenario: 01 Login com Suite
    [Documentation]    Teste de login com suite
    [Tags]    happy smoke regression
    Abrir Pagina Inicial
    Preencher os campos com Credenciais Válidas   ${EMAIL}    ${PASSWORD}
    Clicar no botão de Login
    # Verificar Login Bem Sucedido
    Sair do navegador