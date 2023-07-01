# test/test_helper.rb
require 'simplecov'
SimpleCov.start

require 'minitest/autorun'
require 'action_view'

$LOAD_PATH.unshift File.expand_path('../lib', __dir__)

require 'simple_icons_rails'

# class ViewContext
#   include ActionView::Helpers::TagHelper
#   include SimpleIconsRails
# end