# language: pt

Funcionalidade: Fazer Login 

Eu como professor
Quero fazer login na plataforma 


Cenario: Fazer login com sucesso
  Dado que eu tenha um usuario
  |email|cristiancfe@gmail.com|
  |senha|697391               |
  Quando eu fizer login 
  Entao eu verifico se estou logado 
