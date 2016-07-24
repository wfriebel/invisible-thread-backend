get '/actors' do
  "This is an actor's home page"
end


# Sign up
get '/actors/new' do
end

post '/actors' do
  # create a new actor and save to the database
  redirect '/actors'
end

# Log in
get '/sessions/new' do
end

post '/sessions' do
end

# Log out
delete '/sessions/:id' do
end




