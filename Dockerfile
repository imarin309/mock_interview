FROM ruby:3.3.0

RUN apt-get update -qq && apt-get install -y nodejs yarn

WORKDIR /app
COPY . /app

RUN gem install bundler
RUN bundle install

# RUN bundle exec rake assets:precompile

EXPOSE 3000

ENV RAILS_ENV="development" 

CMD ["rails", "server", "-b", "0.0.0.0"]
# CMD ["ls"]