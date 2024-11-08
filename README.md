# Simple Icons Rails Gem

[![Gem Version](https://badge.fury.io/rb/simple-icons-rails.svg)](https://badge.fury.io/rb/simple-icons-rails)

## IMPORTANT
version 0.1.x `gem 'simple-icons-rails', '~> 0.1.0'`<br/>
version 0.2.x `gem 'simple_icons_rails', '~> 0.2.0'` 

version 0.2.25 support Rails 8. version 0.2.26 and above are using `simple-icons-rails` as using the _ was not followed through at RubyGem level. We also temporarily remove support to GPR.

**In 2025 we will remove support to Rails 5 and Ruby 2.7** Versions following version 0.2.25 will support Rails 6 to 8 and Ruby 3.1 to 3.3 (or higher). If you need support for Rails version 5 use either 0.1.x or 0.2.22.

Thank you for your understanding.

## Description

The Simple Icons Rails Gem is a Ruby gem designed for importing and using the icons from [Simple Icons](https://simpleicons.org/) in your Rails projects. Simple Icons provides a collection of more than 2500 SVG icons for various popular brands. <img src="https://img.shields.io/badge/dynamic/json?color=informational&label=icons&prefix=%20&logo=simpleicons&query=%24.icons.length&url=https%3A%2F%2Fraw.githubusercontent.com%2Fsimple-icons%2Fsimple-icons%2Fdevelop%2F_data%2Fsimple-icons.json" alt="Number of icons currently in the library"/>


This gem simplifies the process of rendering Simple Icons in a Rails application, allowing you to easily include the icons in your views and customize their appearance. This gem is acting as a passthrough to Simple Icons CDN. The icons are not downloaded to your Rails application. This means that when a new icon is uploaded or an existing one updated, you can access it right away without having to update this gem. 

For more information about Simple Icons, please visit their website: [https://simpleicons.org/](https://simpleicons.org/). You can also explore the Simple Icons GitHub repository at [https://github.com/simple-icons](https://github.com/simple-icons).

## Installation

To use the Simple Icons Rails Gem, follow these steps:

1. Add the gem to your Rails application's Gemfile:

    ```ruby
    gem 'simple_icons_rails', '~> 0.2.0'
    ```

2. Save the Gemfile and run the following command to install the gem:

    ```shell
    bundle install
    ```

That's it! The Simple Icons Rails Gem is now installed and ready to be used in your Rails application.

## Usage

To render Simple Icons in your Rails views, you can utilize the `simpleicons` helper method provided by the gem. Here's an example of how to use it:

```erb
<%= simple_icon('[ICON SLUG]', '[COLOR]', html_options = {}) %>
```

Replace 'github' with the name of the specific icon you want to render. You can also customize the icon's appearance by passing additional options like width, height, class, and style. Use [https://simpleicons.org/](https://simpleicons.org/) to browse available icons.

[COLOR] is optional, and can be replaced by the [hex colors](https://developer.mozilla.org/en-US/docs/Web/CSS/hex-color) or [CSS keywords](https://www.w3.org/wiki/CSS/Properties/color/keywords) of the icon you want to you use. The color is defaulted to the HEX color of the icon shown in [simpleicons.org](https://simpleicons.org/) website. For example:

```erb
<%= simple_icon('github') %>
<%= simple_icon('github', 'red') %>
<%= simple_icon('github', 'black', class: 'custom-class', style: 'color: red;') %>
<%= simple_icon('amazon', 'red', class: 'icon', height: '32', width: '32') %>
<%= simple_icon('github', '0cf', class: 'icon', height: '32', width: '32') %>
<%= simple_icon('simpleicons', '00ccff99', class: 'icon', height: '32', width: '32') %>
```

## Advanced configuration

**Version 0.2 and above** You can add a file, `simple_icons.rb` in your Rails `app/config/initializers` folder to change the CDN. See example below for more details.

```ruby
# config/initializers/simple_icons.rb
SimpleIconsRails.configure do |config|
  config.cdn_url = "https://new-cdn-url.com/"
end
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and the created tag, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/the-pew-inc/simple-icons-rails. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [code of conduct](https://github.com/the-pew-inc/simple-icons-rails/blob/master/CODE_OF_CONDUCT.md).

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the SimpleIconsRails project's codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/the-pew-inc/simple-icons-rails/blob/master/CODE_OF_CONDUCT.md).
