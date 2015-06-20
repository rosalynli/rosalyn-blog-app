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

end
