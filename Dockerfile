FROM ruby:2.3.1

RUN mkdir /snip
WORKDIR /snip
COPY Gemfile /snip
COPY Gemfile.lock /snip

RUN bundle config --global frozen 1

RUN bundle install --without development test
COPY lib /snip/lib
COPY Rakefile /snip

EXPOSE 50052
ENTRYPOINT [ "bundle", "exec"]
CMD ["lib/start_server.rb"]
