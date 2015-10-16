FROM ruby:2.2

# Enforce up-to-date Gemfile.lock
RUN bundle config --global frozen 1

RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

COPY Gemfile /usr/src/app/
COPY Gemfile.lock /usr/src/app/
RUN bundle install

EXPOSE 1080 1025
CMD ["mailcatcher", "--ip=0.0.0.0", "--foreground"]
