class DjsController < ApplicationController

  #before_action :set_dj, except: [:index, :create]

  def index
    @djs = current_user.djs
    #@djs = Dj.all
  end

  def new
    @dj = current_user.Dj.new
  end


  def show

  end

  def create

    @dj = Dj.new(dj_params)
    @dj.manager_id = current_user.id


    if @dj.save
      puts "works successfully"
      redirect_to djs_path(@dj)
    else
      render 'new'
    end
  end

  def listings
    @dj = Dj.find(params[:id])
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
