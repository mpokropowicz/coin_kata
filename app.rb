require "sinatra"
require "sinatra/reloader" if development?
require_relative "change_maker.rb"

get "/" do 

	erb :get_change
end

post "/make_change" do

	@change_hash = change(params[:change].to_i)

	erb :make_change
end