FROM ruby:3.2

WORKDIR /app

COPY Gemfile /app/Gemfile
COPY Gemfile.lock /app/Gemfile.lock

RUN bundle lock --add-platform ruby
RUN bundle lock --add-platform x86_64-linux

RUN bundle install
RUN bundle update

COPY . /app

COPY entrypoint.sh /usr/bin/
RUN chmod +x /usr/bin/entrypoint.sh
ENTRYPOINT ["entrypoint.sh"]
EXPOSE 3001

CMD ["bundle", "exec", "rails", "server", "-b", "0.0.0.0"]


