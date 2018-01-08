class Track < ApplicationRecord
	validates :tanggal, presence: true
	validates :nama, presence: true
	validates :no_hp, presence: true
end
