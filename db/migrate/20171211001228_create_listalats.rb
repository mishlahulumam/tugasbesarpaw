class CreateListalats < ActiveRecord::Migration[5.1]
  def change
    create_table :listalats do |t|
      t.string :nama_alat
      t.string :jenis
      t.string :tipe
      t.integer :harga_sewa

      t.timestamps
    end
  end
end