class BookingsController < ApplicationController
  def index
    @bookings = Booking.all
  end

  def new
    @dj = Dj.find(params[:dj_id])
    @booking = Booking.new
  end

  def show
    @booking = Booking.find(params[:id])
  end

  def create

    @booking = Booking.new(booking_params)
    
    @booking.renter_id = current_user.id
    @booking.dj_id = params[:dj_id]
    @dj = Dj.find(params[:dj_id])
    @booking.total_price = @dj.dj_price
    @booking.status = "Pending"
  
    if @booking.save
      redirect_to djs_path(@dj)
    else
      render 'bookings/new'
    end
  end
  
  def destroy
    @booking = Booking.find(params[:id])
    @booking.destroy
    redirect_to booking_path(@booking.user)
  end
  private
  
  def booking_params
    params.require(:booking).permit(:start_date, :end_date)
  end
end
