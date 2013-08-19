# Bundler
require 'rubygems'
require 'bundler/setup'

guard 'rake', :task => 'build', :run_on_start => true

guard 'rake', :task => 'basics', :run_on_start => false do
  watch(%r{^src/[^\/]+\..+})
end

guard 'rake', :task => 'js', :run_on_start => false do
  watch(%r{^src/js/.+\.js})
end

guard 'rake', :task => 'css', :run_on_start => false do
  watch(%r{^src/css/.+\.scss|css})
end

guard 'livereload' do
  watch(%r{^src/[^\/]+\..+})
end
