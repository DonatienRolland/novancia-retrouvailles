puts 'destroying all activities and users'
Activity.destroy_all
User.destroy_all

# puts 'creating users'
# seb = User.create!(first_name: "Seb", vote:"Soiree de BDE")
# doun = User.create!(first_name: "Doun", vote:"Soiree total Impor")

puts 'creating activities'
soiree_bde = Activity.create!(title: "Soiree de BDE", descritpion: "Amzing amazing party just for you guys! Starting directly after the traditional cocktail and ending until the sun come back", image: "https://api.themeetapp.com/seo/eventOGImage/2359167", nb_vote: 12)
soiree_impro = Activity.create!(title: "Soiree total Impor", descritpion: "Let's make our night an incredible moment by making it from scratch", image: "https://piximus.net/media/3703/amazing-night-time-photos-9.jpg", nb_vote: 55)
je_me_casse = Activity.create!(title: "Tg je me casse", descritpion: "Let's make our night an incredible moment by making it from scratch", image: "https://i.ytimg.com/vi/6s8CKjKMA_Y/hqdefault.jpg", nb_vote: 2)
