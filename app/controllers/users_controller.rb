get '/users' do
	@user = User.find_or_create_by(name: params[:name], password: params[:password])
	@user.latitude = params[:latitude]
	@user.longitude = params[:longitude]
	erb :users
end

post '/users' do
	@user = User.create(name: params[:name])
	content_type: json
	{name: @user.name}.to_json
end