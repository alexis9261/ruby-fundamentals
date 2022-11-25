FROM ruby:3

RUN apt-get update && apt-get install \
    nodejs \
    curl \
    sqlite3 \
    yarn -y

# Instalamos bundler, manejador de paquetes de ruby
RUN gem install bundler

# Instalamos ruby on rails en su ultima version
RUN gem install rails
# Para instalar otra version de ruby on rails
# RUN gem install rails -v 6.4.5

# Instalamos las librerias para ruby2d <= Necesaria para manejar planos 2d para el juego
RUN apt-get install libsdl2-dev libsdl2-image-dev libsdl2-mixer-dev libsdl2-ttf-dev -y

# Instalamos rubocop como listener para nuestro codigo ruby
RUN gem install rubocop

# Ejecuta la instalacion de las dependencias que se encuentran en el Archivo Gemfile
RUN bundler install

# Creamos la carpeta que estara enlazada con el volume del archivo docker.compose
RUN cd /home && mkdir app
