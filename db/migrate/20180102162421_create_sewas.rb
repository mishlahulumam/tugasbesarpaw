class CreateSewas < ActiveRecord::Migration[5.1]
  def change
    create_table :sewas do |t|
      t.string :nama
      t.string :univ
      t.string :no_hp
      t.string :alat
      t.string :jaminan

      t.timestamps
    end
  end
end
