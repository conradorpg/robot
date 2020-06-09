*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${BROWSER}        chrome
${URL}            http://tutorialsninja.com/demo/

*** Keywords ***

Abrir BROWSER
    Open BROWSER                   about:blank     ${BROWSER}

Fechar BROWSER
    Close BROWSER

# -----------------------------------------------------#

Acessar a página home do site
    Go to                          ${URL}
    Title Should Be                Your Store 

Digitar o nome "${PESQUISA_ITEM}" no campo de pesquisa
    Input Text                    name=search    ${PESQUISA_ITEM}

Clicar no botão pesquisar
    Click Element                 xpath=//*[@id="search"]/span/button   

Conferir se o produto ${PESQUISA_ITEM} foi exibido
    Wait Until Element Is Visible    xpath=//*[@id="content"]/h1
    Title Should Be                  Search - Samsung Galaxy
    Page Should Contain Image        xpath=//img[@src="http://tutorialsninja.com/demo/image/cache/catalog/demo/samsung_tab_1-228x228.jpg"]
    Page Should Contain Link         xpath=//a[text()=${PESQUISA_ITEM}]

Conferir se a mensagem de erro "${MENSAGEM_ERRO}" foi exibida
    Wait Until Element Is Visible    xpath=//*[@id="content"]/p[2]
    Element Text Should Be           xpath=//*[@id="content"]/p[2]    ${MENSAGEM_ERRO}