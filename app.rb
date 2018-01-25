class App < Sinatra::Base

	get '/' do
		'Hemskärm!'
		slim(:home)
	end
	
	get '/login' do
		slim(:login)
	end
end           

