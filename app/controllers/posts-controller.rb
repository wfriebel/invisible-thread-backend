get '/posts' do
  @posts = Post.all
  erb :index
end
