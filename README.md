# README

* Configuração :
  - SO : Linux Ubuntu 18.4
  - Ruby version : 2.6.3
  - Rails version : 5.0
  - sqlite3 version : 1.3.13

* Deployment instructions
Dentro da pasta do projeto:
  - executar:
      [i]bundle install[i]

As migration estão criadas
  - executar:
      rails db:migrate

  Será criado duas tabelas
  1. Tarefas: armazena a descrição da tarefa e um valor boolean para verificar se ela está ou não concluída.
  2. Eventos: armazena o tipo (Congratulations ou Shame) e dados para armazenar o json.

* Utilização

  - Para adicionar uma tarefa basta clicar no botão Adicionar tarefa.

    É possível fazer ações:
      - Mostrar detalhes da tarefa.
      - Editar uma tarefa e nessa etapa é que podemos marcar como concluída ou não.
      - Excluir uma tarefa.
