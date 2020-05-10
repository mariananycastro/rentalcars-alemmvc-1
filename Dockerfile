FROM ruby:2.6.6
     
RUN curl -sL https://deb.nodesource.com/setup_13.x | bash -
RUN apt-get update && apt-get install -y nodejs
RUN gem install bundler --version 2.1.4
RUN npm install -g yarn

WORKDIR /rentalcars-alemmvc
ADD . /rentalcars-alemmvc
RUN bundle install

# dentro do container - bin/setup