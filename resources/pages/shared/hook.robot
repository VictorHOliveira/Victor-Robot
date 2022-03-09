*** Settings ***
Documentation  AQUI É ONDE VOCÊ VAI CONFIGURAR PARA ABRIR A APLICAÇÃO, TEM MUITO MATERIAL ENSINANDO
...            DA UMA OLHADA EM COMO FAZ PARA ABRIR SEM UTILIZAR O BROWSERSTACK QUE USAVAMOS NA PEPSICO
...            MAS CASO FOR USAR O BS ME AVISA QUE TE MANDO AS CONFIGS.
Resource  ${ROOT}/resources/main.robot

*** Keywords ***
### SESSION CONFIGS ###
Open local session
    [Documentation]  Start the session of test on the local device, informing OS, Appium Server,
    ...              the device name and the app name present in the file "app"    
    Open Application  
    ...  app=
    ...  deviceName=
    ...  automationName=
    ...  platformName=
    ...  platformVersion=
    ...  appPackage=
    ...  appActivity=
    ...  autoGrantPermissions=
    ...  newCommandTimeout=
    ...  name=
    ...  browserstack.debug=

Close the Session
    [Documentation]  Close the session of test
    Sleep  3
    Close Application