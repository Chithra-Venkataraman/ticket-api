class CreateShows < ActiveRecord::Migration[6.0]
  def change
    create_table :shows do |t|
      t.string :name
      t.datetime :show_time
      t.belongs_to :theater

      t.timestamps
    end
  end
end
