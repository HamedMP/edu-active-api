source 'https://rubygems.org'
ruby '2.0.0'

gem 'rails', '4.1.0'
gem 'rails-api'
gem 'active_model_serializers'
gem 'pg'
gem 'puma'

group :production do
  gem 'rails_12factor'
end

group :development, :test do
  gem 'rspec-rails', '~> 2.14.2'
  gem 'factory_girl_rails'
  gem 'pry-rails'
end

group :development do
  gem 'foreman'
end

group :test do
  gem 'codeclimate-test-reporter', require: nil
  gem 'shoulda-matchers'
end
