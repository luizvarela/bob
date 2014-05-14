require "bundler/gem_tasks"
require "rake/testtask"

namespace :test do
  Rake::TestTask.new("run_test") do |t|
    t.libs << "test"
    t.test_files = Dir.glob("test/*_test.rb")
    t.warning = false
  end
end