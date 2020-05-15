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
    set_dj
  end

  def create
    #@user = User.find(params[:id])
    @dj = Dj.new(dj_params)
    @dj.user = @current_user
    if @dj.save
      puts "works successfully"
      redirect_to djs_path(@dj)
    else
      render 'new'
    end

    # redirect_to user_path
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

  def set_dj
    @dj = Dj.find(params[:id])
  end

  def dj_params
      params.require(:dj).permit(:name, :address, :email, :dj_price, :genre, :description)
  end
end
