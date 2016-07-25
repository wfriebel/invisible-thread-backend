get '/session-viewer' do
  session.inspect
end

get '/login' do
  if request.xhr?
    erb :'/sessions/login', layout: false
  else
    erb :'/sessions/login'
  end
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
