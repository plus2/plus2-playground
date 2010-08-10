require File.expand_path("../lib/playground/version", __FILE__)

Gem::Specification.new do |s|
  s.name        = "plus2-playground"
  s.version     = Playground::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Lachie Cox"]
  s.email       = ["lachie.cox@plus2.com.au"]
  s.homepage    = "http://github.com/plus2/plus2-playground"
  s.summary     = "A rails3 engine encapsulating our app playground approach to design."
  s.description = s.summary

  s.required_rubygems_version = ">= 1.3.6"

  # lol - required for validation
  s.rubyforge_project         = "plus2-playground"

  # If you have other dependencies, add them here
  # s.add_dependency "another", "~> 1.2"

  # If you need to check in files that aren't .rb files, add them here
  s.files        = Dir["{lib}/**/*.rb", "{app}/**/*", "bin/*", "LICENSE", "*.md", "Rakefile"]
  s.require_path = 'lib'

  # If you need an executable, add it here
  # s.executables = ["playground"]

  # If you have C extensions, uncomment this line
  # s.extensions = "ext/extconf.rb"
end
