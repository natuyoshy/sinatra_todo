FROM ruby:2.6.3-alpine
RUN apk --no-cache add \
    curl \
    curl-dev \
    nodejs \
    libstdc++ \
    libxml2-dev \
    libxslt-dev \
    linux-headers \
    mysql-client \
    mysql-dev \
    pcre \
    ruby-dev \
    ruby-json \
    tzdata \
    yaml \
    yaml-dev \
    bash \
    build-base \
    zlib-dev
WORKDIR /app
COPY src/Gemfile /app
RUN gem install bundler
RUN bundle install
