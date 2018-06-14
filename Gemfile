source "https://rubygems.org"

gem "rails", "~> 5.0.0"
gem "mysql2", ">= 0.3.18", "< 0.5"
gem "puma", "~> 3.0"
gem 'bootstrap', '~> 4.1.1'
gem "bootstrap-sass", "~> 3.3.6"
gem "sass-rails", "~> 5.0"
gem "uglifier", ">= 1.3.0"
gem "coffee-rails", "~> 4.2"
gem "jquery-rails"
gem "turbolinks", "~> 5"
gem "config"

group :development, :test do
  # error printing
  gem "binding_of_caller"
  gem "simplecov", require: false
  gem "simplecov-rcov"
  gem "simplecov-json"
  gem "rails-controller-testing"
end

group :production, :staging, :preprod, :dev, :vagrant do
  gem 'rack-ltsv_logger'
end

group :development, :test, :preprod, :staging, :dev do
  gem "factory_girl_rails"
  gem "faker"
  gem "pry-rails"
  # gem "pry-byebug"
end

group :development do
  gem "web-console"
  gem "listen", "~> 3.0.5"
  gem "letter_opener"
  # gem "spring"
  # gem "spring-watcher-listen", "~> 2.0.0"
end

group :test do
  gem "shoulda-matchers"
end
