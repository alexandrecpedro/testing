*** Variables ***
${SITE}               http://hurb.com/br
${NAVEGADOR}          Chrome
${BOTAO_COOKIES}      css=#CybotCookiebotDialogBodyLevelButtonLevelOptinAllowAll
${BOTAO_PACOTES}      css=#__next > div.Header_Header__1jiZz > div.hrc-2LOsj > div > div > div.h-rwgu8t > div > div > button:nth-child(2)
${DESTINO}            css=#destination-input
${TXT-DESTINO}        Orlando
${BOTAO_PESQUISAR}    css=#__next > div.Header_Header__1jiZz > div.hrc-2LOsj > div > div > div.h-rr9hdz > button
${OPCAO_DESTINO}      css=#__next > div > main > div.ResultsCardsContainer_ResultsCardContainer__1jtiB > a:nth-child(1) > div.hrc-2MRhP.h-1tms90c
${BOTAO_ESCOLHER}     css=body > div:nth-child(4) > section > div.box-offer-top.box-nopadding.col-sm-6.col-md-6 > div > section.box-offer-main.pull-left > div:nth-child(5) > div.pull-left.first-box > button
${CAMPO_PAIS}         css=#offer-options > div.offer-options--items > div:nth-child(4) > div.row.flex > div.col-xs-12.col-sm-8.col-md-8.flex > div > div.offer-options--box.offer-options--box_title.col-xs-12.col-sm-7.col-md-7.flex > div > span
${PAIS}               Orlando
${BOTAO_COMPRAR}      css=#offer-options > div.offer-options--items > div:nth-child(4) > div.row.flex > div.col-xs-12.col-sm-4.col-md-4.offer-options--box-right.main-package > div > div.col-xs-12.col-sm-7.col-md-7.offer-options--box.offer-options--box-price.flex > div:nth-child(2) > div:nth-child(4) > a
# ${GARANTIR_CONDIC}    css=#dont-leave-banner > div > div > div > div.banner-package_button.dismiss.button
${CONFIGURACAO}       css=body > div.container > div > div.col-md-4.col-sm-4.hidden-xs > div.summary > div:nth-child(7) > div > div > div:nth-child(2) > div.col-xs-8.col-sm-8.col-md-8.text-right
${CONFIG_VIAGEM}      7 Noites\n1 pessoa por pacote
${DATA_INICIO}        css=body > div.container > div > div.col-md-4.col-sm-4.hidden-xs > div.summary > div:nth-child(9) > div > div > div:nth-child(2) > div.col-xs-7.col-sm-7.col-md-7.text-right.booking-info__date-formatted.summary-highlight
${VALOR_DATA_INICIO}  01 Mar 2023
${DATA_FIM}           css=body > div.container > div > div.col-md-4.col-sm-4.hidden-xs > div.summary > div:nth-child(9) > div > div > div:nth-child(3) > div.col-xs-7.col-sm-7.col-md-7.text-right.booking-info__date-formatted.summary-highlight
${VALOR_DATA_FIM}     30 Nov 2023
${BOLETO}             css=#ui-id-1
${PAGADOR}            css=#paymentMethods__bill > section > div:nth-child(2) > div:nth-child(1) > div > input
${NOME-PAGADOR}       Anacleto Bahia
${CPF}                css=#paymentMethods__bill > section > div:nth-child(2) > div:nth-child(2) > div > input
${CPF-PAGADOR}        209.625.240-77
${CELULAR}            css=#paymentMethods__bill > section > div:nth-child(2) > div:nth-child(3) > div > input
${CELULAR-PAGADOR}    11999999999
${CHECKBOX}           css=#cancellation-policy
${CANCELAR}           css=#purchase-confirmation > div:nth-child(1) > div > div
${TXT-CANCELAR}       Cancelamento Grátis!
${BOTAO_BOLETO}       css=#buy-button > button

*** Keywords ***
Abrir o site do Hurb
  #COMANDO                          ${CAMPO}                  ${VALOR} 
  Open Browser                      ${SITE}                   ${NAVEGADOR}
  Maximize Browser Window
  Set Selenium Speed                0.25

Clicar em "Permitir todos os cookies"
  Wait and Click                    ${BOTAO_COOKIES}

Selecionar a opção "Pacotes"
  Wait and Click                    ${BOTAO_PACOTES}

Buscar por alguma cidade turística (Ex: Buenos Aires, Florença, Orlando) e clicar em "Pesquisar"
  Wait and Click                    ${DESTINO}
  Wait and Input Text               ${DESTINO}                ${TXT-DESTINO}
  Wait and Click                    ${BOTAO_PESQUISAR}

Selecionar um pacote de viagem
  Wait and Click                    ${OPCAO_DESTINO}
  
Clicar em "ESCOLHER OPÇÃO"
  Switch Window                     NEW
  Wait and Click                    ${BOTAO_ESCOLHER}

Escolher uma opção de viagem e clicar em "COMPRAR"
  Element Should Contain            ${CAMPO_PAIS}             ${PAIS}
  Wait and Click                    ${BOTAO_COMPRAR}

Validar as informações da "Configuração" da viagem 
  Element Should Contain            ${CONFIGURACAO}           ${CONFIG_VIAGEM}

Validar as informações do período da viagem
  Element Should Contain            ${DATA_INICIO}            ${VALOR_DATA_INICIO}
  Element Should Contain            ${DATA_FIM}               ${VALOR_DATA_FIM}

Selecionar a opção "Boleto parcelado"
  Wait and Click                    ${BOLETO}

Preencher os dados de pagamento
  Wait and Input Text               ${PAGADOR}                ${NOME-PAGADOR}
  Wait and Input Text               ${CPF}                    ${CPF-PAGADOR}
  Wait and Input Text               ${CELULAR}                ${CELULAR-PAGADOR}

Marcar o checkbox "Li e aceito as condições de termos de uso e política de privacidade"
  Select Checkbox                   ${CHECKBOX}

Validar a informação sobre cancelamento grátis
  Element Should Contain            ${CANCELAR}               ${TXT-CANCELAR}

Wait and Click
  #COMANDO                          ${CAMPO}                  ${VALOR}
  [Arguments]                       ${ELEMENTO}
  Wait Until Element is Visible     ${ELEMENTO}
  Wait Until Element is Enabled     ${ELEMENTO}
  Scroll Element Into View          ${ELEMENTO}
  Click Element                     ${ELEMENTO}

Wait and Input Text
  #COMANDO                          ${CAMPO}                  ${VALOR}
  [Arguments]                       ${ELEMENTO}               ${TEXTO}
  Wait Until Element is Visible     ${ELEMENTO}
  Wait Until Element is Enabled     ${ELEMENTO}
  Scroll Element Into View          ${ELEMENTO}
  Input Text                        ${ELEMENTO}               ${TEXTO}