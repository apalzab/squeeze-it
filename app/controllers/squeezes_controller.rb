class SqueezesController < ApplicationController

  before_filter :authenticate_user!

  def index
    # raise 'ok'
    if params[:id].nil?
      @user = current_user
      @last_squeezes = Squeeze.publish.recents.limit(30)
      # fresh_when(@last_squeezes)
    else
      @user = User.find(params[:id])
      @last_squeezes = @user.squeezes.publish.recents.limit(10)
      # fresh_when(@last_squeezes)
    end
  end

  def new
    @squeeze = Squeeze.new
  end

  def edit
    @squeeze = Squeeze.find(params[:id])
  end

  def update
    raise 'ok'
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
