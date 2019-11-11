class BookController < ApplicationController
  # GET /book
  def index
    if params.has_key?(:seat_id)
      s = Seat.find_by id: params[:seat_id]
      if s.nil?
        render json: {success: false, message: 'Seat not found'}
      else
        if s.status == 'BOOKED'
          render json: {success: false, message: 'Seat already booked'}
        else
          s.status = 'BOOKED'
          s.save
=begin
          send notification through sidekiq
=end
          NotificationJob.perform_async(s.seat_number, s.row, s.show.show_time, s.show.theater.name, s.show.theater.movie.name)
          render json: {success: true, message: 'Seat booked'}
        end
      end
    else
      render json: {success: false, message: 'Seat id need to book a ticket'}
    end
  end
end
