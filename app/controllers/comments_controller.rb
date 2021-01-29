class CommentsController < ApplicationController
  def create
    @comment = Comment.new(comment_params)
    if @comment.save
      redirect_to muscle_path(@comment.muscle)
    else
      @muscle = @comment.muscle
      @comments = @muscle.comments
      render "muscles/show"
    end
  end

  private
  def comment_params
    params.require(:comment).permit(:text).merge(user_id: current_user.id, muscle_id: params[:muscle_id])
  end
end
