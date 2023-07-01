# lib/simple_icons_rails.rb
require "action_view"
require "uri"

module SimpleIconsRails
  include ActionView::Helpers::TagHelper

  class Configuration
    attr_reader :cdn_url
  
    def cdn_url=(url)
      url = url.end_with?('/') ? url : "#{url}/"
  
      begin
        uri = URI.parse(url)
  
        unless uri.is_a?(URI::HTTPS)
          warn "WARNING: The CDN URL should be HTTPS."
        end
        
        unless uri.host
          warn "WARNING: The CDN URL is not properly formatted."
        end
      rescue URI::InvalidURIError
        warn "WARNING: The CDN URL is not properly formatted."
      end
  
      @cdn_url = url
    end
  
    def initialize
      self.cdn_url = "https://cdn.simpleicons.org/"
    end
  end
  

  def self.configure
    yield(config)
  end

  def self.config
    @config ||= Configuration.new
  end

  def simple_icon(icon_slug, color = nil, html_options = {})
    svg_url = "#{SimpleIconsRails.config.cdn_url}#{icon_slug}/#{color}"
    html_options[:src] = svg_url
    html_options[:alt] ||= icon_slug # Optional: Set a default alt text if not provided

    tag(:img, html_options)
  end
end

ActionView::Base.include(SimpleIconsRails)
