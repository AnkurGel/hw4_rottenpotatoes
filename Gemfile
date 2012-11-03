source 'http://rubygems.org'

gem 'rails', '3.1.0'

# Bundle edge Rails instead:
# gem 'rails',     :git => 'git://github.com/rails/rails.git'

# for Heroku deployment - as described in Ap. A of ELLS book
group :development, :test do
  gem 'sqlite3'
  gem 'rspec-rails'
  gem 'database_cleaner'
  gem 'capybara'
  gem 'launchy'
  gem 'debugger'
  gem 'cucumber-rails-training-wheels'
end
group :production do
#  gem 'pg'
end

group :test do
  gem 'cucumber-rails'
  gem 'factory_girl_rails', '1.4.0'
  gem 'simplecov', :require => false
  gem 'simplecov-rcov', :require => false
end
# Gems used only for assets and not required
# in production environments by default.
group :assets do
  gem 'therubyracer'
  gem 'sass-rails', "  ~> 3.1.0"
  gem 'coffee-rails', "~> 3.1.0"
  gem 'uglifier'
end

gem 'jquery-rails'

gem 'haml'

