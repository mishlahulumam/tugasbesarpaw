class AddStatusToListalats < ActiveRecord::Migration[5.1]
  def change
    add_column :listalats, :status, :integer, default: 1
  end
end
