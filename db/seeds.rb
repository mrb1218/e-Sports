#This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).

#Delete all Leagues
League.delete_all
#Create leagues
leagues = League.create([
  { id: '1', prize_money: '1000', league_name: 'League of Legends' },
  { id: '2', prize_money: '3000', league_name: 'Counter-Strike: Global Offensive' },
  { id: '3', prize_money: '5000', league_name: 'Overwatch' },
  { id: '4', prize_money: '10000', league_name: 'Dota 2' }
])

#Delete all Teams
Team.delete_all
#Create teams
teams = Team.create([
  { id: '1', bio: 'This is team 1, SKT T1', coachID: '', team_name: 'SKT T1', league_id: leagues[0].id},
  { id: '2', bio: 'This is team 2, Team Solomid', coachID: '', team_name: 'Team Solomid', league_id: leagues[0].id},
  { id: '3', bio: 'This is team 3, NiP', coachID: '', team_name: 'NiP', league_id: leagues[1].id},
  { id: '4', bio: 'This is team 4, Cloud 9', coachID: '', team_name: 'Cloud 9', league_id: leagues[1].id}
])

#Delete all Players
Player.delete_all
#Create players
players = Player.create([
  #### League of Legends
  ####-----  SKT T1 -----
  { id: '1', age: '21', country: 'S.Korea', ign: 'Duke', in_game_role: 'Top', team_id: teams[0].id },
  { id: '2', age: '18', country: 'S.Korea', ign: 'Blank', in_game_role: 'Jungler', team_id: teams[0].id },
  { id: '3', age: '20', country: 'S.Korea', ign: 'Faker', in_game_role: 'Mid Laner', team_id: teams[0].id },
  { id: '4', age: '20', country: 'S.Korea', ign: 'Bang', in_game_role: 'AD Carry', team_id: teams[0].id },
  { id: '5', age: '20', country: 'S.Korea', ign: 'Wolf', in_game_role: 'Support', team_id: teams[0].id },
  ####-----    Team Solomid  ------
  { id: '6', age: '21', country: 'USA', ign: 'Hauntzer', in_game_role:'Top', team_id: teams[1].id },
  { id: '7', age: '21', country: 'Denmark', ign: 'Svenskeren', in_game_role:'Jungler', team_id: teams[1].id },
  { id: '8', age: '20', country: 'Denmark', ign: 'Bjersen', in_game_role:'Mid Laner', team_id: teams[1].id },
  { id: '9', age: '19', country: 'China', ign: 'Biofrost', in_game_role:'Support', team_id: teams[1].id },
  { id: '10', age: '23', country: 'USA', ign: 'Doublelift', in_game_role:'AD Carry', team_id: teams[1].id },
  #### Counter-Strike: Global Offensive
  ####-------   NiP   -----
  { id: '11', age: '28', country: 'Sweden', ign: 'f0rest', in_game_role:'AWPer', team_id: teams[2].id },
  { id: '12', age: '28', country: 'Sweden', ign: 'GeT_RiGhT', in_game_role:'Leader', team_id: teams[2].id },
  { id: '13', age: '25', country: 'Sweden', ign: 'friberg', in_game_role:'Entry Fragger', team_id: teams[2].id },
  { id: '14', age: '25', country: 'Sweden', ign: 'Xizt', in_game_role:'Rifler', team_id: teams[2].id },
  { id: '15', age: '23', country: 'Sweden', ign: 'pyth', in_game_role:'Rifler', team_id: teams[2].id },
  ####-------   Cloud 9 -----
  { id: '16', age: '18', country: 'USA', ign: 'Stewie2k', in_game_role:'Leader', team_id: teams[3].id },
  { id: '17', age: '24', country: 'USA', ign: 'autimatic', in_game_role:'Lurker', team_id: teams[3].id },
  { id: '18', age: '26', country: 'USA', ign: 'n0thing', in_game_role:'Rifler', team_id: teams[3].id },
  { id: '19', age: '22', country: 'USA', ign: 'shroud', in_game_role:'Rifler', team_id: teams[3].id },
  { id: '20', age: '23', country: 'USA', ign: 'Skadoodle', in_game_role:'AWPer', team_id: teams[3].id }
])

