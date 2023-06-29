# frozen_string_literal: true

require_relative "lib/simple-icons-rails/version"

Gem::Specification.new do |spec|
  spec.name = "simple-icons-rails"
  spec.version = SimpleIconsRails::VERSION
  spec.authors = ["spaquet"]
  spec.email = ["176050+spaquet@users.noreply.github.com"]

  spec.summary     = 'A Rails gem for importing Simple Icons'
  spec.description = 'A gem that allows you to quickly import Simple Icons into your Rails project.'
  spec.homepage = "https://github.com/the-pew-inc/simple-icons-rails"
  spec.license = "MIT"
  spec.required_ruby_version = ">= 2.6.0"

  spec.metadata["allowed_push_host"] = "https://rubygems.org, https://rubygems.pkg.github.com/the-pew-inc"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/the-pew-inc/simple-icons-rails"
  spec.metadata["changelog_uri"] = "https://github.com/the-pew-inc/simple-icons-rails/blob/main/CHANGELOG.md"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(__dir__) do
    `git ls-files -z`.split("\x0").reject do |f|
      (File.expand_path(f) == __FILE__) ||
        f.start_with?(*%w[bin/ test/ spec/ features/ .git .circleci appveyor Gemfile])
    end
  end
  spec.bindir = "exe"
  spec.executables = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.files = [
    "lib/simple-icons-rails.rb",
    "lib/simple-icons-rails/version.rb"
  ]  

  spec.add_runtime_dependency 'rails'
  spec.add_development_dependency 'bundler', '~> 2.0'


  # Uncomment to register a new dependency of your gem
  # spec.add_dependency "example-gem", "~> 1.0"
  # spec.add_dependency 'rails', '>= 5.0'

  # For more information and examples about making a new gem, check out our
  # guide at: https://bundler.io/guides/creating_gem.html
end
