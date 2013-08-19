require 'rake-pipeline-web-filters'

output "build/js"
input "src/js" do
  match "**/*.js" do
    uglify
    concat "main.min.js"
  end
end
