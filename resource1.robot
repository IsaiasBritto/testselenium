*** Settings ***
Library    SeleniumLibrary
Resource    resource1.robot

*** Variables ***
${BROWSER}    chrome
${URL}        https://www.amazon.com.br/

*** Keywords ***
Acessar a página da amazon
    Open Browser    url=${URL}    browser=${BROWSER}
    Maximize Browser Window
    Set Selenium Speed    0.5s

Pesquisar por celulares
    Input Text    locator=id:twotabsearchtextbox    text=celulares
    Click Element    locator=id:nav-search-submit-button
    
Validar o resultado
    Wait Until Page Contains     text=Resultados