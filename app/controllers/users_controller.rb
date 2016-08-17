get '/users' do
	@users = User.where(name: params[:name], password: params[:password])
end