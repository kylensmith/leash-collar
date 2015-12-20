require 'sinatra'


require 'sendgrid-ruby'
# As a hash 
client = SendGrid::Client.new(api_user: ENV['SENDGRID_USERNAME'], api_key: ENV['SENDGRID_PASSWORD'])

# Or as a block 
client = SendGrid::Client.new do |c|   
	c.api_user = ENV['SENDGRID_USERNAME']   
	c.api_key = ENV['SENDGRID_PASSWORD'] 
end
# or as a block with the API key only # 
client = SendGrid::Client.new do |c|   
	c.api_key = ENV['SENDGRID_API_KEY'] 
end


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
		attr_accessor :f_name, :l_name, :email, :comments, :experience, :pic, :location
		def initialize(f="", l="", e="", c="", ex="", pic="images/leash-collar-logo.png", location="Philadelphia")
			@f_name = f
			@l_name = l
			@email = e
			@comments = c
			@experience = ex
			@pic = pic
			@location = location
		end
	end


	@walkers = []
	a = Walker.new("Alan", "Rhode", "", "This is where we talk about dogs", "", "https://avatars.slack-edge.com/2015-11-12/14402644737_e3b1a0f36e5e27efef86_512.jpg", "Fairmount, Point Breeze, Pennsport")
	b = Walker.new("Phil", "Araujo", "test@test.org", "Dogs are my life!", "Four years", "https://avatars.slack-edge.com/2015-11-24/15225604000_daab7193779ec33eb821_512.jpg", "Kensington, Northern Liberties, China Town")
	c = Walker.new("Kyle", "McCloskey", "no-mail", "And I would walk five thousand miles... and I would walk five thousand more.", "two years", "https://avatars.slack-edge.com/2015-10-15/12616170626_8676d8251abbf69852e6_512.jpg", "Northern Liberties, China Town, Graduate Hospital")
	d = Walker.new("Steven", "Rayesky", "no-mail", "I don't like dogs but I don't mind walking sometimes, I suppose.", "New addition!", "https://avatars.slack-edge.com/2015-12-02/15760583713_c35e7dd38c17d7dd2695_512.jpg", "Graduate Hospital, Grays Ferry")
	e = Walker.new("Michael", "Manwaring", "no-mail", "Can I walk your doggie?", "New addition!", "https://avatars.slack-edge.com/2015-11-19/14947578196_a307380126fc097c1c67_512.jpg", "Pennsport, Fishtown, Kensington, Northern Liberties")
	f = Walker.new("Richard", "Mable", "no-mail", '"Every dog has his day, unless he loses his tail, then he has a weak-end." -June Carter Cash', "One year, with dogs.", "https://avatars.slack-edge.com/2015-11-06/14075403570_e2b068f5d7d890f401e9_512.jpg", "Pennsport, Kensington, Northern Liberties")
	g = Walker.new("Emily", "McCracken", "no-mail", "Can your puppy come out to play?", "New addition", "https://avatars.slack-edge.com/2015-12-02/15814598565_10223c9032676ea9aaa2_512.jpg", "China Town, Kensington, Graduate Hospital")
	h = Walker.new("Greg", "Park", "no-mail", "Dogs love their friends and bite their enemies, quite unlike people, who are incapable of pure love and always have to mix love and hate. -Sigmund Freud", "New addition", "https://secure.gravatar.com/avatar/4e202e4ffba28e94246c03986ecba513.jpg", "China Town, Kensington, Graduate Hospital")



	@walkers << a
	@walkers << b
	@walkers << c
	@walkers << d
	@walkers << e
	@walkers << f
	@walkers << g
	@walkers << h
		erb :walkers

end

get '/contact' do
	@title = "Conatct"

	erb :contact
end

get '/form' do
	@title = "Conatct"

	erb :form
end




