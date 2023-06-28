require 'simple_icons_rails/importer'

module SimpleIconsRails
  module ApplicationHelper
    def simpleicons(icon_name, options = {})
      icon_path = "icons/#{icon_name}.svg"
      image_tag(icon_path, options.merge(class: 'simple-icon'))
    end
  end
end
