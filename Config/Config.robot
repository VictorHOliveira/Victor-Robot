*** Settings ***
Library     Selenium2Library
Library     REST

Resource    ../Controller/API/ApiCepController.robot

*** Keywords ***
Abrir navegador
    [Arguments]                 ${URL}
    Open BROWSER                ${URL}      chrome      options=add_experimental_option('excludeSwitches',['enable-logging'])
    Maximize Browser Window
    Set Selenium Speed          1 seconds

Fechar navegador
    Close BROWSER


Então eu válido que o status code
    [Arguments]         ${StatusCode}
    Integer             response status     ${StatusCode}
    Output              response