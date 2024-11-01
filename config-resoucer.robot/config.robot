*** Settings ***

Library        AppiumLibrary
Library        Process



*** Variables ***

${APP_PACKAGE}           br.com.solarbr.solarapp 
${BUTTON_ENTRAR}         xpath=//android.widget.TextView[@text="Entrar"]
${CAMPO_CPF/CNPJ}        xpath=//android.widget.EditText[@text="Seu CPF/CNPJ aqui"]
${CAMPO_SENHA}           Xpath=//android.widget.EditText[@text="Sua senha aqui"]


*** Keywords ***
Open App_solar
    Open Application            http://127.0.0.1:4723/wd/hub
    ...                         automationName=Uiautomator2
    ...                         platformName=Android
    ...                         deviceName=teste
    ...                         app=C:/Users/ldrodrigues/Desktop/Automação_Solar/App_solar/qa_teste_2.4.6.apk
    ...                         udid=emulator-5554
Fechar app
    Run Process    adb    uninstall    ${APP_PACKAGE}           ###Excluir apk
    Close Application


###Login
Dado que o usuario Faça o login
    Wait Until Element Is Visible    id=com.android.permissioncontroller:id/permission_allow_foreground_only_button
  
    Click Element    id=com.android.permissioncontroller:id/permission_allow_foreground_only_button            ###Modal
   Sleep    2

    Wait Until Element Is Visible    id=com.android.permissioncontroller:id/permission_allow_button    ###Modal allow
    Click Element     id=com.android.permissioncontroller:id/permission_allow_button

    Wait Until Element Is Visible    id=test:id/button-test:id/page-Login
    Click Element    id=test:id/button-test:id/page-Login

    Wait Until Element Is Visible    ${CAMPO_CPF/CNPJ}
    Input Password    ${CAMPO_CPF/CNPJ}        text=75863121840 

    Wait Until Element Is Visible    ${BUTTON_ENTRAR}
    Click Element    ${BUTTON_ENTRAR}
   
    Wait Until Element Is Visible    ${CAMPO_SENHA}
    Input Password    ${CAMPO_SENHA}   text=Senha@123

    Wait Until Element Is Visible    ${BUTTON_ENTRAR}
    Click Element    ${BUTTON_ENTRAR}
      
    Wait Until Page Contains            Buscar no SOLAR +        timeout=10 
    Wait Until Page Contains Element    id=test:id/input-app-header    ##Buscar no SOLAR +        ###Chegar tela home
    
            