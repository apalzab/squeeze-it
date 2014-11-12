source 'https://rubygems.org'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '4.0.2'

# Use postgres as the database for Active Record
gem "pg"

gem 'puma'

# Mixpanel for event tracking
gem 'mixpanel-ruby'

# User authentication and session
gem 'devise'

# A simple and lightweight mixin library for Sass
gem 'bourbon'

gem 'friendly_id', '~> 5.0.0'

# Use aws-ses for email delivery
gem "aws-ses", "~> 0.5.0", :require => 'aws/ses'

gem "figaro"

#New Relic added for monitoring
gem 'newrelic_rpm'

# Rich text editor
gem 'tinymce-rails'

gem 'formtastic', '~> 2.3.0.rc3'

# For website administration
gem 'activeadmin', github: 'gregbell/active_admin'

group :production, :staging do
end

group :development, :test do
  gem 'better_errors'
  gem 'binding_of_caller'
end

# Use SCSS for stylesheets
gem 'sass-rails', '~> 4.0.0'

# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'

# Use CoffeeScript for .js.coffee assets and views
gem 'coffee-rails', '~> 4.0.0'

# See https://github.com/sstephenson/execjs#readme for more supported runtimes
# gem 'therubyracer', platforms: :ruby

# Use jquery as the JavaScript library
gem 'jquery-rails'

# Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
gem 'turbolinks'
gem 'jquery-turbolinks'

# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 1.2'

group :doc do
  # bundle exec rake doc:rails generates the API under doc/api.
  gem 'sdoc', require: false
end

group :test do
  gem 'spinach'
  gem 'rspec-rails'
  gem 'capybara', '~> 2.2.1'
end

# Use ActiveModel has_secure_password
# gem 'bcrypt-ruby', '~> 3.1.2'

# Use unicorn as the app server
# gem 'unicorn'

# Use Capistrano for deployment
# gem 'capistrano', group: :development

# Use debugger
# gem 'debugger', group: [:development, :test]
