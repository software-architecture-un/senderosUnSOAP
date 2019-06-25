FROM ruby:2.5.1

RUN mkdir /senderos_un-soap
WORKDIR /senderos_un-soap

ADD Gemfile /senderos_un-soap/Gemfile
ADD Gemfile.lock /senderos_un-soap/Gemfile.lock

RUN bundle install

ADD . /senderos_un-soap