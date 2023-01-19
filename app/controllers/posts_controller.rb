class PostsController < ApplicationController
rescue_from ActiveRecord::RecordNotFound, with: :record_not_found_method

    def index
        posts = Post.all
        render json: posts
    end

    def show 
        @comment = @post.comments.build
    end
    

    def create
        post = Post.create(post_params)
        render json: post, status: :created
    end

    def update
        post = find_posts
        post.update!(p_params)
        render json: post
    end

    private

    def find_posts
        Post.find(params[:id])
    end

    def post_params
        params.permit(:post_title, :post_description, :post_like, :post_comment, :image)
    end

    def p_params
        params.permit(:post_comment)
    end

    def record_not_found_method
        render json: {error: "Post not found"}, status: :not_found
    end


end
