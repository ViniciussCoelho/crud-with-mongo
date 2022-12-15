# SOBRE
É o mesmo CRUD utilizado no repo https://github.com/ViniciussCoelho/crud-market-stock/, porém utilizando mongodb.

# TECNOLOGIAS

* Ruby
* Ruby on Rails
* MongoDB
* Boostrap
* jQuery

# REQUISITOS

* Obs: guia de instalação para o Linux, altamente recomendado executar o app no LINUX.

* Primeiro de tudo, será necessário instalar o git, ruby e o mongodb
  * Git:
    1. Abra um terminal e digite: `sudo apt-get update`
    2. Depois de executado, digite o comando: `sudo apt-get install git`
    3. Por fim, configure as suas credenciais que usa no github:
      * `git config --global user.name "Seu nome"`
      
      * `git config --global user.email "exemplo@seuemail.com.br"`
  * Ruby:
    1. Para instalar o ruby na versão correta, utilizaremos o rbenv, que é um controlador de versões do ruby.
    * Digite os seguintes comandos no terminal:
    2. `sudo apt install git curl libssl-dev libreadline-dev zlib1g-dev autoconf bison build-essential libyaml-dev libreadline-dev libncurses5-dev libffi-dev libgdbm-dev`
    3. `curl -fsSL https://github.com/rbenv/rbenv-installer/raw/HEAD/bin/rbenv-installer | bash`
    4. `echo 'export PATH="$HOME/.rbenv/bin:$PATH"' >> ~/.bashrc`
    5. `echo 'eval "$(rbenv init -)"' >> ~/.bashrc`
    6. `source ~/.bashrc`
    7. Agora o rbenv está instalado, então podemos digitar no terminal: `rbenv install 2.7.6` 
    8. Pronto, já está com o ruby instalado.
    
    *Obs: em caso de dúvidas quanto a instação do rbenv, consultar: https://www.digitalocean.com/community/tutorials/how-to-install-ruby-on-rails-with-rbenv-on-ubuntu-20-04
  
  * MongoDB:
    - Essa é a documentação que usei para instalar o mongodb no Linux 22.04.1 LTS: https://www.mongodb.com/docs/manual/tutorial/install-mongodb-on-ubuntu/

# COMO EXECUTAR
  1. Caso vá utilizar o git para baixar o projeto abra um terminal onde quer que o projeto fique e digite: `git clone https://github.com/ViniciussCoelho/crud-with-mongo.git`
  2. Acesse a pasta do projeto: `cd crud-market-stock/`
  3. Certifique-se de que o serviço do mongodb está iniciado, na minha máquina para inicializar preciso rodar `sudo service mongod start`
  4. Agora digite `bundle install` para instalar todas as dependencias da aplicação
  4. Digite `rails db:seed` para criar no banco os registros que criei de exemplo
  5. Agora, digite `rails s` para iniciar a aplicação.
  5. Nessa nova aba, digite `sudo make bash` para acessarmos o terminal dentro do container
  6. Digite `rails db:create` para criar o banco de dados, e `rails db:migrate` para criar as tabelas do banco. Por fim, utilize `rails db:seed` para popular o banco.
  7. Agora, podemos finalmente acessar a aplicação no navegador que preferir pelo link localhost:3000
   
