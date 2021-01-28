class MusclesController < ApplicationController
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

  

  private
  def muscle_params
    params.require(:muscle).permit(:image, :title, :explain, :part_id, :difficult_id, :daytime).merge(user_id: current_user.id)
  end
end
