get '/posts' do
  @posts = Post.all
  erb :index
end

# Should only be able to add a new post if a logged in user
get '/posts/new' do
  erb :'posts/new'
end

get '/posts/:id' do
  @post = Post.find(params[:id])
  erb :'/posts/show'
end
