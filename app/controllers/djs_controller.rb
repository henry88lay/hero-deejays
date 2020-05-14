class DjsController < ApplicationController
  def index
    @djs = Dj.all
  end

  def show
    @dj = Dj.find(params[:id])
  end

  def create
    @dj = Dj.new(dj_params)
    @dj.save

    redirect_to user_path(@dj)
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

  def destroy 
    @dj = Dj.find(params[:id]) 
    @dj.destroy 
    redirect_to dj_path(@dj.user) 
  end 

  private

  def dj_params
      params.require(:dj).permit(:name, :email, :dj_price, :genre, :description)
  end
end
