# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
18.times do
    Rumahsakit.create({
        nama_rs: Faker::Company.name,
        alamat_rs: Faker::Address.full_address,
        no_telp: Faker::PhoneNumber.cell_phone,
        gol_Apos: Faker::Blood.group,
        gol_Bpos: Faker::Blood.group,
        gol_Opos: Faker::Blood.group,
        gol_ABpos: Faker::Blood.group,
        gol_Aneg: Faker::Blood.group,
        gol_Bneg: Faker::Blood.group,
        gol_Oneg: Faker::Blood.group,
        gol_ABneg: Faker::Blood.group,
    })
end