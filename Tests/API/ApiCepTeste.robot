*** Settings ***
Resource        ../../Config/Config.robot

*** Test Cases ***
Cenário 01: Enviando CEP válidos
    [Tags]      API
    Dado que eu faço uma request com dados válidos  81670250
    Então eu válido que o status code   200