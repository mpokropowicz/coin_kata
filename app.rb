require "sinatra"
require "sinatra/reloader" if development?
require_relative "change_maker.rb"

get "/" do 

	erb :get_change
end

post "/make_change" do

	@total = params[:total]
	@amount = params[:given]
	@change = parse_change(@amount.to_f - @total.to_f)
	@t1 = "You'll need: "
	@t2 = " to make correct change!"

	@change_hash = change(@change)

	erb :make_change
end