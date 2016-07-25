get '/users' do
  redirect '/login' unless session[:user_id]
  @users = User.all
  erb :'users/index'
end

post '/users' do
  # create a new actor and save to the database
  user = User.create(params[:user])
  if user.valid?
    redirect "/users/#{user.id}"
  else
    status 422
    @errors = user.errors.full_messages
    erb :'/users/new'
  end
end

# Sign up
get '/users/new' do
  "Hello World"
  @user = User.new
  erb :'/users/new'
end

get '/users/:id' do
  @user = User.find(params[:id])
  erb :'/users/show'
end




