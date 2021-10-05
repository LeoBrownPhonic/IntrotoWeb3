require "sinatra"
require "sinatra/reloader" if development?

get "/" do
  "hel"
end

get "/secret" do
  "SEC"
end

get "/random-cat" do
  @name_generator = ["Amigo", "Misty", "Almond"].sample
  erb(:index)
end

get "/named-cat" do
  p params
  @name_generator = params[:name]
  erb(:index)
end
