module SimpleIconsRails
  def simple_icon(icon_slug, color = nil, html_options = {})
    svg_url = "https://cdn.simpleicons.org/#{icon_slug}/#{color}"
    html_options[:src] = svg_url
    html_options[:alt] ||= icon_slug # Optional: Set a default alt text if not provided

    tag(:img, html_options)
  end
end

ActionView::Base.include SimpleIconsRails
