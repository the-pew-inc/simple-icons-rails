# Simple Icons Rails Gem

## Description

The Simple Icons Rails Gem is a Ruby gem designed for importing and using the icons from [Simple Icons](https://simpleicons.org/) in your Rails projects. Simple Icons provides a collection of SVG icons for various popular brands.

This gem simplifies the process of importing and rendering Simple Icons in a Rails application, allowing you to easily include the icons in your views and customize their appearance.

For more information about Simple Icons, please visit their website: [https://simpleicons.org/](https://simpleicons.org/). You can also explore the Simple Icons GitHub repository at [https://github.com/simple-icons](https://github.com/simple-icons).

## Installation

To use the Simple Icons Rails Gem, follow these steps:

1. Add the gem to your Rails application's Gemfile:

    ```ruby
    gem 'simple_icons_rails', '~> 0.1.0'
    ```

2. Save the Gemfile and run the following command to install the gem:

    ```shell
    bundle install
    ```

3. Run the rake task to import the Simple Icons into your Rails project:

    ```shell
    bundle exec rake simple_icons:import
    ```

   This task will download the icons from the Simple Icons GitHub repository and save them to your project's asset directory (e.g., `app/assets/icons`).

That's it! The Simple Icons Rails Gem is now installed and ready to be used in your Rails application.

## Usage

To render Simple Icons in your Rails views, you can utilize the `simpleicons` helper method provided by the gem. Here's an example of how to use it:

```erb
<%= simpleicons('github', width: 24, height: 24, class: 'custom-class', style: 'color: red;') %>
```

Replace 'github' with the name of the specific icon you want to render. You can also customize the icon's appearance by passing additional options like width, height, class, and style. Use [https://simpleicons.org/](https://simpleicons.org/) to browse available icons.

With the Simple Icons Rails Gem, you can easily incorporate Simple Icons into your Rails application and enhance the visual appeal of your project.

## Development

After checking out the repo, run `bin/setup` to install dependencies. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and the created tag, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/simple_icons_rails. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [code of conduct](https://github.com/[USERNAME]/simple_icons_rails/blob/master/CODE_OF_CONDUCT.md).

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the SimpleIconsRails project's codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/[USERNAME]/simple_icons_rails/blob/master/CODE_OF_CONDUCT.md).
