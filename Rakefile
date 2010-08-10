require "bundler"
Bundler.setup

require "rspec/core/rake_task"
Rspec::Core::RakeTask.new(:spec)

gemspec = eval(File.read("playground.gemspec"))

task :build => "#{gemspec.full_name}.gem"

file "#{gemspec.full_name}.gem" => gemspec.files + ["playground.gemspec"] do
  system "gem build playground.gemspec"
  system "gem install playground-#{Playground::VERSION}.gem"
end
