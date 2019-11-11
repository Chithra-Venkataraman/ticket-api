class NotificationJob
  include Sidekiq::Worker

  def perform(seat_number, row, show_time, theater_name, movie_name)
    puts(%{
    Hi,
      Thank you for booking!
      Your booking details movie: #{movie_name} on #{show_time} at #{theater_name} and your seat: #{row}#{seat_number}.
      Thanks.
})
  end
end
