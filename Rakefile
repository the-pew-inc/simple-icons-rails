# Rakefile
require 'rake/testtask'
require 'rubygems/package_task'
require_relative 'lib/simple_icons_rails/version'

Rake::TestTask.new(:test) do |t|
  t.libs << 'test'
  t.pattern = 'test/**/*_test.rb'
  t.verbose = true
end

version = SimpleIconsRails::VERSION
Rake::PackageTask.new('simple-icons-rails', version) do |p|
  p.need_tar = true
  p.need_zip = true
  p.package_files.include('lib/**/*.rb', 'LICENSE', 'README.md', 'CHANGELOG.md')
end

task default: :test