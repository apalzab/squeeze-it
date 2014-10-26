class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @squeezes = @user.squeezes
  end
end
