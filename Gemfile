source 'https://rubygems.org'


# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '6.0.0'
# Use mysql2 as the database for Active Record
gem 'sqlite3'

group :assets do

  # Use SCSS for stylesheets
  gem 'sass-rails', '~> 5.0' #TODO rails_6_upgrade
  gem 'sassc-rails', '~> 2.1.1'  #TODO rails_6_upgrade
  gem 'sprockets', '3.7.2'  #TODO rails_6_upgrade
  # Use Uglifier as compressor for JavaScript assets
  gem 'uglifier', '4.2.0'
  gem 'coffee-rails', '~> 4.2'
  gem 'mini_racer'
  gem 'alertifyjs-rails'
  gem 'remote-sass'
  gem "yui-compressor", "~> 0.9.6"
  gem 'sprockets-rails', '~> 3.2'
end
gem 'bootstrap-sass'
gem "bootstrap_form"
# Use jquery as the JavaScript library
gem 'jquery-rails'
# Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
gem 'turbolinks'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.0'
# bundle exec rake doc:rails generates the API under doc/api.
gem 'sdoc', '>= 0.4.0', group: :doc

# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use Unicorn as the app server
# gem 'unicorn'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

group :development, :test do
  gem 'byebug'
  gem 'rspec-rails', '~> 4.0.0'
  gem "awesome_print"

  # Adds support for Capybara system testing and selenium driver
  # gem 'capybara', '>= 2.15'
  # # Easy installation and use of chromedriver to run system tests with Chrome
  # gem 'chromedriver-helper'
  # # Below gem is used for set up database strategy during test cases
  # gem 'database_cleaner'
  # # below gem is used for create mock data easily for test cases
  # gem 'factory_bot_rails',"4.11.1"
  # # below gem is used for genrating the random data
  # gem 'faker',"1.9.1"

  # gem 'rails-controller-testing'
  # # gem 'selenium-webdriver'
  # # below gems are used for code syntax correction and follow the good code practice
  # gem 'rubocop', "0.57.0"
  # gem 'rubocop-rspec', '1.27.0'

  # below gem is used to procie the coverage of test cases
  gem 'simplecov'
  # below gem is added to provide the coverage output format in RCOV style.
  gem 'simplecov-rcov'

  # pending gems
  # gem "mongrel", "1.2.0.pre2"
  # gem 'mongrel', '~> 1.1', '>= 1.1.5'
  # gem "annotate", :git => "https://github.com/ctran/annotate_models.git",:branch => "master"  # https://github.com/ctran/annotate_models

  # Refer - https://github.com/ruckus/active-record-instance-count
  gem 'active-record-instance-count' #TODO rails5 check # TODO-DASH
end


group :development do
  # Access an IRB console on exception pages or by using <%= console %> in views
  gem 'web-console', '~> 2.0'

  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
end

