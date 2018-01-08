class CreateTracks < ActiveRecord::Migration[5.1]
  def change
    create_table :tracks do |t|
      t.date :tanggal
      t.string :nama
      t.string :nama_band
      t.string :no_hp

      t.timestamps
    end
  end
end
