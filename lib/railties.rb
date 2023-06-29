require 'simple-icons-rails'
require 'rails'

module SimpleIconsRails
  class Railtie < Rails::Railtie
    initializer 'simple_icons_rails.configure_view_helpers' do
      ActiveSupport.on_load(:action_view) do
        include SimpleIconsRails
      end
    end
  end
end
