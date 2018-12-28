FROM ruby:2.6-alpine

MAINTAINER vkill <vkill.net@gmail.com>

RUN set -ex \
  \
  && bundle config --global frozen 1 \
  && bundle config mirror.https://rubygems.org https://gems.ruby-china.com \
  \
  && sed -i 's!dl-cdn.alpinelinux.org!mirrors.aliyun.com!' /etc/apk/repositories \
  \
  && apk add --no-cache --virtual .builddeps \
    build-base \
    less \
  \
  && apk add --no-cache --virtual .rundeps \
    postgresql-dev \
    mysql-dev \
    sqlite-dev \
  \
  && echo

RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

COPY Gemfile /usr/src/app/
COPY Gemfile.lock /usr/src/app/

RUN bundle install

RUN set -ex \
  \
  && apk del .builddeps

COPY . /usr/src/app

CMD ["rake", "db:migrate"]
