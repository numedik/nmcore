FROM ruby:2.2.3-slim
MAINTAINER NuMedik <dev@numedik.com>

RUN apt-get update -qq \
	&& apt-get install -y build-essential \
	&& apt-get install -y \
		libmysqlclient-dev \
		nodejs \
		git-core \
		curl \
		libssl-dev \
		libreadline-dev \
		libyaml-dev \
		libxml2-dev \
		libxslt1-dev \
		libcurl4-openssl-dev  --no-install-recommends

# Clean up APT when done.
RUN apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

ENV nmid XXXX 

ENV NMCORE_DATABASE_USER XXXX
ENV NMCORE_DATABASE_PASSWORD XXXX
ENV NMCORE_DATABASE_HOST 192.168.0.XXX
ENV ES 192.168.0.XXX
ENV SECRET_KEY_BASE XXXX

ENV NMCORE_DB_NAME nmcore_$nmid
ENV WEB_CONCURRENCY 2
ENV RAILS_ENV production

RUN su -c 'mkdir -p /home/app/{bundle,bundle-cache,webapp}'

WORKDIR /home/app/webapp

# Install bundle (assuming bundle packaged to vendor/cache)

COPY / /home/app/webapp
RUN bundle install
RUN mkdir -p log tmp public

# set permissions
RUN chown --recursive app log tmp public


# set permissions
RUN chown --recursive app log tmp public

RUN bundle exec rake assets:precompile --trace

RUN bundle exec rake db:create && RAILS_ENV=production bundle exec rake db:schema:load && RAILS_ENV=production bundle exec rake db:seed

EXPOSE 3000 
#CMD ["rails","server","-b","0.0.0.0","-e","production"]
CMD ["unicorn_rails","-c","config/unicorn.rb","-E","production"]

