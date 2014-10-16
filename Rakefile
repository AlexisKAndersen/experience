require 'rubygems'
require 'bundler'
require 'rake'
require 'rspec/core/rake_task'
require 'cucumber'
require 'cucumber/rake/task'
require 'experience'
require_relative 'features/support/stub_platform'
require_relative 'lib/experience/features'

Bundler::GemHelper.install_tasks

RSpec::Core::RakeTask.new(:spec) do |spec|
  spec.ruby_opts = "-I lib:spec"
  spec.pattern = 'spec/**/*_spec.rb'
end
task :spec


Cucumber::Rake::Task.new(:acceptance, "Run features") do |t|
  t.profile = 'acceptance'
  t.cucumber_opts = "--color #{features_directory}"
end

desc 'Run all specs and cukes'
task :test => ['spec', 'features']

task :lib do
  $LOAD_PATH.unshift(File.expand_path("lib", File.dirname(__FILE__)))
end

task :default => :test
