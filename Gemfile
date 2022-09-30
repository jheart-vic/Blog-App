source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '3.1.2'

gem 'rails', '~> 7.0.4'

gem 'sprockets-rails'

gem 'devise-jwt'
gem 'pg', '~> 1.1'
gem 'rack-cors'

gem 'puma', '~> 5.0'

gem 'importmap-rails'

gem 'turbo-rails'

gem 'stimulus-rails'

gem 'jbuilder'

gem 'tzinfo-data', '~> 1.2022', '>= 1.2022.3'

gem 'bootsnap', require: false

gem 'ffi', github: 'ffi/ffi', submodules: true

gem 'faker'

gem 'bullet'

gem 'devise'

gem 'cancancan'

group :development, :test do
  gem 'database_cleaner'
  gem 'debug', platforms: %i[mri mingw x64_mingw]
  gem 'letter_opener'
  gem 'rails-controller-testing'
  gem 'rspec-rails'
end

group :development do
  gem 'web-console'
end

group :test do
  gem 'capybara'
  gem 'selenium-webdriver'
  gem 'webdrivers'
end

gem 'tailwindcss-rails', '~> 2.0'
