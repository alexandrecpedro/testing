*** Variables ***
${SITE}                 https://www.digitalhouse.com/br
${NAVEGADOR}            Chrome
${FRAME}                xpath=/html/body/iframe[2]
${ACEITAR-COOKIES}      xpath=/html/body/div/div/div[1]/div[1]/div[2]/div[1]/div[2]
${BOTAO-CONHECA}        css=.bg-indigo-600
${SUBTITULO}            css=.text-gray-50
${BOTAO-INSCREVA}       xpath=(//a[contains(text(),'Inscreva-se')])[2]
${PRECO}                css=.text-4xl:nth-child(2)

###### CASO 1 - CURSO DATA ANALYTICS
${DATA-ANALYTICS}       css=.w-full:nth-child(1) > .block .text-center
${TEXTO_SUBTITULO}      Transforme grandes quantidades de dados em insights.
${PAGINA-CONTEM}        manipulação e análise de dados
${VALOR_CURSO}          R$ 9.824,00

###### CASO 2 - CURSO DATA SCIENCE
${DATA-SCIENCE}         css=.w-full:nth-child(2) > .block .text-center
${TEXTO_SUBTITULO2}     Machine learning, inteligência artificial e tudo mais sobre a ciência de dados
${PAGINA-CONTEM2}       processamento e análise de grandes quantidades de dados
${VALOR_CURSO2}         R$ 11.312,00

###### CASO 3 - CURSO DESENVOLVIMENTO MOBILE ANDROID
${DEV-MOBILEANDROID}    css=.w-full:nth-child(3) > .block .text-center
${TEXTO_SUBTITULO3}     Crie seu próprio app do zero em até 5 meses
${PAGINA-CONTEM3}       desenvolver aplicações móveis como um programador profissional
# ${VALOR_CURSO3}         R$ 8.269,00

###### CASO 4 - CURSO DESENVOLVIMENTO MOBILE IOS
${DEV-MOBILEIOS}        css=.w-full:nth-child(4) > .block .text-center
${TEXTO_SUBTITULO4}     Aprenda Swift e crie seu próprio app em até 5 meses
${PAGINA-CONTEM4}       criar apps estáveis, funcionais e atrativos
${VALOR_CURSO4}         R$ 8.269,00

###### CASO 5 - CURSO DESENVOLVIMENTO WEB FULL STACK
${DEV-FULLSTACK}        css=.w-full:nth-child(5) > .block .text-center
${TEXTO_SUBTITULO5}     Aprenda a criar sites e aplicativos web, do começo ao fim
${PAGINA-CONTEM5}       integração do front-end com o back-end
# ${VALOR_CURSO5}         R$ 9.824,00 (mesmo valor do CURSO 1)

###### CASO 6 - CURSO CERTIFIED TECH DEVELOPER
${DEV-CTD}              css=.w-full:nth-child(10) > .block .text-center
${SUBTITULO-CTD}        css=#uJoXSc4pmpxQqCNPVe60oOnXzvTHiJXF > h1 > font > b
${TEXTO_SUBTITULO6}     Crie novas formas de viver o mundo
${PAGINA-CONTEM6}       Venha desenvolver uma carreira que pode mudar o mundo
${ACEITA-COOKIES}       css=#btn-cookie-consent
${CTD-INSCREVA}         xpath=//a[@id='wIc9FaFLQtAaqfERX7toZ8vOupowTGkN']/div
${CAMPO-NOME}           css=#SPxdIrhGPqy1WTAe5qzVoB7MONOoSOZB
${NOME}                 Alex
${CAMPO-SOBRENOME}      css=#DyESSyoTrg8EZUGtiPbmZmuL5y03FlCN
${SOBRENOME}            Tabajara
${CAMPO-EMAIL}          css=#Lbqhh6B7SmT1OnakIxZ0TBmT2o2IxVNq
${EMAIL}                alex@tabajara.com.br
${CAMPO-CELULAR}        css=#zVe3bzxdSNmVk5qFPuJgonal9LqQMlq8
${CELULAR}              11999999999
${CAMPO-ESTADO}         css=#FhKAsNwtv8stLHRSHxLfxd7lkcUMkiM6
${ESTADO}               São Paulo
${COMOSOUBECURSO}       css=#oNRhffVuMHVvyC4GWZzrJrIGLDmweIxT
${OPCAO}                LinkedIn

*** Keywords ***
###### CASO 1 - CURSO DATA ANALYTICS
Abrir o novo site da Digital House Brasil
  #COMANDO                          ${CAMPO}                         ${VALOR} 
  Open Browser                      ${SITE}                          ${NAVEGADOR}
  Maximize Browser Window

Clicar em “Aceitar Cookies”
  Sleep                             5
  Select frame                      ${FRAME}
  Click Element                     ${ACEITAR-COOKIES}
  Unselect frame                    

Clicar em “Conheça nossos cursos”
  Wait and Click                    ${BOTAO-CONHECA}

Selecionar o curso “Data Analytics”
  Wait and Click                    ${DATA-ANALYTICS}

Verificar se o subtitulo do curso corresponde a “Transforme grandes quantidades de dados em insights.”
  Element Should Contain            ${SUBTITULO}                     ${TEXTO_SUBTITULO}

Verificar se a página contém o termo “manipulação e análise de dados”
  Page Should Contain               ${PAGINA-CONTEM}

Clicar em “Inscreva-se”
  Wait and Click                    ${BOTAO-INSCREVA}

Validar se o valor do curso é “R$ 9.824,00”
  Element Should Contain            ${PRECO}                         ${VALOR_CURSO}

###### CASO 2 - CURSO DATA SCIENCE
Selecionar o curso “Data Science”
  Wait and Click                    ${DATA-SCIENCE}

Verificar se o subtitulo do curso corresponde a “Machine learning, inteligência artificial e tudo mais sobre a ciência de dados.”
  Element Should Contain            ${SUBTITULO}                    ${TEXTO_SUBTITULO2}

Verificar se a página contém o termo “processamento e análise de grandes quantidades de dados”
  Page Should Contain               ${PAGINA-CONTEM2}

Validar se o valor do curso é “R$ 11.312,00”
  Element Should Contain            ${PRECO}                         ${VALOR_CURSO2}

###### CASO 3 - CURSO DESENVOLVIMENTO MOBILE ANDROID
Selecionar o curso “Desenvolvimento Mobile Android”
  Wait and Click                    ${DEV-MOBILEANDROID}

Verificar se o subtitulo do curso corresponde a “Crie seu próprio app do zero em até 5 meses”
  Element Should Contain            ${SUBTITULO}                    ${TEXTO_SUBTITULO3}

Verificar se a página contém o termo “desenvolver aplicações móveis como um programador profissional”
  Page Should Contain               ${PAGINA-CONTEM3}

# Validar se o valor do curso é “R$ 8.269,00”
#   Element Should Contain            ${PRECO}                         ${VALOR_CURSO3}

###### CASO 4 - CURSO DESENVOLVIMENTO MOBILE IOS
Selecionar o curso “Desenvolvimento Mobile IOS”
  Wait and Click                    ${DEV-MOBILEIOS}

Verificar se o subtitulo do curso corresponde a “Aprenda Swift e crie seu próprio app em até 5 meses”
  Element Should Contain            ${SUBTITULO}                    ${TEXTO_SUBTITULO4}

Verificar se a página contém o termo “criar apps estáveis, funcionais e atrativos”
  Page Should Contain               ${PAGINA-CONTEM4}

Validar se o valor do curso é “R$ 8.269,00”
  Element Should Contain            ${PRECO}                         ${VALOR_CURSO4}

###### CASO 5 - CURSO DESENVOLVIMENTO WEB FULL STACK
Selecionar o curso “Desenvolvimento Web Full Stack”
  Wait and Click                    ${DEV-FULLSTACK}

Verificar se o subtitulo do curso corresponde a “Aprenda a criar sites e aplicativos web, do começo ao fim.”
  Element Should Contain            ${SUBTITULO}                    ${TEXTO_SUBTITULO5}

Verificar se a página contém o termo “integração do front-end com o back-end”
  Page Should Contain               ${PAGINA-CONTEM5}

###### CASO 6 - CURSO CERTIFIED TECH DEVELOPER
Selecionar o curso “Certified Tech Developer”
  Wait and Click                    ${DEV-CTD}

Verificar se o subtitulo do curso corresponde a “Crie novas formas de viver o mundo”
  Element Should Contain            ${SUBTITULO-CTD}                ${TEXTO_SUBTITULO6}

Verificar se a página contém o termo “Venha desenvolver uma carreira que pode mudar o mundo”
  Page Should Contain               ${PAGINA-CONTEM6}
  Wait and Click                    ${ACEITA-COOKIES}

Clicar em “Inscreva-se” na página do curso “Certified Tech Developer”
  Wait and Click                    ${CTD-INSCREVA}

Preencher os campos do formulário “Faça parte do futuro digital”
  Wait and Input Text               ${CAMPO-NOME}                   ${NOME}
  Wait and Input Text               ${CAMPO-SOBRENOME}              ${SOBRENOME}
  Wait and Input Text               ${CAMPO-EMAIL}                  ${EMAIL}
  Wait and Input Text               ${CAMPO-CELULAR}                ${CELULAR}
  Select From List by Value         ${CAMPO-ESTADO}                 ${ESTADO}
  Select From List by Value         ${COMOSOUBECURSO}               ${OPCAO}

Wait and Click
  #COMANDO                          ${CAMPO}                         ${VALOR}
  [Arguments]                       ${ELEMENTO}
  Wait Until Element is Visible     ${ELEMENTO}
  Wait Until Element is Enabled     ${ELEMENTO}
  Scroll Element Into View          ${ELEMENTO}
  Click Element                     ${ELEMENTO}

Wait and Input Text
  #COMANDO                          ${CAMPO}                         ${VALOR}
  [Arguments]                       ${ELEMENTO}                      ${TEXTO}
  Wait Until Element is Visible     ${ELEMENTO}
  Wait Until Element is Enabled     ${ELEMENTO}
  Input Text                        ${ELEMENTO}                      ${TEXTO}