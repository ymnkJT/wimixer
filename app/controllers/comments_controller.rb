class CommentsController < ApplicationController
  def new
    @piece = Piece.find(params[:piece_id])
    @comment = Comment.new
  end

  def create
    @comment = current_user.comments.build(comment_params)
    @comment.piece_id = params[:piece_id]
    @piece = @comment.piece
    if @comment.save
      redirect_to piece_path(@piece), notice: "コメントを記録しました！"
    else
      render :new
    end
  end

  def edit
    @comment = Comment.find(params[:id])
    @piece = @comment.piece
  end

  def update
    @comment = Comment.find(params[:id])
    @piece = @comment.piece
    if @comment.update(comment_params)
      redirect_to piece_path(@piece), notice: "コメントを編集しました！"
    else
      render :edit
    end
  end

  def destroy
    @comment = Comment.find(params[:id])
    @piece = @comment.piece
    @comment.destroy
    redirect_to piece_path(@piece), notice: "コメントを削除しました！"
  end

  private
    def comment_params
      params.require(:comment).permit(:piece_id, :content, :play)
    end
end
