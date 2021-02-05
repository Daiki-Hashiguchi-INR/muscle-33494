class FavoritesController < ApplicationController
  def create
    @muscle = Muscle.find(params[:muscle_id])
    @favorite = current_user.favorites.build(muscle_id: params[:muscle_id])
    @favorite.save
    redirect_to muscles_path
  end

  def destroy
    @muscle = Muscle.find(params[:muscle_id])
    @favorite = Favorite.find_by(muscle_id: params[:muscle_id], user_id: current_user.id)
    @favorite.destroy
    redirect_to muscles_path
  end
end
