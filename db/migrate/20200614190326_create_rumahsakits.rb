class CreateRumahsakits < ActiveRecord::Migration[6.0]
  def change
    create_table :rumahsakits do |t|
      t.string :nama_rs
      t.string :alamat_rs
      t.string :no_telp
      t.integer :gol_Apos
      t.integer :gol_Bpos
      t.integer :gol_Opos
      t.integer :gol_ABpos
      t.integer :gol_Aneg
      t.integer :gol_Bneg
      t.integer :gol_Oneg
      t.integer :gol_ABneg
      t.timestamps
    end
  end
end
