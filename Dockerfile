FROM ruby:3.2

RUN mkdir /app

WORKDIR /app

COPY . /app

RUN gem update --system  ${GEMS_VERSION} && bundle install

COPY entrypoint.sh /usr/bin
ENTRYPOINT ["entrypoint.sh"]
EXPOSE 3000
CMD ["rails", "server", "-b", "0.0.0.0"]
