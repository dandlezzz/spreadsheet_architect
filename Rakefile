require File.expand_path(File.dirname(__FILE__) + '/lib/spreadsheet_architect/version.rb')
require 'bundler/gem_tasks'

task :test do 
  require 'rake/testtask'
  Rake::TestTask.new do |t|
    t.libs << 'test'
    t.test_files = FileList['test/*_test.rb']
    t.verbose = true
  end
end

task default: :test

task :console do
  require 'spreadsheet_architect'

  require 'irb'
  binding.irb
end
