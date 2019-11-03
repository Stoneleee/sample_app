require 'test_helper'

class StaticPagesControllerTest < ActionDispatch::IntegrationTest
  def setup
    @base_title = "示例应用"
  end

  test "should get root" do
    get root_path
    assert_response :success
    assert_select "title", "#{@base_title}"
  end

  test "should get home" do
    get home_path
    assert_response :success
    assert_select "title", "#{@base_title}"
  end

  test "should get help" do
    get help_path 
    assert_response :success
    assert_select "title", "帮助 | #{@base_title}"
  end

  test "should get about" do
    get about_path 
    assert_response :success
    assert_select "title", "关于 | #{@base_title}"
  end

  test "should get contact" do
    get contact_path
    assert_response :success
    assert_select "title", "联系 | #{@base_title}"
  end
end
