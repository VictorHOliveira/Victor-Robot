# AQUI É ONDE DECLARAMOS TODAS AS NOSSAS CONTROLLERS, CONFIGS E TUDO QUE O PROJETO VAI UTILIZAR #
*** Settings ***
# BIBLIOTECAS
Library  AppiumLibrary

# resources/utils
Variables  ${ROOT}/resources/utils/config_helper.py

# resources/pages/shared
Resource  ${ROOT}/resources/pages/shared/hook.robot
Resource  ${ROOT}/resources/pages/shared/setups_teardowns.robot

# resources/data
Resource  ${ROOT}/resources/data/credentials.robot