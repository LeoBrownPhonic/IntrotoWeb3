require "sinatra"
require "sinatra/reloader" if development?

get "/" do
  "hel"
end

get "/secret" do
  "SEC"
end

get "/cat" do
  "<div style='border: 5px dashed red'>
    <img src='https://i.imgur.com/jFaSxym.png'>
  </div>"
end
