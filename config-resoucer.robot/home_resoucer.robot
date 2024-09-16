*** Settings ***

Library        AppiumLibrary
Library        Process




*** Keywords ***

#Tela home>Carrossel 1 
Quando o usuario estiver na tela home    
    Wait Until Page Contains    text=Compre produtos por categorias       
    Wait Until Page Contains Element    id=test:id/carousel-test:id/page-Home-title

E o usuario clicar na primeira imagem do carrossel 1 
    Sleep    3    
    Wait Until Element Is Visible    xpath=(//android.widget.ImageView[@resource-id="test:id/image-carousel-banners-test:id/page-Home"])[1]
    Click Element                    xpath=(//android.widget.ImageView[@resource-id="test:id/image-carousel-banners-test:id/page-Home"])[1]

Então será direcionando a tela que será validada
    Wait Until Element Is Visible     id=test:id/header-test:id/page-Brand-title
    Element Should Contain Text       id=test:id/header-test:id/page-Brand-title    Coca-Cola

#Tela home>Categorias
E o usuario clicar no botão/texto ver todos 
    Wait Until Element Is Visible    id=test:id/button-test:id/page-Home-header-text
    Click Element    id=test:id/button-test:id/page-Home-header-text

Então será direcionando a tela categorias que será validada
    Wait Until Element Is Visible    id=test:id/header-test:id/page-AllCategories-title
    Element Should Contain Text    id=test:id/header-test:id/page-AllCategories-title    Categorias


