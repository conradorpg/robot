*** Settings ***
Resource        ../resource/resource.robot
Test Setup      Abrir BROWSER
Test Teardown   Fechar BROWSER

*** Test Cases ***
Caso de Teste 01: Pesquisar produto existente
    Acessar a página home do site
    Digitar o nome "Samsung Galaxy" no campo de pesquisa
    Clicar no botão pesquisar
    Conferir se o produto "Samsung Galaxy Tab 10.1" foi exibido

Caso de Teste 02: Pesquisar produto inexistente
    Acessar a página home do site
    Digitar o nome "BlaBlaBla" no campo de pesquisa
    Clicar no botão pesquisar
    Conferir se a mensagem de erro "There is no product that matches the search criteria." foi exibida

