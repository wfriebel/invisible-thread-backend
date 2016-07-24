get '/users' do
  redirect '/login' unless session[:user_id]
  @users = User.all
  erb :'users/index'
end

post '/users' do
  # create a new actor and save to the database
  user = User.create(params[:user])
  if user.valid?
    redirect '/users'
  else
    status 422
    @errors = user.errors.full_messages
    erb :'/users/new'
  end

# Sign up
get '/users/new' do
  @user = User.new
  erb :'/users/new'
end

end

get '/users/:id' do
  @user = User.find(params[:id])
  # "This is an actor's home page"
  erb :'users/show'
end


# Log in
get '/sessions/new' do
end

post '/sessions' do
end

# Log out
# delete '/sessions/:id' do
# end




