class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @muscles = @user.muscles
  end
end
