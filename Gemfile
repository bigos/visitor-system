source 'https://rubygems.org'


# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '~> 5.0.0', '>= 5.0.0.1'
# Use sqlite3 as the database for Active Record
gem 'sqlite3'
# Use Puma as the app server
gem 'puma', '~> 3.0'
# Use SCSS for stylesheets
gem 'sass-rails', '~> 5.0'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
# Use CoffeeScript for .coffee assets and views
gem 'coffee-rails', '~> 4.2'
# See https://github.com/rails/execjs#readme for more supported runtimes
# gem 'therubyracer', platforms: :ruby

# Use jquery as the JavaScript library
gem 'jquery-rails'
# Turbolinks makes navigating your web application faster. Read more: https://github.com/turbolinks/turbolinks
gem 'turbolinks', '~> 5'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.5'
# Use Redis adapter to run Action Cable in production
# gem 'redis', '~> 3.0'
# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug', platform: :mri
end

group :development do
  # Access an IRB console on exception pages or by using <%= console %> anywhere in the code.
  gem 'web-console'
  gem 'listen', '~> 3.0.5'
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
gem 'haml'
gem 'haml-rails', '~> 0.9'

gem 'simple_form'
gem 'devise'

gem 'foundation-rails'
gem 'foundation_rails_helper'
gem 'foundation-datetimepicker-rails'

gem 'font-awesome-sass', '~> 4.6.2'
gem 'foundation-icons-sass-rails'
gem 'will_paginate-foundation'


gem 'jquery-turbolinks'

group :development do
  gem 'better_errors' # https://github.com/charliesome/better_errors
  gem 'binding_of_caller'
end

group :development, :test do
  # Debugging tool
  gem 'pry'
  gem 'pry-byebug'

  # Debug slow code with Stack Tracy
  gem 'stack_tracy'

  # Db schema graph
  gem 'rails-erd'
end

group :development, :test do
  gem 'rspec-rails', '~> 3.5'
  gem 'byebug'

  gem 'factory_girl_rails', '~> 4.7'
end

group :test do
  gem 'cucumber-rails', require: false
  gem 'selenium-webdriver'
  # http://www.virtuouscode.com/2012/08/31/configuring-database_cleaner-with-rails-rspec-capybara-and-selenium/
  gem 'database_cleaner', '~> 1.5'
  gem 'launchy'

  gem 'rails-controller-testing'
end

# we do not load these two gems into our Rails application, hence require: false
# but we make sure others in the team know about those gems and use them
gem 'rubocop', '~> 0.42.0', require: false
gem 'reek', require: false
