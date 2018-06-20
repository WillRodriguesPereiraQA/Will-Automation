require 'rspec'
require 'capybara/cucumber'
require 'pry'
require 'yaml'
require 'capybara/poltergeist'
#require 'ffaker'
require 'selenium/webdriver'
#require 'rest-client'

 #DT_LINKS = YAML.load_file('data/data_links.yml')
 #DATA = YAML.load_file('data/data.yml')
 EL = YAML.load_file('data/elements.yml')
 #MASSA = YAML.load_file('data/massa.yml')
 #MSG = YAML.load_file('data/messages.yml')

 if ENV['chrome']
   Capybara.default_driver = :chrome
   Capybara.register_driver :chrome do |app|
     Capybara::Selenium::Driver.new(app, browser: :chrome)
   end
 elsif ENV['firefox']
   Capybara.default_driver = :firefox
   Capybara.register_driver :firefox do |app|
     Capybara::Selenium::Driver.new(app, browser: :firefox)
   end
 elsif ENV['ie']
   Capybara.default_driver = :ie
   Capybara.register_driver :ie do |app|
     Capybara::Selenium::Driver.new(app, browser: :internet_explorer)
   end
 elsif ENV['headless_debug']
   Capybara.default_driver = :poltergeist_debug
   Capybara.register_driver :poltergeist_debug do |app|
     Capybara::Poltergeist::Driver.new(app, inspector: true)
   end
   Capybara.javascript_driver = :poltergeist_debug
 elsif ENV['headless']
   Capybara.javascript_driver = :poltergeist
   Capybara.default_driver = :poltergeist
 else
   Capybara.default_driver = :selenium
 end
