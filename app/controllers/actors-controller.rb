# Sign up


# Log in



# Log out



get '/actors' do
  "This is an actor's home page"
end

post '/actors' do
  # create a new actor and save to the database
  redirect '/actors'
end
