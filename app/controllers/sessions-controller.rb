get '/session-viewer' do
  session.inspect
end

get '/login' do
  erb :'sessions/login'
end

post '/login' do
  user = User.find_by(email: params[:email])
  if user.authenticate(params[:password])
    session[:user_id] = user.id
    redirect "/users/#{user.id}"
  else
    erb :login
  end
end

get '/logout' do
  session.delete(:user_id)
  redirect '/'
end

 # Log in
# get '/sessions/new' do
# end

# post '/sessions' do
# end

# Log out
# delete '/sessions/:id' do
# end

