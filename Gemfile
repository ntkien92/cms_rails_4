source 'https://rubygems.org'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '4.2.5'

##### Authentication #####
gem 'devise'
gem 'devise-async'

##### Authorization #####
gem 'cancancan'

##### Assets #####
gem 'sass-rails', '~> 5.0'
gem 'uglifier', '>= 1.3.0'
gem 'coffee-rails', '~> 4.1.0'
gem 'jquery-rails'
gem 'rails-i18n'
gem 'bower-rails'
gem 'slim-rails'
gem 'font-awesome-rails'
gem 'bootstrap-sass', '~> 3.3.6'
# import assets lib by bower
source 'https://rails-assets.org' do
  gem 'rails-assets-jquery-validation'
  gem 'rails-assets-jquery.cookie'
end

##### Database #####
gem 'pg'
gem 'redis'
gem 'kaminari'
gem 'ransack'
gem 'activerecord-import'
gem 'ffaker'
gem 'rails-erd'
gem 'sidekiq'

##### File upload #####
gem 'carrierwave'
gem 'carrierwave-processing'
gem 'fog'
gem 'mini_magick'

##### Server and Deployement #####
gem 'unicorn'
gem 'capistrano'
gem 'capistrano-rails'
gem 'capistrano-rvm'
gem 'capistrano-bundler'
gem 'capistrano-unicorn-nginx', '~> 3.2.0'
gem 'capistrano-sidekiq'
gem 'capistrano-rails-console'
gem 'figaro'
# gem 'capistrano-bower'

##### Analysis #####
gem 'brakeman'
gem 'bullet'
gem 'rails_best_practices'
gem 'rubocop'
gem 'scss_lint', require: false
# gem 'exception_notification'

##### Automate Code Review #####
gem 'saddler'
gem 'saddler-reporter-github'

##### Social #####
gem 'instagram'

##### FactoryGirl #####
gem 'factory_girl_rails'

##### Friendly_id #####
gem 'friendly_id', '~> 5.1.0' # Note: You MUST use 5.0.0 or greater for Rails 4.0+

##### Create QRcode ####
gem 'rqrcode_png'
gem 'qr4r'

##### CopyToClipBoard #####
gem 'zeroclipboard-rails'

#### Download file zip ####
gem 'rubyzip'

#### Metatags #####
gem 'meta-tags'

#### Gem Holiday Japan####
gem 'holiday_jp'

#### Gem admin-lte2 ####
gem 'adminlte2-rails', '~> 0.0.3'

group :development, :test do
  ##### Debugging #####
  gem 'awesome_print'
  gem 'pry-byebug'
  gem 'web-console', '~> 2.0'
  gem 'letter_opener_web'
  gem 'annotate'
  gem 'quiet_assets'

  ##### Testing #####
  gem 'rspec-rails'
end

group :development do
  ##### Show list table #####
  gem 'table_print'
end

group :test do
  gem 'database_cleaner'
  gem 'shoulda-matchers'

  ##### SimpleCov #####
  gem 'simplecov', require: false
end
