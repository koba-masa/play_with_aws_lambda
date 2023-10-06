FROM ruby:3.2.2

RUN apt-get update -qq && apt-get install -y build-essential libpq-dev vim

RUN mkdir /app
WORKDIR /app

COPY ruby/Gemfile /app/Gemfile
COPY ruby/Gemfile.lock /app/Gemfile.lock
RUN bundle install
