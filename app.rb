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

post "/named-cat" do
  p params
  @name = params[:name]
  erb(:index)
end

get "/cat_form" do
  erb :cat_form
end
