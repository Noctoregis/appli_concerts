# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Concerts.destroy_all

# suppose que des images existent dans db/restaurant-images/

def open_photo(name)
  File.open(Rails.root.join("db", "restaurant-images", name))
end

resto = Concerts.create!(name: "Persona 4",
  city: "Tokyo", artist: "Shihoko Hirata", salle: "Tokyo Metropolitan Art Theater Concert Hall",
  style: "Strip", , photo: open_photo("aux-petits-oignons.jpg"))

resto = Concerts.create!(name: "Via Italia",
  city: "Milano", artist: "Renaud Mégane", salle: "Olympia",
  style: "Strip", photo: open_photo("via-italia.jpg"))

resto = Concerts.create!(name: "Stripping Club",
  city: "Risette", artist: "Rise", salle: "Club échangiste olympique de Marseille",
  style: "Strip", date:"",
  photo: open_photo("rowing-club.jpg"))
