require './test/test_helper'

class LinkTest < CapybaraTestCase
  def test_user_can_see_the_homepage
    visit '/'
    # require 'pry'; binding.pry
    # save_and_open_page
    click_on "About"
    assert page.has_content?("About Me!")
    assert_equal 200, page.status_code
    assert_equal '/about', current_path
  end

  # def test_user_can_see_error_page
  #   visit '/flowers'
  #   # require 'pry'; binding.pry
  #   # save_and_open_page
  #   assert page.has_content?("Page not found.")
  #   assert_equal 404, page.status_code
  # end
end
