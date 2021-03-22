*** Settings ***
Resource        ../../Config/Config.robot

*** Variables ***
${BodyRequest}

*** Keywords ***
Dado que eu faço uma request com dados válidos
    [Arguments]         ${CEP}
    GET                 https://viacep.com.br/ws/${CEP}/json/
    Output              request
    Output              response