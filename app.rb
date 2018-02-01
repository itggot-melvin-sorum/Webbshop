class App < Sinatra::Base

	get('/') do
		'Hemskärm!'
		slim(:home)
	end
	
	get('/login') do
		slim(:login)
	end

	post('login') do
		db = SQLite3::Database.new('db/webshop.sqlite')
		username = params["username"]
		password = params["password"]

		result = db.execute("SELECT id, password_digest FROM user WHERE username=?", [username])

		if result.empty?
			slim(:no_login)
		end
			
			
		end
	end
end           

