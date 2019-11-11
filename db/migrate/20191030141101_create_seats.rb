class CreateSeats < ActiveRecord::Migration[6.0]
  def change
    create_table :seats do |t|
      t.string :row
      t.numeric :seat_number
      t.numeric :price
      t.string :_class
      t.string :status
=begin
      t.user //in future we can have user object who booked
=end
      t.belongs_to :show

      t.timestamps
    end
  end
end
