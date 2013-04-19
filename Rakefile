#!/usr/bin/env rake

require 'rubygems'
require 'cucumber'
require 'cucumber/rake/task'
require 'rspec/core/rake_task'


RSpec::Core::RakeTask.new(:spec)

Cucumber::Rake::Task.new(:features) do |t|
  t.cucumber_opts = "features --format pretty"
end

task :default => [ :spec ]

task :full_build => [ :gemspec, :build, :install, :spec ]

gemspec = eval(File.read(Dir["*.gemspec"].first))

desc "Validate the gemspec"
task :gemspec do
  gemspec.validate
end

desc "Build gem locally"
task :build => :gemspec do
  system "gem build #{gemspec.name}.gemspec"
end

desc "Install gem locally"
task :install => :build do
  system "gem install #{gemspec.name}-#{gemspec.version}.gem"
end
