source 'https://rubygems.org'


# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '4.1.0'
# Use sqlite3 as the database for Active Record
gem 'sqlite3', group: [:development, :test]

# Use postscresql as the DB for Prod!
group :production do
  gem 'pg'
  gem 'rails_12factor'
end

# user authentication stuff
gem 'devise', '3.4.1'

# Stripe addition - Credit Card/payment processing
gem 'stripe', '1.16.1'

# use figaro to hide secret keys to hide sensitive information in github too!
gem 'figaro', '1.0.0'

# using bootstrap-sass to give easier access to html, css, and jquery work
#gem 'bootstrap-sass', '~> 3.3.5'  Current version, reset to older version
gem 'bootstrap-sass', '~> 3.3.1'

# using font-awesome to get prettier fonts
#gem 'font-awesome-sass', '~> 4.3.0'
gem 'font-awesome-sass', '~> 4.2.0'

# Use SCSS for stylesheets
gem 'sass-rails', '~> 4.0.3'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
# Use CoffeeScript for .js.coffee assets and views
gem 'coffee-rails', '~> 4.0.0'
# See https://github.com/sstephenson/execjs#readme for more supported runtimes
# gem 'therubyracer',  platforms: :ruby

# Use jquery as the JavaScript library
gem 'jquery-rails'
# Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
# 20150724 commented out to avoid conflicts with stripe gem CES
#gem 'turbolinks'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.0'
# bundle exec rake doc:rails generates the API under doc/api.
gem 'sdoc', '~> 0.4.0',          group: :doc

# Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
gem 'spring',        group: :development

# paperclip for image attachments
gem 'paperclip', '~> 4.2.1'

# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use unicorn as the app server
# gem 'unicorn'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

# Use debugger
# gem 'debugger', group: [:development, :test]

