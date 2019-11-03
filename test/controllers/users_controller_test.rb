require 'test_helper'

class UsersControllerTest < ActionDispatch::IntegrationTest
  def setup
    @base_title = "示例应用"
  end
  test "should get new" do
    get signup_path
    assert_response :success
    assert_select "title", "注册 | #{@base_title}"
  end
end
