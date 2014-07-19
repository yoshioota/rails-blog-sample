source 'https://rubygems.org'

ruby '2.1.2'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '4.1.4'

# Use postgresql as the database for Active Record
gem 'pg'

# Use SCSS for stylesheets
gem 'sass-rails', '~> 4.0.3'

# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'

# Use CoffeeScript for .js.coffee assets and views
gem 'coffee-rails', '~> 4.0.0'

# See https://github.com/sstephenson/execjs#readme for more supported runtimes
# gem 'therubyracer',  platforms: :ruby

# Use jquery as the JavaScript library
gem 'jquery-rails'

# Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
gem 'turbolinks'

# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.0'

# bundle exec rake doc:rails generates the API under doc/api.
gem 'sdoc', '~> 0.4.0',          group: :doc

# Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
gem 'spring',        group: :development

# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use unicorn as the app server
# gem 'unicorn'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

# Use debugger
# gem 'debugger', group: [:development, :test]

gem 'haml-rails'

gem 'devise'
gem 'omniauth'
gem 'omniauth-twitter'
gem 'omniauth-github'
gem 'omniauth-facebook'

gem 'bootstrap-sass'
gem 'autoprefixer-rails'
gem 'compass-rails'
gem 'font-awesome-rails'
gem 'simple_form'
gem 'kaminari'


# Server
gem 'puma'
gem 'rack-rewrite'

group :development do
  # Debugs
  gem 'awesome_print'
  gem 'better_errors'
  gem 'binding_of_caller'
  gem 'bullet'
  gem 'hirb'
  gem 'hirb-unicode'
  gem 'letter_opener'
  gem 'pry-byebug'
  gem 'pry-doc'
  gem 'pry-rails'
  gem 'pry-stack_explorer'
  gem 'quiet_assets'
  gem 'tapp'
  gem 'view_source_map'
  gem 'i18n-tasks'
  gem 'thin'
end

group :test, :development do
  # TDD
  gem 'brakeman'
  gem 'capybara'
  gem 'database_cleaner'
  gem 'delorean'
  gem 'factory_girl'
  gem 'factory_girl_rails'
  gem 'faker'
  gem 'guard-rspec', require: false
  gem 'guard-sprockets2'
  gem 'json_expressions'
  gem 'launchy'
  gem 'poltergeist'
  gem 'rails-db-resetup'
  gem 'rb-fsevent', require: RUBY_PLATFORM.downcase =~ /darwin/ ? 'rb-fsevent' : false
  gem 'rspec', '~> 3.0'
  gem 'rspec-rails'
  gem 'minitest'
  gem 'shoulda-matchers', '2.5.0'
  gem 'spring-commands-rspec'
  gem 'json_spec'
end

group :production, :staging do
  gem 'rails_12factor'
  gem 'newrelic_rpm'
end

gem 'oj'
gem 'aasm'
