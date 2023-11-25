# frozen_string_literal: true

source 'https://rubygems.org'

ruby '3.1.4'

gem 'pg', '~> 1.1'
gem 'rails', '~> 7.1.2'
gem 'rswag'

gem 'bootsnap', require: false
gem 'puma', '>= 5.0'
gem 'rubocop', require: false

group :development, :test do
  gem 'factory_bot_rails'
  gem 'pry-rails'
end

group :test do
  gem 'database_cleaner'
  gem 'rspec-rails'
end

gem 'tzinfo-data', platforms: %i[windows jruby]
