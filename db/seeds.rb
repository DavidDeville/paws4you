# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
require "open-uri"

puts "Destroying List_pets.."
ListPet.destroy_all
puts "List pets destroyed"

puts "Destroying Pets.."
Pet.destroy_all
puts "Pets destroyed"

puts "Destroying Shelters.."
Shelter.destroy_all
puts "Shelters destroyed"

puts "Destroying Users.."
User.destroy_all
puts "Users destroyed"

lorem = "Sapristi de tabarnak de mautadit de bâtard de mosus de caltor de charogne de purée de cibouleau."

# 1.times do
  #--------------------------------------------------Création des users--------------------------------------------------------------

    puts "Creating users"

    first_user = User.create!(first_name: "Marine", last_name: "Durant", city: "Lille", email: "marine@gmail.com", password: "123456", phone_number: "0808080808", age: 22, situation: "seul", has_garden: true, dog_preferences: true, cat_preferences: false)
    second_user = User.create!(first_name: "Louis", last_name: "Dupuis", city: "Paris", email: "louis@gmail.com", password: "123456", phone_number: "0808080808", situation: "couple", age: 22, has_garden: false, dog_preferences: false, cat_preferences: true)
    third_user = User.create!(first_name: "Carole", last_name: "Dupont", city: "Strasbourg", email: "carole@gmail.com", password: "123456", phone_number: "0808080808", situation: "famille", age: 22, has_garden: true, dog_preferences: true, cat_preferences: true)
    fourth_user = User.create!(first_name: "Bertrand", last_name: "La vigne", city: "Marseille", email: "bertrand@gmail.com", password: "123456", phone_number: "0808080808", situation: "seul", age: 22, has_garden: false, dog_preferences: true, cat_preferences: false)
    fifth_user = User.create!(first_name: "Julie", last_name: "Lejeune", city: "Roubaix", email: "julie@gmail.com", password: "123456", phone_number: "0808080808", age: 22, situation: "famille", has_garden: true, dog_preferences: false, cat_preferences: true)

    puts "Users created"
    #---------------------------------------------Création des shelters-------------------------------------------------------------------

    puts "Creating shelters"

    first_shelter = Shelter.create!(name: "SPA", address: "2 avenue des saules, 59000 Lille", phone_number: "0730204569", email: "spa@gmail.com", opening_hour: "8h", closing_hour: "18h")
    second_shelter = Shelter.create!(name: "LPA", address: "2 rue esquermoise, 59000 Lille", phone_number: "09070425639", email: "lpa@gmail.com", opening_hour: "8h", closing_hour: "18h")
    third_shelter = Shelter.create!(name: "Action 4 Pets", address: "7 rue neuve, 59000 Lille", phone_number: "0715141697", email: "action4pet@gmail.com", opening_hour: "9h", closing_hour: "19h")
    fourth_shelter = Shelter.create!(name: "Les patounes des îles", address: "181 rue du ballon, 59110 La Madeleine", phone_number: "0969857541", email: "lpdi@gmail.com", opening_hour: "9h", closing_hour: "19h")
    fifth_shelter = Shelter.create!(name: "Aristocats", address: "5 pl de la République, 59000 Lille", phone_number: "0989974652", email: "aristocats@gmail.com", opening_hour: "8h", closing_hour: "18h")

    puts "Shelters created"

    #----------------------------------------Création des chiens------------------------------------------------------------------------

    puts "Creating dogs"

    pet1 = Pet.create!(name: "Happy", age: "15/06/2015", race: "Border Collie", gender: "mâle", shelter_id: first_shelter.id, category: "chien", description: lorem, family_friendly: false, is_adopted: false)
    file = URI.open("app/assets/images/Happy1.jpg")
    pet1.photos.attach(io: file, filename: "Happy1", content_type: "image/jpg")
    file = URI.open("app/assets/images/Happy2.jpg")
    pet1.photos.attach(io: file, filename: "Happy2", content_type: "image/jpg")
    pet1.save

    pet2 = Pet.create!(name: "Shenzi", age: "17/07/2017", race: "Boxer", gender: "mâle", shelter_id: first_shelter.id, category: "chien", description: lorem, family_friendly: true, is_adopted: false)
    file = URI.open("app/assets/images/Shenzi1.jpg")
    pet2.photos.attach(io: file, filename: "Shenzi1", content_type: "image/jpg")
    file = URI.open("app/assets/images/Shenzi2.jpg")
    pet2.photos.attach(io: file, filename: "Shenzi2", content_type: "image/jpg")
    pet2.save

    pet3 = Pet.create!(name: "Rexy", age: "06/01/2015", race: "Berger", gender: "femelle", shelter_id: second_shelter.id, category: "chien", description: lorem, family_friendly: true, is_adopted: false)
    file = URI.open("app/assets/images/Rexy1.jpg")
    pet3.photos.attach(io: file, filename: "Rexy1", content_type: "image/jpg")
    file = URI.open("app/assets/images/Rexy2.jpg")
    pet3.photos.attach(io: file, filename: "Rexy2", content_type: "image/jpg")
    pet3.save

    pet4 = Pet.create!(name: "Joker", age: "26/03/2013", race: "Berger allemand", gender: "mâle", shelter_id: second_shelter.id, category: "chat", description: lorem, family_friendly: false, is_adopted: false)
    file = URI.open("app/assets/images/Joker1.jpg")
    pet4.photos.attach(io: file, filename: "Joker1", content_type: "image/jpg")
    file = URI.open("app/assets/images/Joker2.jpg")
    pet4.photos.attach(io: file, filename: "Joker2", content_type: "image/jpg")
    pet4.save


    pet5 = Pet.create!(name: "Aiguillette", age: "22/11/2019", race: "Boxer", gender: "femelle", shelter_id: first_shelter.id, category: "chien", description: lorem, family_friendly: true, is_adopted: false)
    file = URI.open("app/assets/images/Aiguillette1.jpg")
    pet5.photos.attach(io: file, filename: "Aiguillette1", content_type: "image/jpg")
    file = URI.open("app/assets/images/Aiguillette2.jpg")
    pet5.photos.attach(io: file, filename: "Aiguillette2", content_type: "image/jpg")
    pet5.save

    pet6 = Pet.create!(name: "Django", age: "09/03/2014", race: "Berger belge Malinois", gender: "mâle", shelter_id: fourth_shelter.id, category: "chien", description: lorem, family_friendly: true, is_adopted: false)
    file = URI.open("app/assets/images/Django1.jpg")
    pet6.photos.attach(io: file, filename: "Django1", content_type: "image/jpg")
    file = URI.open("app/assets/images/Django2.jpg")
    pet6.photos.attach(io: file, filename: "Django2", content_type: "image/jpg")
    pet6.save

    pet7 = Pet.create!(name: "Lola", age: "21/06/2018", race: "Bichon", gender: "femelle", shelter_id: fourth_shelter.id, category: "chien", description: lorem, family_friendly: true, is_adopted: false)
    file = URI.open("app/assets/images/Lola1.jpg")
    pet7.photos.attach(io: file, filename: "Lola1", content_type: "image/jpg")
    file = URI.open("app/assets/images/Lola2.jpg")
    pet7.photos.attach(io: file, filename: "Lola2", content_type: "image/jpg")
    pet7.save

    pet8 = Pet.create!(name: "Hagrid", age: "01/01/2020", race: "Berger", gender: "mâle", shelter_id: fourth_shelter.id, category: "chien", description: lorem, family_friendly: true, is_adopted: false)
    file = URI.open("app/assets/images/Hagrid1.jpg")
    pet8.photos.attach(io: file, filename: "Hagrid1", content_type: "image/jpg")
    file = URI.open("app/assets/images/Hagrid2.jpg")
    pet8.photos.attach(io: file, filename: "Hagrid2", content_type: "image/jpg")
    pet8.save


    pet9 = Pet.create!(name: "Gamora", age: "20/03/2018", race: "Dogue", gender: "femelle", shelter_id: third_shelter.id, category: "chien", description: lorem, family_friendly: false, is_adopted: false)
    file = URI.open("app/assets/images/Gamora1.jpg")
    pet9.photos.attach(io: file, filename: "Gamora1", content_type: "image/jpg")
    file = URI.open("app/assets/images/Gamora2.jpg")
    pet9.photos.attach(io: file, filename: "Gamora2", content_type: "image/jpg")
    pet9.save

    pet10 = Pet.create!(name: "Totor", age: "02/15/2016", race: "Berger belge malinois", gender: "mâle", shelter_id: third_shelter.id, category: "chien", description: lorem, family_friendly: false, is_adopted: false)
    file = URI.open("app/assets/images/Totor1.jpg")
    pet10.photos.attach(io: file, filename: "Totor1", content_type: "image/jpg")
    file = URI.open("app/assets/images/Totor2.jpg")
    pet10.photos.attach(io: file, filename: "Totor2", content_type: "image/jpg")
    pet10.save

  puts "Dogs created"

    #-------------------------------------Création des chats-------------------------------------------------------------------------

    puts "Creating cats"

    pet1 = Pet.create!(name: "Flocon", age: "06/06/2018", race: "Européen", gender: "mâle", shelter_id: fifth_shelter.id, category: "chat", description: lorem, family_friendly: true, is_adopted: false)
    file = URI.open("app/assets/images/Flocon1.jpg")
    pet1.photos.attach(io: file, filename: "Flocon1", content_type: "image/jpg")
    file = URI.open("app/assets/images/Flocon2.jpg")
    pet1.photos.attach(io: file, filename: "Flocon2", content_type: "image/jpg")
    pet1.save

    pet2 = Pet.create!(name: "Karma", age: "09/09/2019", race: "Européen", gender: "femelle", shelter_id: fifth_shelter.id, category: "chat", description: lorem, family_friendly: true, is_adopted: false)
    file = URI.open("app/assets/images/Karma1.jpg")
    pet2.photos.attach(io: file, filename: "Karma1", content_type: "image/jpg")
    file = URI.open("app/assets/images/Karma2.jpg")
    pet2.photos.attach(io: file, filename: "Karma2", content_type: "image/jpg")
    pet2.save

    pet3 = Pet.create!(name: "Titeuf", age: "01/01/2008", race: "Européen", gender: "mâle", shelter_id: fifth_shelter.id, category: "chat", description: lorem, family_friendly: true, is_adopted: false)
    file = URI.open("app/assets/images/Titeuf1.jpg")
    pet3.photos.attach(io: file, filename: "Titeuf1", content_type: "image/jpg")
    file = URI.open("app/assets/images/Titeuf2.jpg")
    pet3.photos.attach(io: file, filename: "Titeuf2", content_type: "image/jpg")
    pet3.save

    pet4 = Pet.create!(name: "Sacha", age: "01/10/2014", race: "Européen", gender: "mâle", shelter_id: fourth_shelter.id, category: "chat", description: lorem, family_friendly: true, is_adopted: false)
    file = URI.open("app/assets/images/Sacha1.jpg")
    pet4.photos.attach(io: file, filename: "Sacha1", content_type: "image/jpg")
    file = URI.open("app/assets/images/Sacha2.jpg")
    pet4.photos.attach(io: file, filename: "Sacha2", content_type: "image/jpg")
    pet4.save

    pet5 = Pet.create!(name: "Tisha", age: "05/06/2022", race: "Européen", gender: "femelle", shelter_id: fifth_shelter.id, category: "chat", description: lorem, family_friendly: true, is_adopted: false)
    file = URI.open("app/assets/images/Tisha1.jpg")
    pet5.photos.attach(io: file, filename: "Tisha1", content_type: "image/jpg")
    file = URI.open("app/assets/images/Tisha2.jpg")
    pet5.photos.attach(io: file, filename: "Tisha2", content_type: "image/jpg")
    pet5.save

    pet6 = Pet.create!(name: "Papaya", age: "01/11/2020", race: "Européen", gender: "femelle", shelter_id: first_shelter.id, category: "chat", description: lorem, family_friendly: true, is_adopted: false)
    file = URI.open("app/assets/images/Papaya1.jpg")
    pet6.photos.attach(io: file, filename: "Papaya1", content_type: "image/jpg")
    file = URI.open("app/assets/images/Papaya2.jpg")
    pet6.photos.attach(io: file, filename: "Papaya2", content_type: "image/jpg")
    pet6.save

    pet7 = Pet.create!(name: "Yoshi", age: "01/06/2022", race: "Européen", gender: "mâle", shelter_id: first_shelter.id, category: "chat", description: lorem, family_friendly: true, is_adopted: false)
    file = URI.open("app/assets/images/Yoshi1.jpg")
    pet7.photos.attach(io: file, filename: "Yoshi1", content_type: "image/jpg")
    file = URI.open("app/assets/images/Yoshi2.jpg")
    pet7.photos.attach(io: file, filename: "Yoshi2", content_type: "image/jpg")
    pet7.save


    pet8 = Pet.create!(name: "Musti", age: "01/12/2021", race: "Européen", gender: "femelle", shelter_id: second_shelter.id, category: "chat", description: lorem,  family_friendly: true, is_adopted: false)
    file = URI.open("app/assets/images/Musti1.jpg")
    pet8.photos.attach(io: file, filename: "Musti1", content_type: "image/jpg")
    file = URI.open("app/assets/images/Musti2.jpg")
    pet8.photos.attach(io: file, filename: "Musti2", content_type: "image/jpg")
    pet8.save

    pet9 = Pet.create!(name: "Diablo", age: "23/12/2015", race: "Européen", gender: "mâle", shelter_id: second_shelter.id, category: "chat", description: lorem, family_friendly: true, is_adopted: false)
    file = URI.open("app/assets/images/Diablo1.jpg")
    pet9.photos.attach(io: file, filename: "Diablo1", content_type: "image/jpg")
    file = URI.open("app/assets/images/Diablo2.jpg")
    pet9.photos.attach(io: file, filename: "Diablo2", content_type: "image/jpg")
    pet9.save


    pet10 = Pet.create!(name: "Rouka", age: "25/07/2022", race: "Européen", gender: "mâle", shelter_id: third_shelter.id, category: "chat", description: lorem, family_friendly: true, is_adopted: false)
    file = URI.open("app/assets/images/Rouka1.jpg")
    pet10.photos.attach(io: file, filename: "Rouka1", content_type: "image/jpg")
    file = URI.open("app/assets/images/Rouka2.jpg")
    pet10.photos.attach(io: file, filename: "Rouka2", content_type: "image/jpg")
    pet10.save

    puts "Cats created"


    #---------------------------------Création des list pets------------------------------------------------------------------------

    puts "Creating list pets"

    ListPet.create!(pet_id: pet1.id, user_id: first_user.id, liked: true)
    ListPet.create!(pet_id: pet2.id, user_id: first_user.id, liked: false)
    ListPet.create!(pet_id: pet2.id, user_id: second_user.id, liked: false)
    ListPet.create!(pet_id: pet3.id, user_id: third_user.id, liked: true)
    ListPet.create!(pet_id: pet4.id, user_id: fourth_user.id, liked: false)
    ListPet.create!(pet_id: pet5.id, user_id: fifth_user.id, liked: true)

    puts "Lists created"
