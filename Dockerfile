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

# Creamos la carpeta que estara enlazada con el volume del archivo docker.compose
RUN cd /home && mkdir fundamentals
