*** Settings ***

Library        AppiumLibrary

*** Variables ***
${CT_BT_MOSTRAR_MAIS}    xpath=(//android.view.ViewGroup[@resource-id="test:id/carousel-test:id/page-Home-item"])[4]
${ELEMENT_SCROOL}        xpath=//android.view.ViewGroup[@resource-id="test:id/carousel-test:id/page-Home"]/android.widget.HorizontalScrollView/android.view.ViewGroup   
${IMG_REFRIGE}           xpath=//android.widget.TextView[@resource-id="test:id/-label-item" and @text="Refrigerantes"]
${IMG_REFRI_CATEG}       xpath=//android.widget.TextView[@resource-id="test:id/product-title-recommended-test:id/page-Category" and @text="Coca-Cola Sem Açúcar Lata 350ml"]
${verTodos_recomend}     xpath=(//android.widget.TextView[@text="Ver todos"])[2]
${RC_BT_MOSTRAR_MAIS}    xpath=//android.widget.TextView[@text="󱦰"]
${MC_BT_MOSTRAR_MAIS}    xpath=(//android.view.ViewGroup[@resource-id="test:id/carousel-test:id/page-Home-item"])[4]
${EXPECTED_TEXT}         Coca-cola        
       

*** Keywords ***


Quando o usuario estiver na tela home    
    Wait Until Page Contains    text=Compre produtos por categorias       
    Wait Until Page Contains Element    id=test:id/carousel-test:id/page-Home-title

E o usuario deve clicar na primeira imagem do carrossel 1 
   
    ${c1} =    Set Variable     android=new UiSelector().resourceId("test:id/image-carousel-banners-test:id/page-Home").instance(0)    ###Clica na primeira imagem do carrossel
    Wait Until Element Is Visible    ${c1}
    Click Element    ${c1}
    Sleep    2


Então será direcionando a tela que será validada
    Sleep    2
    ${c1} =    Set Variable     android=new UiSelector().resourceId("test:id/image-carousel-banners-test:id/page-Home").instance(0)    ###Clica na primeira imagem do carrossel
    Page Should Not Contain Element    ${c1}
    

#Tela home>Categorias
E o usuario deve clicar no botão/texto ver todos categorias
    Wait Until Element Is Visible    id=test:id/button-test:id/page-Home-header-text
    Click Element                    id=test:id/button-test:id/page-Home-header-text

Então será direcionando a tela categorias que será validada
    Wait Until Element Is Visible    id=test:id/header-test:id/page-AllCategories-title
    Element Should Contain Text      id=test:id/header-test:id/page-AllCategories-title    Categorias
    # Wait Until Page Contains Element    ${IMG_REFRIGE}
    # Element Should Contain Text         ${IMG_REFRIGE}    Refrigerantes

E o usuario deve clicar no botão seta "mostar mais" categorias
    Wait Until Page Does Not Contain Element    ${CT_BT_MOSTRAR_MAIS}

    Swipe By Percent	90	50	10	50    1000        #Deslizar para direita

    Click Element    ${CT_BT_MOSTRAR_MAIS}

E o usuario deve clicar no primeiro produto em categorias
    Wait Until Page Contains Element    id=test:id/carousel-test:id/page-Home-item-active    
    Wait Until Element Is Visible       id=test:id/carousel-test:id/page-Home-item-active
    Click A Point    100    1000    
Então será direcionando a tela do produto em categorias
    Wait Until Page Contains Element    ${IMG_REFRI_CATEG}
    Element Should Contain Text    ${IMG_REFRI_CATEG}       Coca-Cola Sem Açúcar Lata 350ml


E o usuario deve clicar no botão/texto ver todos recomendados
    Swipe By Percent	90	40	10	0    1000         #Deslizar para baixo
    Wait Until Page Contains Element     xpath=(//android.widget.TextView[@text="Ver todos"])[1]
    Click Element                        xpath=(//android.widget.TextView[@text="Ver todos"])[1]

Então será direcionando a tela para você
    
    Wait Until Page Contains Element    id=test:id/header-test:id/page-Recommended-title
    Element Should Contain Text         id=test:id/header-test:id/page-Recommended-title    Para Você    

E o usuario deve clicar no botão seta "mostar mais" recomendados
   
    Swipe By Percent	90	40	10	0    1000         #Deslizar para baixo
    Swipe By Percent	90	50	-180	60    1000        #Deslizar para direita

    Click Element    ${RC_BT_MOSTRAR_MAIS}      

# E o usuario deve clicar no primeiro produto em recomendados
#     Swipe By Percent	90	40	10	0    1000         #Deslizar para baixo
#     # Wait Until Page Contains Element     Xpath=(//android.view.ViewGroup[@resource-id="test:id/button-product-card-recommended-test:id/page-Home"])[1]
#     Sleep    2
#     Click Element                        Xpath=//android.widget.TextView[@text=""]
#     Element Should Contain Text          xpath=(//android.widget.EditText[@resource-id="test:id/input-counter-"])[1]    2        #botão +
#     Click Element                        xpath=(//android.view.ViewGroup[@resource-id="test:id/button-product-card-recommended-test:id/page-Home"])[1]   

    
Então deverá validar a ação de clicar no primeiro produto em recomendados
    Element Should Contain Text    //android.widget.TextView[@text="Ver carrinho"]    Ver carrinho
    Page Should Contain Text    1 item
 
E o usuario deve clicar no botão/texto ver todos marcas
    Sleep    2
    Swipe    ${555}    ${1708}    ${552}    ${404}    1000         #Deslizar para baixo
    Wait Until Page Contains Element    id=test:id/button-test:id/page-Home-header-text
    Click Element                       id=test:id/button-test:id/page-Home-header-text
    Sleep    2

Então será direcionando a tela marcas que será validada  
    # Wait Until Page Contains Element    id=test:id/header-test:id/page-AllBrands-title 
    # Page Should Contain Text     Marcas
    Sleep   2
    Page Should Not Contain Element    id=test:id/button-test:id/page-Home-header-text

E o usuario deve clicar no botão seta "mostar mais" marcas
    Sleep    4
    Swipe    ${483}    ${2057}    ${505}    ${398}    1000         #Deslizar para baixo
    Sleep    2
    Swipe    ${840}    ${1412}    ${16}    ${1417}          #Deslizar para dreita
        
    Click Element     xpath=(//android.view.ViewGroup[@resource-id="test:id/carousel-test:id/page-Home-item"])[4]

    Sleep    2

