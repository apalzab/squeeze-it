class SqueezesController < ApplicationController

  before_filter :authenticate_user!

  def index
    @last_squeezes = Squeeze.order(created_at: :desc).limit(30)
  end

  def new
  end
end
