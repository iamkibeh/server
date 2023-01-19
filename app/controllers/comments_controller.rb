class CommentsController < ApplicationController
  def index
    comments = Comment.all
    render json: comments
  end

  def show
    comments = Comment.all
    render json: comments
  end

  def create
    @comment = Comment.create(comment_params.merge(user_id: @user.id))

    respond_to do |format|
       if @comment.save
         format.html { redirect_to @comment.post, notice: "Comment was successfully created." }
       else
         format.html { render :new, status: :unprocessable_entity }
       end
    end
  end

  def destroy
    comments = Comment.find(params[:id])
    comments.destroy
    head :no_content
  end

  private

  def comments_params
    params.requrie(:comment).permit(:post_id, :text)
  end
end
