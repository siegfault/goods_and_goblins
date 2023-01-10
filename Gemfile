# frozen_string_literal: true

source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby File.read('.ruby-version').strip

gem 'bootsnap', require: false
gem 'bootstrap'
gem 'font-awesome-sass'
gem 'importmap-rails'
gem 'pg'
gem 'puma'
gem 'rails', github: 'rails/rails', branch: 'main'
gem 'sassc-ruby'
gem 'sprockets-rails'
gem 'stimulus-rails'
gem 'turbo-rails'
gem 'tzinfo-data', platforms: %i[mingw mswin x64_mingw jruby]

group :development, :test do
  gem 'debug'
  gem 'rspec-rails'
  gem 'rubocop'
  gem 'rubocop-rails'
  gem 'rubocop-rspec'
end

group :development do
  gem 'annotate'
  gem 'listen', '~> 3.8'
  gem 'spring'
end

group :test do
  gem 'capybara'
  gem 'factory_bot'
  gem 'shoulda-matchers'
end
