class Sewa < ApplicationRecord
	validates :nama, presence: true
	validates :univ, presence: true
	validates :no_hp, presence: true
	validates :alat, presence: true
	validates :jaminan, presence: true
end
