require 'test_helper'

class ApplicationHelperTest < ActionView::TestCase
	test "full title helper" do
		assert_equal full_title, "示例应用"
		assert_equal full_title("帮助"), "帮助 | 示例应用"
	end
end
