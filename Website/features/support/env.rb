#untuk action capybara
require 'capybara/cucumber'

#untuk cara untuk mengeskpetasi
require 'capybara/rspec'

#untuk oop siteprism
require 'site_prism'

#untuk debug
require 'byebug'

#set driver
Capybara.default_driver = :selenium

#selenium webdriver (wait function)
require 'selenium-webdriver'

#set browser
Capybara.register_driver :selenium do |app|
    $driver = Capybara::Selenium::Driver.new(app, :browser => :chrome)
end

Capybara.default_max_wait_time = 10 # seconds

# $wait = Selenium::WebDriver::Wait.new(:timeout => 10) # seconds

report_root = File.absolute_path('./report')

if ENV['REPORT_PATH'].nil?
  puts ' ========Deleting old reports ang logs========='
  FileUtils.rm_rf(report_root, secure: true)
end

ENV['REPORT_PATH'] ||= Time.now.strftime('%F_%H-%M-%S')
path = "#{report_root}/#{ENV['REPORT_PATH']}"
FileUtils.mkdir_p path