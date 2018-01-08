class AddNohpToUsers < ActiveRecord::Migration[5.1]
  def change
  	add_column :users, :nohp, :string
  end
end
