class RemoveAvatarFromEvents < ActiveRecord::Migration
  def change
    remove_column :events, :avatar_file_name, :string
    remove_column :events, :avatar_content_type, :string
    remove_column :events, :avatar_file_size, :string
    remove_column :events, :avatar_updated_at, :datetime
    remove_column :events, :flyer_file_name, :string
    remove_column :events, :flyer_content_type, :string
    remove_column :events, :flyer_file_size, :integer
    remove_column :events, :flyer_updated_at, :datetime
  end
end
