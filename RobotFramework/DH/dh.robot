######## DISCIPLINA: Testing
######## PROFESSOR:  Tiago Gomes
######## ALUNO:      Alexandre da Costa Pedro

*** Settings ***
Library         SeleniumLibrary
Resource        ./dh.resource
Test Setup      Abrir o novo site da Digital House Brasil
Test Teardown   Close Browser

*** Test Cases ***
Validação das informações do curso de Data Analytics
  Clicar em “Aceitar Cookies”
  Clicar em “Conheça nossos cursos”
  Selecionar o curso “Data Analytics”
  Verificar se o subtitulo do curso corresponde a “Transforme grandes quantidades de dados em insights.”
  Verificar se a página contém o termo “manipulação e análise de dados”
  Clicar em “Inscreva-se”
  Validar se o valor do curso é “R$ 9.824,00”

Validação das informações do curso de Data Science
  Clicar em “Aceitar Cookies”
  Clicar em “Conheça nossos cursos”
  Selecionar o curso “Data Science”
  Verificar se o subtitulo do curso corresponde a “Machine learning, inteligência artificial e tudo mais sobre a ciência de dados.”
  Verificar se a página contém o termo “processamento e análise de grandes quantidades de dados”
  Clicar em “Inscreva-se”
  Validar se o valor do curso é “R$ 11.312,00”

Validação das informações do curso de Desenvolvimento Mobile Android
  Clicar em “Aceitar Cookies”
  Clicar em “Conheça nossos cursos”
  Selecionar o curso “Desenvolvimento Mobile Android”
  Verificar se o subtitulo do curso corresponde a “Crie seu próprio app do zero em até 5 meses”
  Verificar se a página contém o termo “desenvolver aplicações móveis como um programador profissional”
  # Clicar em “Inscreva-se”
  # Validar se o valor do curso é “R$ 8.269,00”

Validação das informações do curso de Desenvolvimento Mobile IOS
  Clicar em “Aceitar Cookies”
  Clicar em “Conheça nossos cursos”
  Selecionar o curso “Desenvolvimento Mobile IOS”
  Verificar se o subtitulo do curso corresponde a “Aprenda Swift e crie seu próprio app em até 5 meses”
  Verificar se a página contém o termo “criar apps estáveis, funcionais e atrativos”
  Clicar em “Inscreva-se”
  Validar se o valor do curso é “R$ 8.269,00”

Validação das informações do curso de Desenvolvimento Web Full Stack
  Clicar em “Aceitar Cookies”
  Clicar em “Conheça nossos cursos”
  Selecionar o curso “Desenvolvimento Web Full Stack”
  Verificar se o subtitulo do curso corresponde a “Aprenda a criar sites e aplicativos web, do começo ao fim.”
  Verificar se a página contém o termo “integração do front-end com o back-end”
  Clicar em “Inscreva-se”
  Validar se o valor do curso é “R$ 9.824,00”

Validação das informações do curso Certified Tech Developer
  Clicar em “Aceitar Cookies”
  Clicar em “Conheça nossos cursos”
  Selecionar o curso “Certified Tech Developer”
  Verificar se o subtitulo do curso corresponde a “Crie novas formas de viver o mundo”
  Verificar se a página contém o termo “Venha desenvolver uma carreira que pode mudar o mundo”
  Clicar em “Inscreva-se” na página do curso “Certified Tech Developer”
  Preencher os campos do formulário “Faça parte do futuro digital”