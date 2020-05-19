class DjsController < ApplicationController

  def index
    @djs = Dj.all
  end

  def new
    @dj = Dj.new
  end

  def show
    @dj = Dj.find(params[:id])
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

  def destroy
    @dj = Dj.find(params[:id])
    @dj.destroy
    redirect_to djs_path
  end


  private


  def dj_params
      params.require(:dj).permit(:name, :email, :dj_price, :genre, :description, :address)
  end

end
