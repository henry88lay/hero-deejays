class DjsController < ApplicationController

  def index
    if params[:query].present?
      sql_query = "name ILIKE :query OR genre ILIKE :query"
      @djs = Dj.geocoded.where(sql_query, query: "%#{params[:query]}%")
    else
      @djs = Dj.geocoded
    end

    @markers = @djs.map do |dj|
      {
        lat: dj.latitude,
        lng: dj.longitude,
        #infoWindow: render_to_string(partial: "info_window", locals: { dj: dj }),
        #image_url: helpers.asset_url('REPLACE_THIS_WITH_YOUR_IMAGE_IN_ASSETS')
      }
    end
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
      params.require(:dj).permit(:name, :email, :dj_price, :genre, :description, :address, :image)
  end

end
