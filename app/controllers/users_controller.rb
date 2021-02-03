class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @muscles = @user.muscles
    @favorite_muscles = @user.favorite_muscles
  end
end
