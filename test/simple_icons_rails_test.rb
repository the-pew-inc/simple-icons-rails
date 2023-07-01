# test/simple_icons_rails_test.rb
require 'test_helper'

class SimpleIconsRailsTest < Minitest::Test
  include SimpleIconsRails

  def setup
    @original_cdn_url = SimpleIconsRails.config.cdn_url
  end

  def teardown
    SimpleIconsRails.config.cdn_url = @original_cdn_url
  end


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

  def test_cdn_url_change
    SimpleIconsRails.config.cdn_url = "https://new-cdn-url.com"
    icon = simple_icon('github', 'black', class: 'icon', height: '32', width: '32')
    assert_equal '<img class="icon" height="32" width="32" src="https://new-cdn-url.com/github/black" alt="github" />', icon
  end

  def test_invalid_url
    begin
      old_stderr = $stderr
      $stderr = StringIO.new
      SimpleIconsRails.config.cdn_url = '  '  # an invalid URL
      assert_includes $stderr.string, "WARNING: The CDN URL is not properly formatted."
    ensure
      $stderr = old_stderr
    end
  end
  
  
  def test_non_https_url
    begin
      old_stderr = $stderr
      $stderr = StringIO.new
      SimpleIconsRails.config.cdn_url = 'http://cdn.simpleicons.org'
      assert_includes $stderr.string, "WARNING: The CDN URL should be HTTPS."
    ensure
      $stderr = old_stderr
    end
  end  
  
end
