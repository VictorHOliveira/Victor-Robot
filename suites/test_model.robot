*** Settings ***
Documentation  Em suites é onde ficam os cenários de teste e este é apenas um exemplo.
Resource  ${EXECDIR}/resources/main.robot

*** Test Cases ***
TC-000: Teste
    [Tags]  TC000  Test
    Pass Execution  TESTE DE EXECUÇÃO

TC-001: Teste
    [Tags]  TC001  Test
    Pass Execution  TESTE DE EXECUÇÃO