require 'sinatra'

require 'mandrill'

get '/' do
	@title ="Leash & Collar'
	erb :home
end

get '/services' do
	@title = "Services"
	erb :services
end

get '/walkers' do
	@title = "Dog Walkers"
	erb: walkers
end

get '/contact' do
	@title = "Conatct"
	erb: contact
end

