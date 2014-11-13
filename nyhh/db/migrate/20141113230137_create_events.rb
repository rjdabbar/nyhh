class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :event_name
      t.string :location
      t.string :borough
      t.string :start_time
      t.string :end_time
      t.string :ticket_price
      t.string :ticket_add_1
      t.string :ticket_add_2
      t.boolean :featured

      t.timestamps
    end
  end
end
