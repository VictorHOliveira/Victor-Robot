# AQUI É ONDE DECLARAMOS TODAS AS NOSSAS CONTROLLERS, CONFIGS E TUDO QUE O PROJETO VAI UTILIZAR #
*** Settings ***
# BIBLIOTECAS
Library  SeleniumLibrary


# resources/pages/shared
Resource  ${EXECDIR}/resources/pages/shared/hook.robot
Resource  ${EXECDIR}/resources/pages/shared/setups_teardowns.robot

# resources/data
Resource  ${EXECDIR}/resources/data/credentials.robot