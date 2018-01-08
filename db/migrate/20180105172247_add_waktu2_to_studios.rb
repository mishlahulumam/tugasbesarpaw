class AddWaktu2ToStudios < ActiveRecord::Migration[5.1]
  def change
    add_column :studios, :waktu2, :string
  end
end
