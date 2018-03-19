puts 'destroying all activities and users'
Picture.destroy_all
User.destroy_all

donatien = User.create!(first_name: "donatien", email: "donatien@hotmail.fr", password: "password", photo: "http://res.cloudinary.com/dbhmjj2co/image/upload/v1516102781/Donatien_tzhjk2.png")
erwan = User.create!(first_name: "erwan", email: "erwan.guillou@mail.novancia.fr", password: "password", photo: "http://res.cloudinary.com/dbhmjj2co/image/upload/v1516102781/Erwan_fytqg2.png")
dorian = User.create!(first_name: "dorian", email: "dorian.gentine@mail.novancia.fr", password: "password", photo: "http://res.cloudinary.com/dbhmjj2co/image/upload/v1516102781/Dorian_whf8ur.png")


puts "Users are created"

pitcure1 = Picture.new( score: 121)
pitcure2 = Picture.new( score: 10)


pitcure1.remote_photo_url = "http://res.cloudinary.com/dbhmjj2co/image/upload/v1517609152/c5uq8bdqhewe43cemuww.jpg"
pitcure2.remote_photo_url = "http://res.cloudinary.com/dbhmjj2co/image/upload/v1517610897/relq9mpperpivhx5vncc.jpg"


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
