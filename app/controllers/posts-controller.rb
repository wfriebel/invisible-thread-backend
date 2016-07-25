get '/posts' do
  @posts = Post.order(:created_at)
  erb :index
end

# Should only be able to add a new post if a logged in user
get '/posts/new' do
  if request.xhr?
    erb :'/posts/new', layout: false
  else
    erb :'/posts/new'
  end
end

post '/posts' do
  post = Post.new(params[:post])
  post.user_id = session[:user_id]
  if post.save
    redirect "/users/#{post.user_id}"
  else
    #status 422
    #@errors = user.errors.full_messages
    #erb :'/users/new'
  end
end

get '/posts/:id' do
  @post = Post.find(params[:id])
  erb :'/posts/show'
end
