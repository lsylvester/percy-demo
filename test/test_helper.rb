ENV['RAILS_ENV'] ||= 'test'
require File.expand_path('../../config/environment', __FILE__)
require 'rails/test_help'
require 'minitest/rails/capybara'

class PercyReporter
  def start
    Percy::Capybara.initialize_build
  end

  def record(_)
  end

  def report
    Percy::Capybara.finalize_build
  end

  def passed?
    true
  end
end

Minitest.reporter.reporters << PercyReporter.new


class ActionDispatch::IntegrationTest
  include Capybara::DSL
  include Capybara::Assertions
end

class ActiveSupport::TestCase
  # Setup all fixtures in test/fixtures/*.yml for all tests in alphabetical order.
  fixtures :all

  # def after_suite
  #   binding.pry
  # end
  # Add more helper methods to be used by all tests here...
end
