*** Settings ***
Resource        ../config-resoucer.robot/config.robot
Resource        ../config-resoucer.robot/home_resoucer.robot
Test Setup       Open App_solar    
Test Teardown    Fechar app




*** Test Cases ***
Caso de Teste 1: Fluxo de carrosel primario
    [Documentation]     Clicar no primeira imagem do carrossel
    [Tags]    carrossel1
    Dado que o usuario Faça o login
    Quando o usuario estiver na tela home 
    E o usuario clicar na primeira imagem do carrossel 1     
    Então será direcionando a tela que será validada 

Caso de Teste 2: Fluxo de categorias
    [Documentation]     Clicar no botão Ver todos
    [Tags]    categorias
    Dado que o usuario Faça o login
    Quando o usuario estiver na tela home
    E o usuario clicar no botão/texto ver todos
    Então será direcionando a tela categorias que será validada  

Caso de Teste 3: Fluxo de categorias
    [Documentation]     Clicar no botão seta (Mostrar mais)
    [Tags]    categorias
    Dado que o usuario Faça o login
    Quando o usuario estiver na tela home
    E o usuario clicar no botão seta "mostar mais"    

    # Então será direcionando a tela categorias que será validada      
