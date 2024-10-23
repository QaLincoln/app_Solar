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
    ...                         app=C:/Users/ldrodrigues/Desktop/Automação_Solar/App_solar/app-production-release .apk
    ...                         udid=emulator-5554
Fechar app
    Run Process    adb    uninstall    ${APP_PACKAGE}           ###Excluir apk
    Close Application


###Login
Dado que o usuario Faça o login
  
    Click Element    id=com.android.permissioncontroller:id/permission_allow_foreground_only_button            ###Modal
   Sleep    2

    Wait Until Element Is Visible    id=com.android.permissioncontroller:id/permission_allow_button    ###Modal allow
    Click Element     id=com.android.permissioncontroller:id/permission_allow_button

    Wait Until Element Is Visible    id=test:id/button-test:id/page-Login
    Click Element    id=test:id/button-test:id/page-Login

    Wait Until Element Is Visible    id=test:id/test:id/input-login-id-input
    Input Text    id=test:id/test:id/input-login-id-input    text=93639644930

    Wait Until Element Is Visible    id=test:id/button-login-id-submit
    Click Element    id=test:id/button-login-id-submit
   
    Wait Until Element Is Visible    id=test:id/input-login-password
    Input Password    id=test:id/input-login-password    text=Senha@123

    Wait Until Element Is Visible    id=test:id/button-login-password-submit
    Click Element    id=test:id/button-login-password-submit
  
    # Wait Until Element Is Visible    id=com.android.permissioncontroller:id/permission_allow_button    ###Modal allow
    # Click Element     id=com.android.permissioncontroller:id/permission_allow_button

    Wait Until Page Contains    text=Compre produtos por categorias        ###Chegar tela home
    Wait Until Page Contains Element    id=test:id/carousel-test:id/page-Home-title
            