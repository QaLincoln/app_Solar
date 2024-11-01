*** Settings ***

Resource        ../config-resoucer.robot/config.robot
Resource        ../config-resoucer.robot/home_resoucer.robot
Test Setup       Open App_solar    
Test Teardown    Fechar app

*** Test Cases ***

###Teste de Regressão

Caso de Teste 1: Fluxo de carrosel primario
    [Documentation]     Clicar no primeira imagem do carrossel
    [Tags]    carrossel1
    Dado que o usuario Faça o login
    Quando o usuario estiver na tela home 
    E o usuario deve clicar na primeira imagem do primeiro carrossel     
    Então será direcionando a tela do primeiro carrossel 

Caso de Teste 2: Fluxo de categorias
    [Documentation]     Clicar no botão Ver todos e mostrar mais
    [Tags]    categorias
    Dado que o usuario Faça o login
    Quando o usuario estiver na tela home
    E o usuario deve clicar no botão/texto "ver todos" categorias
    E o usuario deve clicar no botão seta "mostar mais" categorias 
    Então será direcionando a tela categorias que será validada  
       
Caso de Teste 3: Fluxo de categorias 
    [Documentation]      Clicar no primeiro produto
    [Tags]    categorias
    Dado que o usuario Faça o login
    Quando o usuario estiver na tela home
    E o usuario deve clicar no primeiro produto em categorias
    Então será direcionando a tela da categoria clicada    

### Recomendados     
   
# Caso de Teste 4: Fluxo de recomendados
#     [Documentation]      Clicar no botão Ver todos e mostrar mais
#     [Tags]    recomendados
#     Dado que o usuario Faça o login
#     Quando o usuario estiver na tela home
#     E o usuario deve clicar no botão/texto ver todos recomendados
#     E o usuario deve clicar no botão seta "mostar mais" recomendados   
#     Então será direcionando a tela para você

# Caso de Teste 5: Fluxo de recomendados 
#     [Documentation]      Clicar no primeiro produto
#     [Tags]    recomendados
#     Dado que o usuario Faça o login
#     Quando o usuario estiver na tela home
#     # E o usuario deve clicar no primeiro produto em recomendados
#     # Então deverá validar a ação de clicar no primeiro produto em recomendados   

### Marcas         

Caso de Teste 6: Fluxo de marcas

    [Documentation]      Clicar no botão Ver todos e mostrar mais
    [Tags]    marcas
    Dado que o usuario Faça o login
    Quando o usuario estiver na tela home
    E o usuario deve clicar no botão/texto ver todos marcas
    E o usuario deve clicar no botão seta "mostar mais" marcas
    Então será direcionando a tela marcas que será validada  
       
Caso de Teste 7: Fluxo do segundo carrosel
    [Documentation]     Clicar na primeira imagem do segundo carrossel
    [Tags]    carrossel2
    Dado que o usuario Faça o login
    Quando o usuario estiver na tela home 
    E o usuario deve clicar na primeira imagem do segundo carrossel     
    Então será direcionando a tela do segundo carrossel  