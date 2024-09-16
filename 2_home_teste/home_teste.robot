*** Settings ***
Resource        ../config-resoucer.robot/config.robot
Resource        ../config-resoucer.robot/home_resoucer.robot
Test Setup       Open App_solar    
Test Teardown    Fechar app




*** Test Cases ***
Caso de Teste 1: Fluxo de carrosel primario
    [Documentation]     Tela home
    [Tags]    carrossel1
    Dado que o usuario Faça o login
    Quando o usuario estiver na tela home 
    E o usuario clicar na primeira imagem do carrossel 1     
    Então será direcionando a tela que será validada 

Caso de Teste 2: Fluxo de categorias
    [Documentation]     Tela home
    [Tags]    categorias
    Dado que o usuario Faça o login
    Quando o usuario estiver na tela home
    E o usuario clicar no botão/texto ver todos
    Então será direcionando a tela categorias que será validada  
