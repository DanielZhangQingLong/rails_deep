require "test_helper"
require "active_record"
require "active_support"

class ActiveSupportTest < Minitest::Test
  def setup
    ActiveSupport::Dependencies.autoload_paths = Dir["#{__dir__}/muffin_blog/app/*"]
  end

  def test_search_for_file
    file = ActiveSupport::Dependencies.search_for_file("application_controller")
    assert_equal "#{__dir__}/muffin_blog/app/controllers/application_controller.rb", file
    file = ActiveSupport::Dependencies.search_for_file("unknown")
    assert_equal nil, file
  end

  def test_case_name
    assert_equal "post", :Post.to_s.underscore
    assert_equal "application_controller", :ApplicationController.to_s.underscore
  end

  def test_constant_missing
    Post
  end

end
