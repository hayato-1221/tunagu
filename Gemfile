source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.7.2'

gem 'rails', '~> 6.1.1'
gem 'pg', '~> 1.1'
gem 'puma', '~> 5.0'
gem 'sass-rails', '>= 6'
gem 'webpacker', '~> 5.0'
gem 'turbolinks', '~> 5'
gem 'jbuilder', '~> 2.7'
gem 'bootsnap', '>= 1.4.4', require: false

#管理者画面
gem 'activeadmin'

# ログイン機能
gem 'devise'

# 多言語対応
gem 'rails-i18n'
gem 'devise-i18n'

# enum日本語化
gem 'enum_help'

#Bootstrap
gem 'devise-bootstrap-views'

# Gon（コントローラから Javascript に変数を渡せるようにする）
gem 'gon'

# マークダウン形式で表示するためのgem
gem 'redcarpet', '~> 2.3.0'
# シンタックスハイライトに対応させるためのgem
gem 'coderay'

group :development, :test do
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
  gem 'pry-byebug'
end

group :development do
  gem 'web-console', '>= 4.1.0'
  gem 'rack-mini-profiler', '~> 2.0'
  gem 'listen', '~> 3.3'
  gem 'spring'
end

gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
