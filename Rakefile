require 'rubygems'
require 'bundler/setup'
require 'rake-pipeline'
require 'jshintrb/jshinttask'
require 'colored'


task :default => [:build]

desc "Build project"
task :build do
  puts 'Running full build.'.bold.cyan

  Rake::Task["jshint"].invoke
  Rake::Task["basics"].invoke
  Rake::Task["js"].invoke
  Rake::Task["css"].invoke

  puts 'Full build complete!'.bold.green
end

desc "Clean project build directory"
task :clean do
  puts "Cleaning up the project directory.".bold.cyan
  system 'rm -rf build'
end

desc "Copy basic files to the build directory"
task :basics do
  puts "Copying over basic files."

  project = Rake::Pipeline::Project.new('Assetfiles/Basics.rb')
  project.invoke
end

desc "Compile JS"
task :js do
  puts "Compiling JS."

  project = Rake::Pipeline::Project.new('Assetfiles/JS.rb')
  project.invoke
end

desc "Compile CSS"
task :css do
  puts "Compiling CSS."

  project = Rake::Pipeline::Project.new('Assetfiles/CSS.rb')
  project.invoke
end

desc "Run JSHint"
Jshintrb::JshintTask.new :jshint do |t|
  t.pattern = 'src/js/**/*.js'
  t.exclude_pattern = 'src/js/libs/**/*.js'
  t.options = {:strict => false}
  t.globals = ["define", "require", "requirejs", "Ember"] #RequireJS, Ember
end
