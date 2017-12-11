class AddStatusToStudios < ActiveRecord::Migration[5.1]
  def change
    add_column :studios, :status, :integer, default: 1
  end
end
