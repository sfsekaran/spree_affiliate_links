# encoding: UTF-8
require 'spree_affiliate_links/version'

Gem::Specification.new do |s|
  s.platform    = Gem::Platform::RUBY
  s.name        = 'spree_affiliate_links'
  s.version     = SpreeAffiliateLinks::VERSION
  s.summary     = 'Affiliate links with images for Spree using Paperclip.'
  # s.description = 'TODO: Add (optional) gem description here'
  s.required_ruby_version = '>= 1.8.7'

  s.author    = 'Sathya Sekaran'
  s.email     = 'sfsekaran@gmail.com'
  s.homepage  = 'http://sfsekaran.github.com/'

  s.files       = Dir["**/*"]
  s.require_paths << 'lib'
  s.requirements << 'none'

  s.add_dependency 'spree_core', '~> 1.3.3'

  s.add_development_dependency 'capybara', '1.0.1'
  s.add_development_dependency 'factory_girl', '~> 2.6.4'
  s.add_development_dependency 'ffaker'
  s.add_development_dependency 'rspec-rails',  '~> 2.9'
  s.add_development_dependency 'sqlite3'
end
