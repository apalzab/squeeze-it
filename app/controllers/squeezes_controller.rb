class SqueezesController < ApplicationController

  before_filter :authenticate_user!

  def index
      @user = current_user
      @last_squeezes = Squeeze.publish.recents.limit(30)
  end

  def new
    @squeeze = Squeeze.new
  end

  def edit
    @squeeze = Squeeze.find(params[:id])
  end

  def update
    @squeeze = Squeeze.find(params[:id]).update_attributes!(squeeze_params)
    render 'show'
  end

  def create
    @squeeze = current_user.squeezes.create(squeeze_params)
    redirect_to @squeeze
  end

  def show
    @squeeze = Squeeze.find(params[:id])
  end

  private
  def squeeze_params
    params.require(:squeeze).permit(:title, :content, :publish)
  end

end
