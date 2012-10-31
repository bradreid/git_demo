# Sets up the rake task, called test.  Which runs all the unit, functional and integration tests
Rake::Task[:default].prerequisites.clear
Rake::TestTask.new(:testall => "test:prepare") do |t|
  t.test_files = FileList[
    'test/unit/**/*_test.rb',
    'test/functional/**/*_test.rb',
    'test/integration/**/*_test.rb',
    'test/view/**/*_test.rb'
  ]
  t.verbose = false
  t.warning = false
end
task :default => :testall
