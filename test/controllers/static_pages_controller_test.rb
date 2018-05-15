require 'test_helper'

class StaticPagesControllerTest < ActionDispatch::IntegrationTest

  test 'should get home' do
    get static_pages_home_url
    assert_response :success

    assert_select 'title', expected_title('Home')

  end

  test 'should get help' do
    get static_pages_help_url
    assert_response :success

    assert_select 'title', expected_title('Help')

  end

  test 'should get about' do
    get static_pages_about_url
    assert_response :success

    assert_select 'title', expected_title('About')

    end

  test 'should get contact' do
    get static_pages_contact_url
    assert_response :success

    assert_select 'title', expected_title('Contact')

  end

  test 'root should go to home' do

    get root_url
    assert_response :success

    assert_select 'title', expected_title('Home')

  end

  def expected_title(prefix)
    prefix + ' | Ruby on Rails Tutorial Sample App'
  end

end
