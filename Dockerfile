FROM ruby:2.6.3

RUN apt-get update -qq && apt-get install -y nodejs postgresql-client
RUN gem install bundler
RUN mkdir /app
WORKDIR /app
COPY Gemfile /app/Gemfile
COPY Gemfile.lock /app/Gemfile.lock
COPY package.json /app/package.json
RUN bundle install
# COPY yarn.lock /app/yarn.lock
# RUN yarn install --check-files
COPY . /app

# Add a script to be executed every time the container starts.
#COPY entrypoint.sh /usr/bin/
#RUN chmod +x /usr/bin/entrypoint.sh
#ENTRYPOINT ["entrypoint.sh"]
EXPOSE 3000

# Start the main process.
CMD ["rails", "server", "-b", "0.0.0.0"]
