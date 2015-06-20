class PostsController < ApplicationController
    
    #READ ACTIONS
    def index
        @posts = Post.all
        render "index.html.erb"
    end
    
    def show
        id = params["id"]
        @post = Post.find(id)
        render "show.html.erb"
    end
    
    def select_post
        params.require(:post).require(:id)
    end
    
    #create new posts
    def new
        @post = Post.new
        render "new.html.erb"
    end
    
    def create
        @post = Post.create(post_params)
        if @post.valid?
        redirect_to post_path(@post)
    else
        redirect_to new_post_path
        end
    end
    
    def post_params
        return params.require(:post).permit(:title, :body)
    end
    
end 