class Listalat < ApplicationRecord
	validates :nama_alat, presence: true
	validates :jenis, presence: true
	validates :tipe, presence: true
	validates :harga_sewa, presence: true, numericality: true
end
