get '/posts/:key/edit' do
	@post = Post.find_by_secret_key(params[:key])
	puts @post
	erb :edit_post
end

post '/posts/:id' do
	@post = Post.find(params[:id])
	post_attrs = params[:post]
	@post.update_attributes(post_attrs)
	@post.save
	redirect "posts/#{@post.id}"
end

get '/posts/:id' do
	@post = Post.find(params[:id])
	erb :display_post
end