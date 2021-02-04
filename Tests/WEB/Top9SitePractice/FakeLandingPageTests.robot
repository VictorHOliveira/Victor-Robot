*** Settings ***
Resource    ../../../Config/Config.robot

*** Test Cases ***
Cenário 01: Validação da Página Inicial
    Dado que eu acessei a URL para iniciar o teste   https://ultimateqa.com/fake-landing-page
    Então eu realizo a validação de que todos os textos estão corretos
