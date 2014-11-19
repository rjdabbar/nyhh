class RemoveApprovedFromEvents < ActiveRecord::Migration
  def change
    remove_column :events, :approved, :string
  end
end
