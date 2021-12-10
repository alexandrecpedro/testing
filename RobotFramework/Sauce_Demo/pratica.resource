*** Variables ***
${SITE}             https://saucedemo.com
${NAVEGADOR}        Chrome
${CAMPO_USUARIO}    css=#user-name
${CAMPO_SENHA}      css=#password
${BOTAO_LOGIN}      css=#login-button
${USUARIO}          standard_user
${SENHA}            secret_sauce
${PRODUTO}          css=#item_4_title_link > div
${ADICIONAR}        css=#add-to-cart-sauce-labs-backpack
${CARRINHO}         css=#shopping_cart_container > a
${CHECKOUT}         css=#checkout
${CAMPO_NOME}       css=#first-name
${CAMPO_SOBRENOME}  css=#last-name
${CAMPO_CEP}        css=#postal-code
${BOTAO_CONTINUE}   css=#continue
${NOME}             Alex
${SOBRENOME}        Peter
${CEP}              00000
${TOTAL}            css=#checkout_summary_container > div > div.summary_info > div.summary_total_label
${TOTAL_VALOR}      $32.39
${BOTAO_FINISH}     css=#finish
${CONFIRMACAO}      css=#checkout_complete_container > h2
${MENSAGEM}         THANK YOU FOR YOUR ORDER

*** Keywords ***
Abrir a loja
  #COMANDO                          ${CAMPO}                  ${VALOR} 
  Open Browser                      ${SITE}                   ${NAVEGADOR}
  Maximize Browser Window
  Set Selenium Speed                0.25

Fazer login
  Wait and Input Text               ${CAMPO_USUARIO}          ${USUARIO}
  Wait and Input Text               ${CAMPO_SENHA}            ${SENHA}
  Wait and Click                    ${BOTAO_LOGIN}

Selecionar produto e colocar no carrinho
  Wait and Click                    ${PRODUTO}
  Wait and Click                    ${ADICIONAR}

Abrir o carrinho e clicar em Checkout
  Wait and Click                    ${CARRINHO}
  Wait and Click                    ${CHECKOUT}

Preencher os dados de entrega e clicar em Continue
  Wait and Input Text               ${CAMPO_NOME}             ${NOME}
  Wait and Input Text               ${CAMPO_SOBRENOME}        ${SOBRENOME}
  Wait and Input Text               ${CAMPO_CEP}              ${CEP}
  Wait and Click                    ${BOTAO_CONTINUE}

Validar valor total da compra e clicar em Finish
  Element Should Contain            ${TOTAL}                  ${TOTAL_VALOR}
  Wait and Click                    ${BOTAO_FINISH}

Validar mensagem de compra finalizada
  Element Should Contain            ${CONFIRMACAO}            ${MENSAGEM}

Wait and Click
  [Arguments]                       ${ELEMENTO}
  #COMANDO                          ${CAMPO}                  TEMPO
  Wait Until Element is Visible     ${ELEMENTO}
  Wait Until Element is Enabled     ${ELEMENTO}
  Scroll Element Into View          ${ELEMENTO}
  Click Element                     ${ELEMENTO}

Wait and Input Text
  [Arguments]                       ${ELEMENTO}               ${TEXTO}
  #COMANDO                          ${CAMPO}                  TEMPO
  Wait Until Element is Visible     ${ELEMENTO}
  Wait Until Element is Enabled     ${ELEMENTO}
  Scroll Element Into View          ${ELEMENTO}
  Input Text                        ${ELEMENTO}               ${TEXTO}