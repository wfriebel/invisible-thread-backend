get '/users' do
  "This is an actor's home page"
end


# Sign up
get '/users/new' do
  @user = Actor.new
  erb :'/users/new'
end

post '/users' do
  # create a new actor and save to the database
  redirect '/users'
end

# Log in
get '/sessions/new' do
end

post '/sessions' do
end

# Log out
delete '/sessions/:id' do
end




