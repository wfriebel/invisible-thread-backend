get '/users' do
	@user = User.create(name: "Tom", password: "123", longitude: 123.456789, latitude: -123.456789)
	@users = User.where(name: params[:name], password: params[:password])
	erb :users
end