FROM ruby:2.5.1

RUN mkdir /senderos-un-soap
WORKDIR /senderos-un-soap

ADD Gemfile /senderos-un-soap/Gemfile
ADD Gemfile.lock /senderos-un-soap/Gemfile.lock

RUN bundle install

ADD . /senderos_un-soap