require 'bundler'
Bundler.require(:test)
require 'appom'
require 'appium_lib'
require 'cucumber'
require 'rspec/expectations'
require 'pry'


caps = Appium.load_appium_txt(
  file: File.expand_path('../../appium.txt', __dir__), verbose: true
)


Appium::Driver.new(caps, true)
Appium.promote_appium_methods Object

Before { driver.start_driver }
After { driver.quit_driver }