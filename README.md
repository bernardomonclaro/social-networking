# Rede Social em Ruby on Rails

Este é um projeto de uma rede social desenvolvido com **Ruby on Rails**, que permite aos usuários interagir entre si por meio de postagens, curtidas, comentários e conexões de amizade. O sistema inclui funcionalidades completas de autenticação, perfil, feed personalizado e testes automatizados.

## ✨ Funcionalidades

* 🔐 Autenticação de usuários com [Devise](https://github.com/heartcombo/devise)
* 👤 Criação e edição de perfil de usuário
* ➕ Seguir e deixar de seguir outros usuários
* 📝 Criar, editar e excluir posts
* ❤️ Curtir e descurtir posts
* 💬 Comentar em posts
* 📰 Visualizar posts de amigos na timeline (feed)
* ✅ Testes automatizados com RSpec e FactoryBot

## 🛠️ Tecnologias Utilizadas

* **Ruby on Rails** — Framework principal do projeto
* **Ruby** — Linguagem utilizada no backend e no frontend (views com ERB)
* **Devise** — Autenticação de usuários
* **RSpec** — Testes automatizados
* **FactoryBot** — Fábricas para testes

## 🚀 Como Executar o Projeto

1. Clone o repositório:

   ```bash
   git clone https://github.com/seu-usuario/seu-repositorio.git
   cd seu-repositorio
   ```

2. Instale as dependências:

   ```bash
   bundle install
   yarn install # se estiver usando Webpacker
   ```

3. Configure o banco de dados:

   ```bash
   rails db:create db:migrate db:seed
   ```

4. Rode a aplicação:

   ```bash
   rails server
   ```

5. Acesse em [http://localhost:3000](http://localhost:3000)

## 🧪 Rodando os Testes

Para rodar os testes automatizados:

```bash
bundle exec rspec
```

## 📁 Estrutura do Projeto

* `app/models` — Modelos da aplicação
* `app/controllers` — Controllers com a lógica de negócios
* `app/views` — Templates renderizados com ERB
* `spec/` — Testes automatizados com RSpec

## 🙌 Contribuições

Sinta-se à vontade para abrir issues e pull requests para contribuir com melhorias ou correções.

## 📄 Licença

Este projeto está sob a licença MIT. Veja o arquivo `LICENSE` para mais detalhes.

