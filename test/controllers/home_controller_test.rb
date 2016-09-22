require 'test_helper'

class HomeControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    visit root_url
    assert page.has_content?("Home")
    Percy::Capybara.snapshot(page, name: 'homepage')
  end
end
