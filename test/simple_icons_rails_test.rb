# test/simple_icons_rails_test.rb
require 'test_helper'

class SimpleIconsRailsTest < Minitest::Test
  include SimpleIconsRails

  def test_simple_icon_method
    icon = simple_icon('github', 'black', class: 'icon', height: '32', width: '32')
    assert_equal '<img class="icon" height="32" width="32" src="https://cdn.simpleicons.org/github/black" alt="github" />', icon
    # assert_equal '<img src="https://cdn.simpleicons.org/github/black" alt="github" class="icon" height="32" width="32">', icon
  end
end