#Delete all Users
User.delete_all
#Create users
users = User.create([
  ####-----  SKT T1
  { id: '1', first_name: 'Ho-Seong', last_name: 'Lee', region: 'S.Korea', email: 'duke@skt.lol.com', player_id: players[0].id },
  { id: '2', first_name: 'Sun-gu', last_name: 'Kang', region: 'S.Korea', email: 'blank@skt.lol.com', player_id: players[1].id },
  { id: '3', first_name: 'Sang-hyeok', last_name: 'Lee', region: 'S.Korea', email: 'faker@skt.lol.com', player_id: players[2].id },
  { id: '4', first_name: 'Jun-sik', last_name: 'Bae', region: 'S.Korea', email: 'bang@skt.lol.com', player_id: players[3].id },
  { id: '5', first_name: 'Jae-wan', last_name: 'Lee', region: 'S.Korea', email: 'wolf@skt.lol.com', player_id: players[4].id },
  #Coach
  { id: '6', first_name: 'Jeong-gyun', last_name: 'Kim',region: 'S.Korea', email: 'kkoma@skt.lol.com', player_id: ' ',coachID: 'Lol1111'},
  ####-----  Team Solomid
  { id: '7', first_name: 'Kevin', last_name: 'Yarnell', region: 'USA', email: 'hauntzer@tsm.lol.com', player_id: players[5].id },
  { id: '8', first_name: 'Dennis', last_name: 'Johnsen', region: 'Denmark', email: 'svenskeren@tsm.lol.com', player_id: players[6].id },
  { id: '9', first_name: 'Soren', last_name: 'Bjerg', region: 'Denmark', email: 'bjersen@tsm.lol.com', player_id: players[7].id },
  { id: '10', first_name: 'Vincent', last_name: 'Wang', region: 'China', email: 'biofrost@tsm.lol.com', player_id: players[8].id },
  { id: '11', first_name: 'Yiliang', last_name: 'Peng', region: 'USA', email: 'doublelift@tsm.lol.com', player_id: players[9].id },
  #Coach
  { id: '12', first_name: 'Parth', last_name: 'Naidu',region: 'India',email: 'parthenaan@skt.lol.com', player_id: ' ',coachID: 'Lol1112' },
  ####------  NiP
  { id: '13', first_name: 'Patrik', last_name: 'Lindberg', region: 'Sweden', email: 'f0rest@nip.csgo.com', player_id: players[10].id },
  { id: '14', first_name: 'Christopher', last_name: 'Alesund', region: 'Sweden',email: 'getright@nip.csgo.com', player_id: players[11].id },
  { id: '15', first_name: 'Adam', last_name: 'Friberg', region: 'Sweden',email: 'friberg@nip.csgo.com', player_id: players[12].id },
  { id: '16', first_name: 'Richard', last_name: 'Landstrorm', region: 'Sweden', email: 'xizt@nip.csgo.com', player_id: players[13].id },
  { id: '17', first_name: 'Jacob', last_name: 'Mourujarvi', region: 'Sweden', email: 'pyth@nip.csgo.com', player_id: players[14].id },
  #Coach
  { id: '18', first_name: 'Bjorn', last_name: 'Pers', region: 'Sweden',email: 'bjornpers@nip.csgo.com', player_id: ' ',coachID: 'CS1112'},
  ####------  Cloud 9
  { id: '19', first_name: 'Jake', last_name: 'Yip', region: 'USA', email: 'stewie2k@cloud9.csgo.com', player_id: players[15].id },
  { id: '20', first_name: 'Timothy', last_name: 'Ta', region: 'USA', email: 'autimatic@cloud9.csgo.com', player_id: players[16].id  },
  { id: '21', first_name: 'Tyler', last_name: 'Latham', region: 'USA', email: 'n0thing@cloud9.csgo.com', player_id: players[17].id },
  { id: '22', first_name: 'Mike', last_name: 'Grzesiek', region: 'Canada', email: 'shroudk@cloud9.csgo.com', player_id: players[18].id  },
  { id: '23', first_name: 'Jordan', last_name: 'Gilbert', region: 'USA', email: 'skadoodle@cloud9.csgo.com', player_id: players[19].id  },
  #Coach
  { id: '24', first_name: 'Danan', last_name: 'Flander', region: 'USA', email: 'kaniggit@cloud9.csgo.com', player_id: ' ', coachID: 'CS1111' }
])
