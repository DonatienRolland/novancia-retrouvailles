puts 'destroying all activities and users'
Picture.destroy_all
User.destroy_all

donatien = User.create!(first_name: "donatien", email: "donatien@hotmail.fr", password: "password")
erwan = User.create!(first_name: "erwan", email: "erwan@hotmail.fr", password: "password")
dorian = User.create!(first_name: "dorian", email: "dorian@hotmail.fr", password: "password")

# donatien.remote_avatar_url = "http://res.cloudinary.com/dbhmjj2co/image/upload/v1515419873/Donatien_yfklfo.png"

puts "Users are created"

pitcure1 = Picture.new( score: 121)
pitcure2 = Picture.new( score: 10)

pitcure1.remote_photo_url = "http://res.cloudinary.com/dbhmjj2co/image/upload/v1515419399/city-street-typography-design_rrzkom.jpg"
pitcure2.remote_photo_url = "http://res.cloudinary.com/dbhmjj2co/image/upload/v1511522245/dnij7e10pnuy4aybwznq.jpg"

pitcure1.user = donatien
pitcure2.user = erwan

pitcure1.save!
pitcure2.save!

puts "Pictures are created"

erwan.up_votes pitcure1
donatien.up_votes pitcure1
erwan.up_votes pitcure2
dorian.up_votes pitcure2

puts 'Finished!'
