# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.destroy_all

Stewie2k = User.create({first_name: 'Jake', last_name: 'Yip', age: '18', country: 'USA', ign: 'Stewie2k', ingame_role: 'Leader', email: 'stewie2k@cloud9.csgo.com', team:'Cloud9', game: 'Counter-Strike: Global Offensive'})


autimatic = User.create(first_name: "Timothy", last_name: "Ta", age: "24", country: "USA", ign: "autimatic", ingame_role: "Lurker", email: "autimatic@cloud9.csgo.com", team: "Cloud9", game: "Counter-Strike: Global Offensive")

n0thing  = User.create(first_name: "Tyler", last_name: "Latham", age: "26", country: "USA", ign: "n0thing", ingame_role: "Early fragger", email: "n0thing@cloud9.csgo.com", team: "Cloud9", game: "Counter-Strike: Global Offensive")

shroud = User.create(first_name: "Mike", last_name: "Grzesiek", age: "22", country: "Canada", ign: "shroud", ingame_role: "Rifler", email: "shroudk@cloud9.csgo.com", team: "Cloud9", game: "Counter-Strike: Global Offensive")

Skadoodle  = User.create(first_name: "Jordan", last_name: "Gilbert", age: "23", country: "USA", ign: "Skadoodle", ingame_role: "Rifler", email: "skadoodle@cloud9.csgo.com", team: "Cloud9", game: "Counter-Strike: Global Offensive")

myself = User.create(last_name: "HAHA")
