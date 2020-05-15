class DjsController < ApplicationController
  #before_action :set_dj, only: [:index, :create, :update]
  before_action :authenticate_user!

  def index
    @djs = policy_scope(Dj)
  end

  def new
    @dj = current_user.djs.new
    authorize @dj
  end

  def show
  end

  def create
    #@user = User.find(params[:id])
    @dj = current_user.djs.new(dj_params)
    authorize @dj
    if @dj.save
      redirect_to @dj
    else
      render 'new'
    end
  end

  def edit
    @dj = Dj.find(params[:id])
  end

  def update
    if @dj.update(dj_params)
      redirect_to dj_path
    else
      render :edit
    end
  end

  private


  def dj_params
      params.require(:dj).permit(:name, :address, :email, :dj_price, :genre, :description)
  end

  def set_dj
    @dj = Dj.find(params[:id])
    authorize @dj
  end
end
