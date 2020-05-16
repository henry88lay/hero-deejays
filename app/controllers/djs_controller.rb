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

    @dj = Dj.new(dj_params)
    @dj.manager_id = current_user.id

    if @dj.save
      redirect_to djs_path(@dj)
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

  # def destroy
  #   @dj = Dj.find(params[:id])
  #   @dj.destroy
  #   redirect_to dj_path(@dj.user)
  # end 


  private


  def dj_params

      params.require(:dj).permit(:name, :email, :dj_price, :genre, :description, :address)

  end
end
