get '/users' do
	@user = User.find_or_create_by(name: params[:name], password: params[:password])
	@user.latitude = params[:latitude]
	@user.longitude = params[:longitude]
	erb :users
end

post '/users' do
	@user = User.create(name: params[:name], password: params[:password])
	# @users = User.where('updated_at >= ?', Time.now - 60)
	@user.to_json
end

put '/users' do
	@user = User.find_by(name: params[:name])
	@user.latitude = params[:latitude]
	@user.longitude = params[:longitude]
	@user.name = "name_changed"
	@user.save
end