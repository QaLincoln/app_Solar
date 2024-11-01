*** Settings ***

Resource        ../config-resoucer/config.robot
Resource        ../config-resoucer/config_smok_teste/campoBuscar_resoucer.robot
Test Setup       Open App_solar    
Test Teardown    Fechar app

*** Test Cases ***

###Teste de Regressão

Caso de Teste 1: Fluxo campo buscar
    [Documentation]     Buscar pelo texto Fanta
    [Tags]     buscar
    Dado que o usuario Faça o login
    Quando o usuario estiver na tela home
    E digite um texto "Fanta" no campo Buscar
    Então retornará o produto digitado "Fanta"

# Caso de Teste 2: Fluxo campo buscar
#     [Documentation]     Buscar pelo texto Fanta
#     [Tags]     buscar
#     Dado que o usuario Faça o login
#     Quando o usuario estiver na tela home
#     E digite um ${produto} no campo Buscar
#     Então retornará o produto digitado    

