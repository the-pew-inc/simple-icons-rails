# test/simple_icons_rails_test.rb
require 'test_helper'

class SimpleIconsRailsTest < Minitest::Test
  include SimpleIconsRails

  def test_simple_icon_method
    # Test case where the image exists
    icon = simple_icon('github', 'black', class: 'icon', height: '32', width: '32')
    assert_equal '<img class="icon" height="32" width="32" src="https://cdn.simpleicons.org/github/black" alt="github" />', icon

    # Test case where the image does not exist
    icon = simple_icon('invalid_icon', 'red', class: 'icon', height: '32', width: '32')
    assert_equal '<img class="icon" height="32" width="32" src="https://cdn.simpleicons.org/invalid_icon/red" alt="invalid_icon" />', icon

    # Test case with an invalid color
    icon = simple_icon('github', 'invalid_color', class: 'icon', height: '32', width: '32')
    assert_equal '<img class="icon" height="32" width="32" src="https://cdn.simpleicons.org/github/invalid_color" alt="github" />', icon
  end
end
