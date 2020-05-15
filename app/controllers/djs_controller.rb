class DjsController < ApplicationController
  def index
    @djs = Dj.all
  end

  def show
    @dj = Dj.find(params[:id])
  end

  def create
  @dj = Dj.new(dj_params)
  @dj.manager_id = current_user
    if @dj.save
      redirect_to dj_path(@dj)
    else
      render 'new'
    end

    # redirect_to user_path
  end

  def edit
    @dj = Dj.find(params[:id])
  end

  def new
    @dj = Dj.new
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

  def set_dj
    @dj = Dj.find(params[:id])
  end

  def dj_params
      params.require(:dj).permit(:name, :address, :email, :dj_price, :genre, :description)
  end
end
