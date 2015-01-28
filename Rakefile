# encoding: utf-8

require 'rubygems'
require 'bundler'
require 'org-ruby'

begin
  Bundler.setup(:default, :development)
rescue Bundler::BundlerError => e
  $stderr.puts e.message
  $stderr.puts "Run `bundle install` to install missing gems"
  exit e.status_code
end
require 'rake'

require 'jeweler'
Jeweler::Tasks.new do |gem|
  # gem is a Gem::Specification... see http://guides.rubygems.org/specification-reference/ for more options
  gem.name = "jekyll-org-mode-converter"
  gem.homepage = "http://github.com/tjaartvdwalt/jekyll-org-mode-converter"
  gem.license = "MIT"
  gem.summary = %Q{Jekyll converter for org-mode files}
  gem.description = %Q{So you want org-mode support for Jekyll. Write your _posts in org-mode, then add 'gems: [jekyll-org-mode-converter]' to your _config.yml. Thats it!}
  gem.email = "github@tjaart.co.za"
  gem.authors = ["Tjaart van der Walt"]
  # dependencies defined in Gemfile
end
Jeweler::RubygemsDotOrgTasks.new

require 'rake/testtask'
Rake::TestTask.new(:test) do |test|
  test.libs << 'lib' << 'test'
  test.pattern = 'test/**/test_*.rb'
  test.verbose = true
end

desc "Code coverage detail"
task :simplecov do
  ENV['COVERAGE'] = "true"
  Rake::Task['test'].execute
end

task :default => :test

require 'rdoc/task'
Rake::RDocTask.new do |rdoc|
  version = File.exist?('VERSION') ? File.read('VERSION') : ""

  rdoc.rdoc_dir = 'rdoc'
  rdoc.title = "jekyll-org-mode-converter #{version}"
  rdoc.rdoc_files.include('README*')
  rdoc.rdoc_files.include('lib/**/*.rb')
end
