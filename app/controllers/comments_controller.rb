class CommentsController < ApplicationController
    def new
        @comment = Comment.new
    end
    
    def create
        @comment = Comment.new(comment_params)
        @comment.user_id = session[:user_id]
        @comment.picture_id = session[:picture_id]
        @comment.save
         redirect_to picture_path(session[:user_id])
    end

    def destroy
        @comment = Comment.find(params[:id])
        @picture = @comment.picture
        @comment.destroy
        redirect_to picture_path(@picture)
      end

private

    def comment_params
    params.require(:comment).permit(:user_id, :picture_id, :content)
    end
end
