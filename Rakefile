require 'rubygems'
require 'bundler/setup'
require 'rake-pipeline'

task :default => [:build]

task :build do
  puts 'Running full build.'

  Rake::Task["basics"].invoke
  Rake::Task["js"].invoke
  Rake::Task["css"].invoke

  puts 'Full build complete!'
end

task :clean do
  puts "Cleaning up the project directory."
  system 'rm -rf build'
end

task :basics do
  puts "Copying over basic files."

  project = Rake::Pipeline::Project.new('Assetfiles/Basics.rb')
  project.invoke
end

task :js do
  puts "Compiling JS."

  project = Rake::Pipeline::Project.new('Assetfiles/JS.rb')
  project.invoke
end

task :css do
  puts "Compiling CSS."

  project = Rake::Pipeline::Project.new('Assetfiles/CSS.rb')
  project.invoke
end
