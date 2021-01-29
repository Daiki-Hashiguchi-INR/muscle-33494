class MusclesController < ApplicationController
  before_action :authenticate_user!, only: [:new, :edit, :destroy]
  before_action :set_muscle, only: [:show, :edit, :update]

  def index
    @muscles = Muscle.all
  end

  def new
    @muscle = Muscle.new
  end

  def create
    @muscle = Muscle.new(muscle_params)
    if @muscle.save
      redirect_to root_path
    else
      render :new
    end
  end

  def show
    @comment = Comment.new
    @comments = @muscle.comments.includes(:user)
  end

  def edit
    unless @muscle.user.id == current_user.id
      redirect_to action: :index
    end
  end

  def update
    if @muscle.update(muscle_params)
      redirect_to muscle_path
    else
      render :edit
    end
  end

  def destroy
    muscle =Muscle.find(params[:id])
    muscle.destroy
    redirect_to root_path
  end

  private
  def muscle_params
    params.require(:muscle).permit(:image, :title, :explain, :part_id, :difficult_id, :daytime).merge(user_id: current_user.id)
  end

  def set_muscle
    @muscle = Muscle.find(params[:id])
  end
end
