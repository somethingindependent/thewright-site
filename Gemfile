# frozen_string_literal: true

source "https://rubygems.org"

git_source(:github) {|repo_name| "https://github.com/#{repo_name}" }

gem 'jekyll'

group :jekyll_plugins do
  gem 'github-pages'
end

gem 'rake'
gem 'gemoji'
gem 'newrelic_rpm'

gem 'rack'
gem 'rack-jekyll'
gem 'puma'

group :development, :test do
  gem 'html-proofer'
end
