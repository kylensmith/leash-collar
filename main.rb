require 'sinatra'

require 'mandrill'

get '/' do
	@title ='Leash & Collar'
	erb :home
end

get '/services' do
	@title = "Services"
	erb :services
end

get '/walkers' do
	@title = "Dog Walkers"

	class Walker
		attr_accessor :f_name, :l_name, :email, :comments, :experience, :pic
		def initialize(f="", l="", e="", c="", ex="", pic="images/leash-collar-logo.png")
			@f_name = f
			@l_name = l
			@email = e
			@comments = c
			@experience = ex
			@pic = pic
		end
	end


	@walkers = []
	a = Walker.new("Alan", "Rhode", "", "This is where we talk about dogs", "", "https://avatars.slack-edge.com/2015-11-12/14402644737_e3b1a0f36e5e27efef86_512.jpg")
	b = Walker.new("Phil", "Araujo", "test@test.org", "Dogs are my life!", "Four years", "https://avatars.slack-edge.com/2015-11-24/15225604000_daab7193779ec33eb821_512.jpg")
	c = Walker.new("Kyle", "McCloskey", "no-mail", "And I would walk five thousand miles... and I would walk five thousand more.", "two years", "https://avatars.slack-edge.com/2015-10-15/12616170626_8676d8251abbf69852e6_512.jpg")
	d = Walker.new("Steven", "Rayesky", "no-mail", "I don't like dogs but I don't mind walking sometimes, I suppose.", "New addition!", "https://avatars.slack-edge.com/2015-12-02/15760583713_c35e7dd38c17d7dd2695_512.jpg")
	e = Walker.new("Michael", "Manwaring", "no-mail", "Can I walk your doggie?", "New addition!", "https://avatars.slack-edge.com/2015-11-19/14947578196_a307380126fc097c1c67_512.jpg")



	@walkers << a
	@walkers << b
	@walkers << c
	@walkers << d
	@walkers << e

		erb :walkers

end

get '/contact' do
	@title = "Conatct"

	erb :contact
end




