class Rumahsakit < ApplicationRecord
    validates :nama_rs, presence: true
    validates :alamat_rs, presence: true
    validates :no_telp, presence: true
    validates :gol_Apos, presence: true
    validates :gol_Bpos, presence: true
    validates :gol_Opos, presence: true
    validates :gol_ABpos, presence: true
    validates :gol_Aneg, presence: true
    validates :gol_Bneg, presence: true
    validates :gol_Oneg, presence: true
    validates :gol_ABneg, presence: true
end
