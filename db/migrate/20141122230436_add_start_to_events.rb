class AddStartToEvents < ActiveRecord::Migration
  def change
    add_column :events, :start, :string
    add_column :events, :end, :string
  end
end
