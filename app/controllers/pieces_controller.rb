class PiecesController < ApplicationController
  before_action :set_piece, only: [:edit, :update]

  def index
    @pieces = Piece.all
  end

  def new
    @piece = Piece.new
  end

  def create
    @piece = Piece.new(pieces_params)
    if @piece.save
      redirect_to pieces_path, notice: "新たな曲を登録しました！"
    else
      render :new
    end
  end

  def edit
  end

  

  private
    def pieces_params
      params.require(:piece).permit(:title, :composer, :arranger, :publisher)
    end

    def set_piece
      @piece = Piece.find(params[:id])
    end
end
