class SqueezesController < ApplicationController

  before_filter :authenticate_user!

  def index
    @last_squeezes = Squeeze.order(created_at: :desc).limit(30)
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
  end

  private
  def squeeze_params
    params.require(:squeeze).permit(:title, :content)
  end

end
