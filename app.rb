require 'bundler'
Bundler.require
require './lib/class_compliments'
#require './public/styles.css'

class TestApp < Sinatra::Application

	get '/compliments' do
		x = Compliments.new.messages.sample
		@message_post = x[0]
		@sth = x[1]
		@image = x[2]
		@font_color = x[3]
		#@color = Compliments.new.color.sample
		erb :compliment
	end
end