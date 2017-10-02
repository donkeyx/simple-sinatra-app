FROM ruby:2.3.5-alpine3.4
EXPOSE 80

WORKDIR /app

COPY . /app
RUN bundle install --path vendor/bundle


ENTRYPOINT bundle exec rackup -p80 --host 0.0.0.0 && bash
