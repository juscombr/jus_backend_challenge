# [Jus.com.br](https://jus.com.br) - Teste técnico para desenvolvedor back-end júnior

Este teste faz parte do nosso processo de contratação no Jus para as vagas de back-end. Deve demorar entre 2 e 4 dias, dependendo da sua experiência. Espero que você se divirta tanto quanto nós desenvolvendo este teste!


## Resumo

Esse teste consiste em desenvolver uma API para envio de denúncia em publicações feitas por um usuário do site.


## Especificações

  - Uma denúncia só pode ser enviada por um usuário.
  - Apenas usuários que são administradores tem acesso ao conteúdo da denúncia.
  - Uma denúncia pode ser marcada como:
    - Lida;
    - Arquivada;
    - Deletada.

A API de denúncias deve possuir as operações básicas: criar, exibir e atualizar e deletar uma denúncia, observando que a operação de deletar não pode excluir uma denúncia do banco de dados.


## Listagem de denúncias — Administração

A listagem de denúncias deve retornar apenas 10 registro por padrão, caso não seja especificada uma quantidade diferente e é preciso conter os seguintes dados:
  - Resumo (título) sobre a denúncia;
  - Tipo:
    - Abuso;
    - Plágio;
    - _etc_ (No mínimo três tipos por padrão);
    - Outro;
  - Data e hora que a denúncia foi envida.

> Nota: Toda nomenclatura usada para definir os campos (colunas), como: descrição, tipo, resumo, _etc_. São apenas sugestões, você pode nomear como achar melhor, porém, deve seguir com a proposta apresentada.


## Detalhes da denúncia

Ao exibir os detalhes de uma denúncia o seguinte conteúdo deve ser retornado:
  - Descrição completa da denúncia;
  - Link que leva direto para publicação ou Post que foi denunciado;
  - Nome do autor da denúncia;
  - Data e hora.

A listagem deve mostrar apenas denúncias que ainda não foram lidas.


## Detalhes técnicos

  - A aplicação deve ser escrita em Ruby, Sinatra, Ruby on Rails ou Hanami;
  - É esperado que a aplicação contenha testes, você é livre para escolher a abordagem de teste que quiser;
  - É preciso ter um README com instruções claras de uso;
  - Sinta-se a vontade para usar qualquer recurso que possa ajuda-lo.

> Lembre-se de ter um histórico de commits estruturado e limpo que reflita sua capacidade de separar o projeto em partes menores, afim de facilitar o processo de revisão.


## ⭐️ Bonus:

Não é obrigatório, mas irá somar mais pontos a sua entrega.


## Filtro de denúncias

  - Deve ser possível filtrar denúncias de uma data específica.
  _Ex. Todas as denúncias enviadas no dia 13 de janeiro 2021_

  - Deve ser possível filtrar denuncias por um determinado período.
  _Ex. Todas as denúncias enviadas entre 01 de janeiro 2021 até 13 de janeiro 2021_

Para ambos os casos a API deve uma listagem com os mesmos atributos da lista de denúncias.


## Submissão

Fork este repositório e abra uma pull request. Vamos analisar sua submissão e entrar em contato com você para falar sobre o seu código!

Contate-nos em [tecnologia@jus.com.br](mailto:tecnologia@jus.com.br) se precisar de mais detalhes.