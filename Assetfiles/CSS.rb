require 'rake-pipeline-web-filters'

output "build/css"
input "src/css" do
  match "*.scss" do
    sass
  end

  match "*.css" do
    yui_css
    concat "main.css"
  end
end