*** Settings ***

Library        AppiumLibrary
Library        Process
Library    XML


*** Variables ***
${CT_BT_MOSTRAR_MAIS}    xpath=(//android.view.ViewGroup[@resource-id="test:id/carousel-test:id/page-Home-item"])[4]
${ELEMENT_SCROOL}        xpath=//android.view.ViewGroup[@resource-id="test:id/carousel-test:id/page-Home"]/android.widget.HorizontalScrollView/android.view.ViewGroup   
${IMG_REFRIGE}        xpath=//android.widget.TextView[@resource-id="test:id/-label-item" and @text="Refrigerantes"]


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

E o usuario clicar no botão seta "mostar mais"
    Wait Until Page Does Not Contain Element    ${CT_BT_MOSTRAR_MAIS}

    Swipe By Percent	90	50	10	50    1000        #Deslizar para direita

    Click Element    ${CT_BT_MOSTRAR_MAIS}

    Wait Until Page Contains Element    ${IMG_REFRIGE}
    Element Should Contain Text    ${IMG_REFRIGE}    Refrigerantes




    Sleep    10
