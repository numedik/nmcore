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
RUN apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* && \
    truncate -s 0 /var/log/*log

ENV nmid XXXX

ENV NMCORE_DATABASE_USER XXXX
ENV NMCORE_DATABASE_PASSWORD XXXX
ENV NMCORE_DATABASE_HOST 192.168.0.XXX
ENV ES 192.168.0.XXX
ENV SECRET_KEY_BASE XXXX

ENV NMCORE_DB_NAME nmcore_$nmid
ENV WEB_CONCURRENCY 2
ENV RAILS_ENV production
#ENV GEM_HOME /ruby_gems/2.4.8
#ENV PATH /ruby_gems/2.4.8/bin:$PATH


RUN su -c 'mkdir -p /home/app/{bundle,bundle-cache,webapp}'

ENV APP_HOME /home/app/webapp
WORKDIR $APP_HOME


RUN mkdir -p log tmp public

# set permissions
RUN chown --recursive root log tmp public

ENV BUNDLE_GEMFILE=$APP_HOME/Gemfile \
  BUNDLE_JOBS=4 \
  BUNDLE_PATH=/ruby_gems/2.4.8

ADD Gemfile* $APP_HOME/
RUN bundle install
ADD . $APP_HOME


RUN bundle exec rake assets:precompile --trace

RUN bundle exec rake db:create && RAILS_ENV=production bundle exec rake db:schema:load && RAILS_ENV=production bundle exec rake db:seed

EXPOSE 3000
#CMD ["rails","server","-b","0.0.0.0","-e","production"]
#CMD ["unicorn_rails","-c","config/unicorn.rb","-E","production"]
CMD ./script/start
