# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

user = User.create(email: "haseeb.ahmad717@gmail.com")

option1 = PurchaseOption.create(price: 2.99,video_type: "SD") 
option2 = PurchaseOption.create(price: 3.99,video_type: "HD") 

movie = Item.create(title: "Behind Enemy Lines",plot: "Action",item_type: "Movie")
season = Item.create(title: "Game of Thrones",plot: "Action",item_type: "Season",serial_number: 1)

Episode.create(title: "GOT 1",plot: "Action",item_id: season.id)
Episode.create(title: "GOT 2",plot: "Action",item_id: season.id)
Episode.create(title: "GOT 3",plot: "Action",item_id: season.id)

purchase = Purchase.create(:item_id=>movie.id,:user_id=>user.id,:purchase_option_id=>option2.id)
