# lib/simple_icons_rails.rb
require 'action_view'

module SimpleIconsRails
  include ActionView::Helpers::TagHelper

  def simple_icon(icon_slug, color = nil, html_options = {})
    svg_url = "https://cdn.simpleicons.org/#{icon_slug}/#{color}"
    html_options[:src] = svg_url
    html_options[:alt] ||= icon_slug # Optional: Set a default alt text if not provided

    # tag(:img, html_options)
    tag(:img, html_options)
  end
end

ActionView::Base.include SimpleIconsRails

# puts 'SimpleIconsRails loaded' if defined?(SimpleIconsRails)

