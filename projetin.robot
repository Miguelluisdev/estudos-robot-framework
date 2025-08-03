*** Settings ***
Documentation    Teste E2E simples no Swag Labs
Resource         ../resources/imports.robot
Test Setup       Abrir o site
Test Teardown    Fechar navegador

*** Test Cases ***
Teste de compra completa no Swag Labs
    Fazer login
    Adicionar produto ao carrinho
    Finalizar compra
    Verificar mensagem de sucesso
