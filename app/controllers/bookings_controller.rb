class BookingController < ApplicationController
  def index
    @booking = Booking.all
  end

  def show
    @booking = Booking.find(params[:id])
  end

  def create
    @dj = Dj.find(params[:renter_id])
    @booking = Booking.new(booking_params)
    @booking.user = current_user
    authorize @booking
    @booking.dj = @dj

    if @booking.save
      redirect_to booking_path(@booking.user)
    else
      render 'booking/show'
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
