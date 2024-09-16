*** Settings ***
Library        AppiumLibrary
Library        Process



*** Variables ***

${APP_PACKAGE}         br.com.solarbr.solarapp 


*** Keywords ***
Open App_solar
    Open Application            http://127.0.0.1:4723/wd/hub
    ...                         automationName=Uiautomator2
    ...                         platformName=Android
    ...                         deviceName=teste
    ...                         app=C:/Users/ldrodrigues/Desktop/Automação_Solar/App_solar/app-production-release.apk
    ...                         udid=emulator-5554
Fechar app
    Run Process    adb    uninstall    ${APP_PACKAGE}           ###Excluir apk
    Close Application

###Login
Dado que o usuario insira cpf/cnpj valido
  
    Click Element    id=com.android.permissioncontroller:id/permission_allow_foreground_only_button            ###Modal
    Wait Until Element Is Visible    id=test:id/button-test:id/page-Login
    Click Element    id=test:id/button-test:id/page-Login
    Wait Until Element Is Visible    id=test:id/test:id/input-login-id-input
    Input Text    id=test:id/test:id/input-login-id-input    text=93639644930
    Wait Until Element Is Visible    id=test:id/button-login-id-submit
    Click Element    id=test:id/button-login-id-submit

Quando o usuario insira senha valida    
    Wait Until Element Is Visible    id=test:id/input-login-password
    Input Password    id=test:id/input-login-password    text=Senha@123

E click no botão entrar
    Wait Until Element Is Visible    id=test:id/button-login-password-submit
    Click Element    id=test:id/button-login-password-submit

Então clicar no botão allow do modal e entrar na tela home   
    Wait Until Element Is Visible    id=com.android.permissioncontroller:id/permission_allow_button    ###Modal allow
    Click Element     id=com.android.permissioncontroller:id/permission_allow_button
        