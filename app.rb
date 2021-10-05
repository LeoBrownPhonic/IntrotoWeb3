require "sinatra"
require "sinatra/reloader" if development?

get "/" do
  "hel"
end

get "/secret" do
  "SEC"
end

get "/cat" do
  erb(:index)
end
