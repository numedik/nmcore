source 'https://rubygems.org'

gem 'rails', '4.2.1'

gem 'mysql2', '~> 0.3.20'
# Use CoffeeScript for .coffee assets and views
gem 'coffee-rails', '~> 4.1.0'
# See https://github.com/rails/execjs#readme for more supported runtimes
gem 'therubyracer', platforms: :ruby

# Use jquery as the JavaScript library
gem 'jquery-rails'
# Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
gem 'turbolinks'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.0'

# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use Capistrano for deployment
#gem 'capistrano-rails', group: :development

# Oauth2 Provider <-- MANDATORY
gem 'doorkeeper'
# in collaboration with <-- MANDATORY
gem 'devise'
gem 'rack-cors'

# Use oauth2 client
gem 'oauth2'

group :development, :test do
  gem 'better_errors'
  gem 'binding_of_caller'
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
  # bundle exec rake doc:rails generates the API under doc/api.
  gem 'sdoc', '~> 0.4.0', group: :doc
end

group :production do
  gem 'unicorn'
  gem 'unicorn-worker-killer'
  gem 'dalli'
end

gem 'bootstrap-sass', '>= 3.4.1'
gem 'sass-rails', '>= 3.2'
gem 'select2-rails'

# ElasticSearch
gem 'tire'
gem 'get_process_mem'
gem 'rack-cache'
