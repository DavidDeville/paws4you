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

    first_shelter = Shelter.create!(name: "SPA", address: "2 avenue des saules, 59000 Lille", phone_number: "0730204569", email: "spa@gmail.com")
    second_shelter = Shelter.create!(name: "LPA", address: "2 rue esquermoise, 59000 Lille", phone_number: "09070425639", email: "lpa@gmail.com")
    third_shelter = Shelter.create!(name: "Action 4 Pets", address: "7 rue neuve, 59000 Lille", phone_number: "0715141697", email: "action4pet@gmail.com")
    fourth_shelter = Shelter.create!(name: "Les patounes des îles", address: "181 rue du ballon, 59110 La Madeleine", phone_number: "0969857541", email: "lpdi@gmail.com")
    fifth_shelter = Shelter.create!(name: "Aristocats", address: "5 pl de la République, 59000 Lille", phone_number: "0989974652", email: "aristocats@gmail.com")

    puts "Shelters created"

    #----------------------------------------Création des chiens------------------------------------------------------------------------

    puts "Creating dogs"

    pet1 = Pet.create!(name: "Cactus", age: "14/04/2022", race: "Bichon", gender: "mâle", shelter_id: first_shelter.id, category: "chien", family_friendly: true, is_adopted: false)
    file = URI.open("https://www.la-spa.fr/app/assets-spa/uploads/animals/62271/cactus-du-pays-du-bocage-62271-6388b4a637e23.jpg")
    pet1.photo.attach(io: file, filename: "Cactus", content_type: "image/jpg")
    pet1.save

    pet2 = Pet.create!(name: "Yoshi", age: "10/11/2017", race: "Akita", gender: "mâle", shelter_id: first_shelter.id, category: "chien", family_friendly: true, is_adopted: false)
    file = URI.open("https://www.la-spa.fr/app/assets-spa/uploads/animals/20776/goku-oaa18811-20776-6290a706d61b8.jpg")
    pet2.photo.attach(io: file, filename: "Yoshi", content_type: "image/jpg")
    pet2.save

    pet3 = Pet.create!(name: "Heiko", age: "01/01/2015", race: "Husky", gender: "femelle", shelter_id: second_shelter.id, category: "chien", family_friendly: true, is_adopted: false)
    file = URI.open("https://www.la-spa.fr/app/assets-spa/uploads/animals/59503/balto-59503-635045cf178ec.jpg")
    pet3.photo.attach(io: file, filename: "Heiko", content_type: "image/jpg")
    pet3.save

    pet4 = Pet.create!(name: "Bella", age: "17/12/2016", race: "Berger allemand", gender: "femelle", shelter_id: second_shelter.id, category: "chat", family_friendly: true, is_adopted: false)
    file = URI.open("https://www.la-spa.fr/app/assets-spa/uploads/animals/34209/k-you-chao11481-34209-62c57912c4b34.jpg")
    pet4.photo.attach(io: file, filename: "Bella", content_type: "image/jpg")
    pet4.save


    pet5 = Pet.create!(name: "Oli", age: "10/10/2021", race: "Berger Australien", gender: "mâle", shelter_id: first_shelter.id, category: "chien", family_friendly: true, is_adopted: false)
    file = URI.open("https://www.la-spa.fr/app/assets-spa/uploads/animals/20067/heliot-20067-61952d6306d66.jpg")
    pet5.photo.attach(io: file, filename: "Oli", content_type: "image/jpg")
    pet5.save

    pet6 = Pet.create!(name: "Toby", age: "22/11/2014", race: "Bouledogue", gender: "femelle", shelter_id: fourth_shelter.id, category: "chien", family_friendly: true, is_adopted: false)
    file = URI.open("https://www.la-spa.fr/app/assets-spa/uploads/animals/40736/bilbo-40736-62713d0373f27.jpg")
    pet6.photo.attach(io: file, filename: "Toby", content_type: "image/jpg")
    pet6.save

    pet7 = Pet.create!(name: "Biscotte", age: "16/06/2020", race: "Beagle", gender: "mâle", shelter_id: fourth_shelter.id, category: "chien", family_friendly: true, is_adopted: false)
    file = URI.open("https://www.la-spa.fr/app/assets-spa/uploads/animals/60482/rusty-60482-635ad92c8a970.jpg")
    pet7.photo.attach(io: file, filename: "Biscotte", content_type: "image/jpg")
    pet7.save

    pet8 = Pet.create!(name: "Lucky", age: "10/03/2020", race: "Labrador", gender: "femelle", shelter_id: fourth_shelter.id, category: "chien", family_friendly: true, is_adopted: false)
    file = URI.open("https://www.la-spa.fr/app/assets-spa/uploads/animals/20547/heaven-20547-61c43e4254ebb.jpg")
    pet8.photo.attach(io: file, filename: "Lucky", content_type: "image/jpg")
    pet8.save


    pet9 = Pet.create!(name: "Tommy", age: "07/15/2019", race: "Bouvier Bernois", gender: "mâle", shelter_id: third_shelter.id, category: "chien", family_friendly: true, is_adopted: false)
    file = URI.open("https://www.la-spa.fr/app/assets-spa/uploads/animals/27747/darlene-27747-623b33ced4e63.jpg")
    pet9.photo.attach(io: file, filename: "Tommy", content_type: "image/jpg")
    pet9.save

    pet10 = Pet.create!(name: "Cookie", age: "13/05/2019", race: "Dalmatien", gender: "mâle", shelter_id: third_shelter.id, category: "chien", family_friendly: true, is_adopted: false)
    file = URI.open("https://www.la-spa.fr/app/assets-spa/uploads/animals/27747/darlene-27747-623b33ced4e63.jpg")
    pet10.photo.attach(io: file, filename: "Cookie", content_type: "image/jpg")
    pet10.save

  puts "Dogs created"

    #-------------------------------------Création des chats-------------------------------------------------------------------------

    puts "Creating cats"

    pet1 = Pet.create!(name: "Tigrou", age: "14/04/2022", race: "Européen", gender: "femelle", shelter_id: fifth_shelter.id, category: "chat", family_friendly: true, is_adopted: false)
    file = URI.open("https://www.la-spa.fr/app/assets-spa/uploads/animals/63890/tony-cab1771-63890-63820ec4e617f.jpg")
    pet1.photo.attach(io: file, filename: "Tigrou", content_type: "image/jpg")
    pet1.save

    pet2 = Pet.create!(name: "Lucifer", age: "10/11/2017", race: "Européen", gender: "mâle", shelter_id: fifth_shelter.id, category: "chat", family_friendly: true, is_adopted: false)
    file = URI.open("https://www.la-spa.fr/app/assets-spa/uploads/animals/37023/ricardo-c17681-37023-625833f7ce3ae.jpg")
    pet2.photo.attach(io: file, filename: "Lucifer", content_type: "image/jpg")
    pet2.save

    pet3 = Pet.create!(name: "Luna", age: "20/03/2019", race: "Européen", gender: "femelle", shelter_id: fifth_shelter.id, category: "chat", family_friendly: true, is_adopted: false)
    file = URI.open("https://www.la-spa.fr/app/assets-spa/uploads/animals/62221/manhattan-62221-636e7a000bd01.jpg")
    pet3.photo.attach(io: file, filename: "Luna", content_type: "image/jpg")
    pet3.save

    pet4 = Pet.create!(name: "Olan", age: "06/03/2018", race: "Européen", gender: "mâle", shelter_id: fourth_shelter.id, category: "chat", family_friendly: true, is_adopted: false)
    file = URI.open("https://www.la-spa.fr/app/assets-spa/uploads/animals/61123/harmonie-61123-636286a32177c.jpg")
    pet4.photo.attach(io: file, filename: "Olan", content_type: "image/jpg")
    pet4.save

    pet5 = Pet.create!(name: "Mochi", age: "26/02/2015", race: "Siamois", gender: "femelle", shelter_id: fifth_shelter.id, category: "chat", family_friendly: true, is_adopted: false)
    file = URI.open("https://www.la-spa.fr/app/assets-spa/uploads/animals/55625/sasha-55625-63593fb867ebd.jpg")
    pet5.photo.attach(io: file, filename: "Mochi", content_type: "image/jpg")
    pet5.save

    pet6 = Pet.create!(name: "Kitty", age: "03/02/2019", race: "Européen", gender: "femelle", shelter_id: first_shelter.id, category: "chat", family_friendly: true, is_adopted: false)
    file = URI.open("https://www.la-spa.fr/app/assets-spa/uploads/animals/21002/gwapo-21002-632abef1b4c5e.jpg")
    pet6.photo.attach(io: file, filename: "Kitty", content_type: "image/jpg")
    pet6.save

    pet7 = Pet.create!(name: "Filou", age: "19/04/2021", race: "Européen", gender: "mâle", shelter_id: first_shelter.id, category: "chat", family_friendly: true, is_adopted: false)
    file = URI.open("https://www.la-spa.fr/app/assets-spa/uploads/animals/61138/sunfyre-61138-63628e04011d3.jpg")
    pet7.photo.attach(io: file, filename: "Filou", content_type: "image/jpg")
    pet7.save


    pet8 = Pet.create!(name: "Garfield", age: "07/01/2019", race: "Européen", gender: "mâle", shelter_id: second_shelter.id, category: "chat", family_friendly: true, is_adopted: false)
    file = URI.open("https://www.la-spa.fr/app/assets-spa/uploads/animals/43527/roose-43527-629b26d511b35.jpg")
    pet8.photo.attach(io: file, filename: "Garfield", content_type: "image/jpg")
    pet8.save

    pet9 = Pet.create!(name: "Roméo", age: "04/15/2016", race: "Européen", gender: "mâle", shelter_id: second_shelter.id, category: "chat", family_friendly: true, is_adopted: false)
    file = URI.open("https://www.la-spa.fr/app/assets-spa/uploads/animals/58155/tazi-58155-634037af3326f.jpg")
    pet9.photo.attach(io: file, filename: "Roméo", content_type: "image/jpg")
    pet9.save


    pet10 = Pet.create!(name: "Looping", age: "13/05/2019", race: "Européen", gender: "mâle", shelter_id: third_shelter.id, category: "chat", family_friendly: true, is_adopted: false)
    file = URI.open("https://www.la-spa.fr/app/assets-spa/uploads/animals/57297/crapouille-cha15649-57297-6338a1cf00fe0.jpg")
    pet10.photo.attach(io: file, filename: "Looping", content_type: "image/jpg")
    pet10.save

    puts "Cats created"


    #---------------------------------Création des list pets------------------------------------------------------------------------

    puts "Creating list pets"

    ListPet.create!(pet_id: pet1.id, user_id: first_user.id, liked: true)
    ListPet.create!(pet_id: pet2.id, user_id: second_user.id, liked: false)
    ListPet.create!(pet_id: pet3.id, user_id: third_user.id, liked: true)
    ListPet.create!(pet_id: pet4.id, user_id: fourth_user.id, liked: false)
    ListPet.create!(pet_id: pet5.id, user_id: fifth_user.id, liked: true)

    puts "Lists created"
