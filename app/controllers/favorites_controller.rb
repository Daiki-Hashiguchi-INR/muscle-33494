class FavoritesController < ApplicationController
  def create
    favorite = current_user.favorites.build(muscle_id: params[:muscle_id])
    favorite.save
    redirect_to root_path
  end

  def destroy
    favorite = Favorite.find_by(muscle_id: params[:muscle_id], user_id: current_user.id)
    favorite.destroy
    redirect_to root_path
  end
end
