# O __init__.robot é útil para:

Definir configurações comuns (*** Settings ***)

Declarar variáveis compartilhadas

Incluir bibliotecas e arquivos de recursos

Definir tags padrão para todos os testes da pasta

Criar palavras-chave customizadas reutilizáveis

Executar comandos antes/depois de todos os testes da pasta com Suite Setup e Suite Teardown



# *** Settings ***
# Library      SeleniumLibrary
# # Resource     ../resources/keywords.robot
# # Variables    ../resources/variables.robot
# Suite Setup  Open Browser    https://example.com    chrome
# Suite Teardown  Close Browser


# # Evita duplicação de código ✅
# Centraliza configurações ✅
# Melhora organização dos testes ✅
# Deixa o projeto mais escalável ✅