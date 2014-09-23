source 'https://rubygems.org'
ruby '2.1.2'

gem 'rails', '4.1.5'

gem 'pg'
gem 'draper'
gem 'decent_exposure'
gem 'decent_decoration'
gem 'devise'
gem 'simple_form', '~> 3.1.0rc'
gem 'bootstrap-sass', '~> 3.1.0'
gem 'haml-rails'
gem 'sass-rails', github: 'rails/sass-rails'
gem 'coffee-rails'
gem 'uglifier'
gem 'quiet_assets'
gem 'jquery-rails'
gem 'therubyracer', platforms: :ruby
gem 'travis'
gem 'ffaker'

group :development do
  gem 'spring'
end

group :development, :test do
  gem 'rspec-rails'
  gem 'factory_girl_rails'
  gem 'shoulda-matchers'
  gem 'pry'
end

group :test do
  gem 'database_cleaner'
end
group :production do
  gem 'pg',             '0.17.1'
  gem 'rails_12factor', '0.0.2'
  gem 'unicorn',        '4.8.3'
end