#This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

#### Create users
##create_table "users", force: :cascade do |t|
#  t.string   "first_name"
#  t.string   "last_name"
#  t.string   "email"
#  t.string   "phone_number"
#  t.string   "coachID"
#  t.integer  "age"
#  t.string   "region"
#  t.integer  "player_id"
#  t.datetime "created_at",   null: false
#  t.datetime "updated_at",   null: false
#  t.index ["player_id"], name: "index_users_on_player_id"
#end



####     Users    ####

####-------   Cloud 9
Stewie2k = User.create({first_name: 'Jake', last_name: 'Yip', age: '18', region: 'USA', email: 'stewie2k@cloud9.csgo.com', player_id: ''})

autimatic = User.create(first_name: "Timothy", last_name: "Ta", age: "24", region: "USA", email: "autimatic@cloud9.csgo.com", player_id:" ")

n0thing  = User.create(first_name: "Tyler", last_name: "Latham", age: "26", region: "USA",email: "n0thing@cloud9.csgo.com", player_id: " ")

shroud = User.create(first_name: "Mike", last_name: "Grzesiek", age: "22", region: "Canada",email: "shroudk@cloud9.csgo.com",player_id:" ")

Skadoodle  = User.create(first_name: "Jordan", last_name: "Gilbert", age: "23", region: "USA",email: "skadoodle@cloud9.csgo.com", player_id: " ")
####     Coach   ####
kaniggitlol = User.create(first_name: "Danan", last_name: "Flander", age: "24", region: "USA",email: "kaniggit@cloud9.csgo.com", player_id: " ",coachID: "CS1111")

####-------   NiP
f0rest = User.create(first_name: "Patrik", last_name: "Lindberg", age: "28", region: "Sweden", email: "f0rest@nip.csgo.com", player_id: " ")

GeT_RiGhT = User.create(first_name: "Christopher", last_name: "Alesund", age: "26", region: "Sweden",email: "getright@nip.csgo.com", player_id: " ")

friberg = User.create(first_name: "Adam", last_name: "Friberg", age: "25", region: "Sweden",email: "friberg@nip.csgo.com", player_id: " ")

Xizt = User.create(first_name: "Richard", last_name: "Landstrorm", age: "25", region: "Sweden",email: "xizt@nip.csgo.com", player_id: " ")

pyth = User.create(first_name: "Jacob", last_name: "Mourujarvi", age: "23", region: "Sweden",email: "pyth@nip.csgo.com", player_id: " ")

####    Coach    ####
THREAT = User.create(first_name: "Bjorn", last_name: "Pers", age: "28", region: "Sweden",email: "bjornpers@nip.csgo.com", player_id: " ",coachID: "CS1112")


####-----  SKT T1
Duke = User.create(first_name: "Ho-Seong", last_name: "Lee", region: "S.Korea", email: "duke@skt.lol.com", player_id: " ")

Blank = User.create(first_name: "Sun-gu", last_name: "Kang", region: "S.Korea", email: "blank@skt.lol.com", player_id: " ")

Faker = User.create(first_name: "Sang-hyeok", last_name: "Lee", region: "S.Korea", email: "faker@skt.lol.com", player_id: " ")

Bang = User.create(first_name: "Jun-sik", last_name: "Bae", region: "S.Korea", email: "bang@skt.lol.com", player_id: " ")

Wolf = User.create(first_name: "Jae-wan", last_name: "Lee", region: "S.Korea", email: "wolf@skt.lol.com", player_id: " ")

###     Coach      ####
KkOma = User.create(first_name: "Jeong-gyun", last_name: "Kim",region: "S.Korea",email: "kkoma@skt.lol.com", player_id: " ",coachID: "Lol1111")



####-----    Team Solomid
Hauntzer = User.create(first_name: "Kevin", last_name: "Yarnell", region: "USA",email: "hauntzer@tsm.lol.com", player_id: " ")

Svenskeren = User.create(first_name: "Dennis", last_name: "Johnsen", region: "Denmark", email: "svenskeren@tsm.lol.com", player_id: " ")

