class CreateStudios < ActiveRecord::Migration[5.1]
  def change
    create_table :studios do |t|
      t.string :kode
      t.date :tanggal
      t.time :waktu
      t.string :nama
      t.string :nama_band
      t.string :no_hp

      t.timestamps
    end
  end
end
