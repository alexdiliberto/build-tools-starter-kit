output "build"
input "src" do
  match "index.html" do
    copy
  end
end
