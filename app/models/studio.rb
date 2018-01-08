class Studio < ApplicationRecord
	validates :kode, presence: true
	validates :tanggal, presence: true
	validates :waktu, presence: true
	validates :nama, presence: true
	validates :nama_band, presence: true
	validates :no_hp, presence: true
	validates :waktu2, presence: true
end