Bjergsen= User.create(first_name: "Soren", last_name: "Bjerg", region: "Denmark", email: "bjersen@tsm.lol.com", player_id: " ")

Biofrost = User.create(first_name: "Vincent", last_name: "Wang", region: "China", email: "biofrost@tsm.lol.com", player_id: " ")

Doublelift = User.create(first_name: "Yiliang", last_name: "Peng", region: "USA", email: "doublelift@tsm.lol.com", player_id: " ")

####     Coach   ####
Parthenaan = User.create(first_name: "Parth", last_name: "Naidu",region: "India",email: "parthenaan@skt.lol.com", player_id: " ",coachID: "Lol1112")




#### create_table "players", force: :cascade do |t|
#  t.string   "ign"
#  t.integer  "age"
#  t.string   "country"
#  t.string   "in_game_role"
#  t.integer  "team_id"
#  t.datetime "created_at",   null: false
#  t.datetime "updated_at",   null: false
#  t.index ["team_id"], name: "index_players_on_team_id"
#end

##### Players Table
#### League of Legends
####-----  SKT T1 -----
Duke = Player.create(country: "S.Korea", ign: "Duke", age: "21", in_game_role: "Top", team_id: "SKT1Lol")

Blank = Player.create(country: "S.Korea",ign: "Blank", age: "18", in_game_role: "Jungler", team_id: "SKT1Lol")

Faker = Player.create(country: "S.Korea",ign: "Faker", age: "20", in_game_role: "Mid Laner", team_id: "SKT1Lol")

Bang = Player.create(country: "S.Korea",ign: "Bang", age: "20", in_game_role: "AD Carry", team_id: "SKT1Lol")

Wolf = Player.create(country: "S.Korea",ign: "Wolf", age: "20", in_game_role: "Support", team_id: "SKT1Lol")

####-----    Team Solomid  ------
Hauntzer = Player.create(age: "21", country: "USA", ign: "Hauntzer", in_game_role:"Top", team_id:"TSMLol")

Svenskeren = Player.create(age: "21", country: "Denmark", ign: "Svenskeren", in_game_role:"Jungler", team_id:"TSMLol")

Bjergsen = Player.create(age: "20", country: "Denmark", ign: "Bjersen", in_game_role:"Mid Laner", team_id:"TSMLol")

Biofrost = Player.create(age: "19", country: "China", ign: "Biofrost", in_game_role:"Support", team_id:"TSMLol")

Doublelift = Player.create(age: "23", country: "USA", ign: "Doublelift", in_game_role:"AD Carry", team_id:"TSMLol")

#### Counter-Strike: Global Offensive
####-------   NiP   -----
f0rest = Player.create(age: "28", country: "Sweden", ign: "f0rest", in_game_role:"AWPer", team_id: "NiPCSGO")

GeT_RiGhT = Player.create(age: "28", country: "Sweden", ign: "GeT_RiGhT", in_game_role:"Leader", team_id: "NiPCSGO")

friberg = Player.create(age: "25", country: "Sweden", ign: "friberg", in_game_role:"Entry Fragger", team_id: "NiPCSGO")

Xizt = Player.create(age: "25", country: "Sweden", ign: "Xizt", in_game_role:"Rifler", team_id: "NiPCSGO")

pyth = Player.create(age: "23", country: "Sweden", ign: "pyth", in_game_role:"Rifler", team_id: "NiPCSGO")

####-------   Cloud 9 -----
Stewie2k = Player.create(age: "18", country: "USA", ign: "Stewie2k", in_game_role:"Leader", team_id:"Cloud9CSGO")

autimatic = Player.create(age: "24", country: "USA", ign: "autimatic", in_game_role:"Lurker", team_id:"Cloud9CSGO")

n0thing = Player.create(age: "26", country: "USA", ign: "n0thing", in_game_role:"Rifler", team_id:"Cloud9CSGO")

shroud = Player.create(age: "22", country: "USA", ign: "shroud", in_game_role:"Rifler", team_id:"Cloud9CSGO")

Skadoodle = Player.create(age: "23", country: "USA", ign: "Skadoodle", in_game_role:"AWPer", team_id:"Cloud9CSGO")
