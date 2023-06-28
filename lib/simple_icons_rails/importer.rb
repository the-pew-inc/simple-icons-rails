# frozen_string_literal: true

require 'httparty'

module SimpleIconsRails
  class Importer
    GITHUB_URL = 'https://github.com/simple-icons/simple-icons.git'

    def self.import_all
      response = HTTParty.get("#{GITHUB_URL}/tree/develop/icons")
      icon_urls = extract_icon_urls(response.body)

      icon_urls.each do |url|
        save_icon(url)
      end
    end

    def self.extract_icon_urls(html)
      doc = Nokogiri::HTML(html)
      doc.css('.js-navigation-open').map { |link| link['href'] }
    end

    def self.save_icon(url)
      File.open("app/assets/icons/#{File.basename(url)}", 'wb') do |file|
        file.write(URI.open("#{GITHUB_URL}/#{url}").read)
      end
    end
  end
end
