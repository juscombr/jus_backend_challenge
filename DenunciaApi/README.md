# API DE DENUNCIAS

Api de denuncia em um site

## Instruções para executar o projeto:

### Ambiente

* Ruby 2.5.1

* Rails 6.0.3

### Principais dependências usadas no projeto

- ruby
- rails
- rspec
- sqlite3

### Foi usado a ferramenta POSTMAN para testes da api

### Criando banco de dados

- `rails db:create`
- `rails db:migrate`

### Executando projeto

- `rails s`

### Executando testes

- `rspec <caminho_do_teste>`

## Rotas da API

| Verb | URI  Pattern | Controller#Action|
|------|--------------|------------------|
|POST  |  /users(.:format) | users#create |
|GET  |  /denunciations/?name_user=<nome_do_usuario> | denunciations#index |
|POST |  /denunciations(.:format) | denunciations#create|
|GET  |  /denunciations/:id/?name_user=<nome_do_usuario>  | denunciations#show|
|PUT   | /denunciations/:id/?name_user=<nome_do_usuario>  | denunciations#update|
|DELETE| /denunciations/:id/?name_user=<nome_do_usuario> | denunciations#destroy|
|GET  |  /denunciations/?name_user=<nome_do_usuario>&data_inicio=<data_dia> | denunciations#index |
|GET  |  /denunciations/?name_user=<nome_do_usuario>&data_inicio=<data_inicio>&data_fim=<data_do_fim> | denunciations#index |

- obs: As datas devem ser colocadas no formato YY:MM:DD
