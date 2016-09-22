ENV['RAILS_ENV'] ||= 'test'
require File.expand_path('../../config/environment', __FILE__)
require 'rails/test_help'
require 'minitest/rails/capybara'
Percy::Capybara.initialize_build
MiniTest.after_run { Percy::Capybara.finalize_build }

class ActionDispatch::IntegrationTest
  include Capybara::DSL
  include Capybara::Assertions
end

class ActiveSupport::TestCase
  # Setup all fixtures in test/fixtures/*.yml for all tests in alphabetical order.
  fixtures :all

  # Add more helper methods to be used by all tests here...
end
