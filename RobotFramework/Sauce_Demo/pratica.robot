*** Settings ***
Library         SeleniumLibrary
Resource        ./pratica.resource
Test Setup      Abrir a loja
Test Teardown   Close Browser

*** Test Cases ***
Processo de compra na loja Sauce Demo
  Fazer login
  Selecionar produto e colocar no carrinho
  Abrir o carrinho e clicar em Checkout
  Preencher os dados de entrega e clicar em Continue
  Validar valor total da compra e clicar em Finish
  Validar mensagem de compra finalizada