*** Settings ***
Resource        ../config-resoucer.robot/login_resoucer.robot
Test Setup      Open App_solar
Test Teardown   Fechar app


*** Test Cases ***
Caso de Teste 1: Testando tela login
    [Documentation]     Tela login
    [Tags]    login
    Dado que o usuario insira cpf/cnpj valido
    Quando o usuario insira senha valida
    E click no botão entrar
    Então clicar no botão allow do modal e entrar na tela home 