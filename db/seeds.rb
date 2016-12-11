#This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).

#Delete all Leagues
League.delete_all
#Create leagues
leagues = League.create([
  { id: '1', prize_money: '40000', league_name: 'League of Legends' },
  { id: '2', prize_money: '60000', league_name: 'Counter-Strike: Global Offensive' },
  { id: '3', prize_money: '35000', league_name: 'Overwatch' },
  { id: '4', prize_money: '50000', league_name: 'Dota 2' }
])

#Delete all Teams
Team.delete_all
#Create teams
teams = Team.create([
  { id: '1', bio: 'This is team 1, SKT T1', coachID: '', team_name: 'SKT T1', league_id: leagues[0].id},
  { id: '2', bio: 'This is team 2, Samsung Galaxy', coachID: '', team_name: 'Samsung Galaxy', league_id: leagues[0].id},
  { id: '3', bio: 'This is team 3, Saigon Jokers', coachID: '', team_name: 'Saigon Jokers', league_id: leagues[0].id},
  { id: '4', bio: 'This is team 4, Team Solomid', coachID: '', team_name: 'Team Solomid', league_id: leagues[0].id},
  { id: '5', bio: 'This is team 5, NiP', coachID: '', team_name: 'NiP', league_id: leagues[1].id},
  { id: '6', bio: 'This is team 6, Cloud 9', coachID: '', team_name: 'Cloud 9', league_id: leagues[1].id},
  { id: '7', bio: 'This is team 7, SK Gaming', coachID: '', team_name: 'SK Gaming', league_id: leagues[1].id},
  { id: '8', bio: 'This is team 8, Fnatic', coachID: '', team_name: 'Fnatic', league_id: leagues[1].id},
  { id: '9', bio: 'This is team 9, TeamEnvyUs', coachID: '', team_name: 'TeamEnvyUs', league_id: leagues[2].id},
  { id: '10', bio: 'This is team 10, Misfits', coachID: '', team_name: 'Misfits', league_id: leagues[2].id},
  { id: '11', bio: 'This is team 11, Rogue', coachID: '', team_name: 'Rogue', league_id: leagues[2].id},
  { id: '12', bio: 'This is team 12, melty eSports', coachID: '', team_name: 'melty eSports', league_id: leagues[2].id},
  { id: '13', bio: 'This is team 13, Digital Chaos', coachID: '', team_name: 'Digital Chaos', league_id: leagues[3].id},
  { id: '14', bio: 'This is team 14, Team NP', coachID: '', team_name: 'Team NP', league_id: leagues[3].id},
  { id: '15', bio: 'This is team 15, Infamous', coachID: '', team_name: 'Infamous', league_id: leagues[3].id},
  { id: '16', bio: 'This is team 16, Team Liquid', coachID: '', team_name: 'Team Liquid', league_id: leagues[3].id}
])

#Delete all Matches
Match.delete_all
#Create matches
matches = Match.create([
  { team1ID: teams[0].id, team2ID: teams[1].id, team1Score: "0", team2Score: "1", location: "G-play Civic Center", match_date_time: DateTime.new(2016,11,29,11), league_id: leagues[0].id},
  { team1ID: teams[2].id, team2ID: teams[3].id, team1Score: "0", team2Score: "1", location: "G-play Civic Center", match_date_time: DateTime.new(2016,11,29,15), league_id: leagues[0].id},
  { team1ID: teams[4].id, team2ID: teams[5].id, team1Score: "0", team2Score: "1", location: "G-play Civic Center", match_date_time: DateTime.new(2016,11,29,19), league_id: leagues[1].id},
  { team1ID: teams[6].id, team2ID: teams[7].id, team1Score: "0", team2Score: "1", location: "G-play Civic Center", match_date_time: DateTime.new(2016,11,30,11), league_id: leagues[1].id},
  { team1ID: teams[8].id, team2ID: teams[9].id, team1Score: "0", team2Score: "1", location: "G-play Civic Center", match_date_time: DateTime.new(2016,11,30,15), league_id: leagues[2].id},
  { team1ID: teams[10].id, team2ID: teams[11].id, team1Score: "0", team2Score: "0", location: "G-play Civic Center", match_date_time: DateTime.new(2016,11,30,19), league_id: leagues[2].id},
  { team1ID: teams[12].id, team2ID: teams[13].id, team1Score: "0", team2Score: "1", location: "G-play Civic Center", match_date_time: DateTime.new(2016,12,1,11), league_id: leagues[3].id},
  { team1ID: teams[14].id, team2ID: teams[15].id, team1Score: "2", team2Score: "1", location: "G-play Civic Center", match_date_time: DateTime.new(2016,12,1,15), league_id: leagues[3].id}
])

#Delete all Users
User.delete_all
#Create users
users = User.create([
  ####-----  SKT T1
  { first_name: 'Ho-Seong', last_name: 'Lee', region: 'S.Korea', email: 'duke@skt.lol.com', password: 'test12' },
  { first_name: 'Sun-gu', last_name: 'Kang', region: 'S.Korea', email: 'blank@skt.lol.com', password: 'test12' },
  { first_name: 'Sang-hyeok', last_name: 'Lee', region: 'S.Korea', email: 'faker@skt.lol.com', password: 'test12' },
  { first_name: 'Jun-sik', last_name: 'Bae', region: 'S.Korea', email: 'bang@skt.lol.com', password: 'test12' },
  { first_name: 'Jae-wan', last_name: 'Lee', region: 'S.Korea', email: 'wolf@skt.lol.com', password: 'test12' },
  #Coach
  { first_name: 'Jeong-gyun', last_name: 'Kim',region: 'S.Korea', email: 'kkoma@skt.lol.com', password: 'test12', coachID: 'Lol1111'},
  ####-----  Team Solomid
  { first_name: 'Kevin', last_name: 'Yarnell', region: 'USA', email: 'hauntzer@tsm.lol.com', password: 'test12' },
  { first_name: 'Dennis', last_name: 'Johnsen', region: 'Denmark', email: 'svenskeren@tsm.lol.com', password: 'test12' },
  { first_name: 'Soren', last_name: 'Bjerg', region: 'Denmark', email: 'bjersen@tsm.lol.com', password: 'test12' },
  { first_name: 'Vincent', last_name: 'Wang', region: 'China', email: 'biofrost@tsm.lol.com', password: 'test12' },
  { first_name: 'Yiliang', last_name: 'Peng', region: 'USA', email: 'doublelift@tsm.lol.com', password: 'test12' },
  #Coach
  { first_name: 'Parth', last_name: 'Naidu',region: 'India',email: 'parthenaan@skt.lol.com', password: 'test12', coachID: 'Lol1112' },
  ####------  NiP
  { first_name: 'Patrik', last_name: 'Lindberg', region: 'Sweden', email: 'f0rest@nip.csgo.com', password: 'test12' },
  { first_name: 'Christopher', last_name: 'Alesund', region: 'Sweden',email: 'getright@nip.csgo.com', password: 'test12' },
  { first_name: 'Adam', last_name: 'Friberg', region: 'Sweden',email: 'friberg@nip.csgo.com', password: 'test12' },
  { first_name: 'Richard', last_name: 'Landstrorm', region: 'Sweden', email: 'xizt@nip.csgo.com', password: 'test12' },
  { first_name: 'Jacob', last_name: 'Mourujarvi', region: 'Sweden', email: 'pyth@nip.csgo.com', password: 'test12' },
  #Coach
  { first_name: 'Bjorn', last_name: 'Pers', region: 'Sweden',email: 'bjornpers@nip.csgo.com', password: 'test12', coachID: 'CS1112'},
  ####------  Cloud 9
  { first_name: 'Jake', last_name: 'Yip', region: 'USA', email: 'stewie2k@cloud9.csgo.com', password: 'test12' },
  { first_name: 'Timothy', last_name: 'Ta', region: 'USA', email: 'autimatic@cloud9.csgo.com', password: 'test12' },
  { first_name: 'Tyler', last_name: 'Latham', region: 'USA', email: 'n0thing@cloud9.csgo.com', password: 'test12' },
  { first_name: 'Mike', last_name: 'Grzesiek', region: 'Canada', email: 'shroudk@cloud9.csgo.com', password: 'test12' },
  { first_name: 'Jordan', last_name: 'Gilbert', region: 'USA', email: 'skadoodle@cloud9.csgo.com', password: 'test12' },
  #Coach
  #Add more users here

  { first_name: 'Danan', last_name: 'Flander', region: 'USA', email: 'kaniggit@cloud9.csgo.com', password: 'test12', coachID: 'CS1111' },
  #Admin
  { first_name: 'Admin', last_name: 'Admin', region: 'USA', email: 'admin@esports.com', password: 'test12', coachID: '' },
  #Our data
  { first_name: 'Matthew', last_name: 'Greci', region: 'USA', email: 'mgreci@unm.edu', password: 'test12', coachID: '' }
])

#Delete all Players
Player.delete_all
#Create players
players = Player.create([
  #### League of Legends
  ####-----  SKT T1 -----
  { age: '21', country: 'S.Korea', ign: 'Duke', in_game_role: 'Top', team_id: teams[0].id, user_id: users[0].id },
  { age: '18', country: 'S.Korea', ign: 'Blank', in_game_role: 'Jungler', team_id: teams[0].id, user_id: users[1].id },
  { age: '20', country: 'S.Korea', ign: 'Faker', in_game_role: 'Mid Laner', team_id: teams[0].id, user_id: users[2].id },
  { age: '20', country: 'S.Korea', ign: 'Bang', in_game_role: 'AD Carry', team_id: teams[0].id, user_id: users[3].id },
  { age: '20', country: 'S.Korea', ign: 'Wolf', in_game_role: 'Support', team_id: teams[0].id, user_id: users[4].id },
  ####-----    Team Solomid  ------
  { age: '21', country: 'USA', ign: 'Hauntzer', in_game_role:'Top', team_id: teams[1].id, user_id: users[6].id },
  { age: '21', country: 'Denmark', ign: 'Svenskeren', in_game_role:'Jungler', team_id: teams[1].id, user_id: users[7].id },
  { age: '20', country: 'Denmark', ign: 'Bjersen', in_game_role:'Mid Laner', team_id: teams[1].id, user_id: users[8].id },
  { age: '19', country: 'China', ign: 'Biofrost', in_game_role:'Support', team_id: teams[1].id, user_id: users[9].id },
  { age: '23', country: 'USA', ign: 'Doublelift', in_game_role:'AD Carry', team_id: teams[1].id, user_id: users[10].id },
  #### Counter-Strike: Global Offensive
  ####-------   NiP   -----
  { age: '28', country: 'Sweden', ign: 'f0rest', in_game_role:'AWPer', team_id: teams[2].id, user_id: users[12].id },
  { age: '28', country: 'Sweden', ign: 'GeT_RiGhT', in_game_role:'Leader', team_id: teams[2].id, user_id: users[13].id },
  { age: '25', country: 'Sweden', ign: 'friberg', in_game_role:'Entry Fragger', team_id: teams[2].id, user_id: users[14].id },
  { age: '25', country: 'Sweden', ign: 'Xizt', in_game_role:'Rifler', team_id: teams[2].id, user_id: users[15].id },
  { age: '23', country: 'Sweden', ign: 'pyth', in_game_role:'Rifler', team_id: teams[2].id, user_id: users[16].id },
  ####-------   Cloud 9 -----
  { age: '18', country: 'USA', ign: 'Stewie2k', in_game_role:'Leader', team_id: teams[3].id, user_id: users[18].id },
  { age: '24', country: 'USA', ign: 'autimatic', in_game_role:'Lurker', team_id: teams[3].id, user_id: users[19].id },
  { age: '26', country: 'USA', ign: 'n0thing', in_game_role:'Rifler', team_id: teams[3].id, user_id: users[20].id },
  { age: '22', country: 'USA', ign: 'shroud', in_game_role:'Rifler', team_id: teams[3].id, user_id: users[21].id },
  { age: '23', country: 'USA', ign: 'Skadoodle', in_game_role:'AWPer', team_id: teams[3].id, user_id: users[22].id }
])

seasons = Season.create([
  { season_name: '2016' },
  { season_name: '2017' }
])

statistics = Statistic.create([
  { games_played: '1', kills: '1', deaths: '0', wins: '1', losses:'0', ties: '0', team_id: teams[0].id, player_id: players[0].id, season_id: seasons[0].id, match_id: matches[0].id },
  { games_played: '1', kills: '1', deaths: '0', wins: '1', losses:'0', ties: '0', team_id: teams[0].id, player_id: players[1].id, season_id: seasons[0].id, match_id: matches[0].id },
  { games_played: '1', kills: '1', deaths: '0', wins: '1', losses:'0', ties: '0', team_id: teams[0].id, player_id: players[2].id, season_id: seasons[0].id, match_id: matches[0].id },
  { games_played: '1', kills: '1', deaths: '0', wins: '1', losses:'0', ties: '0', team_id: teams[0].id, player_id: players[3].id, season_id: seasons[0].id, match_id: matches[0].id },
  { games_played: '1', kills: '1', deaths: '0', wins: '1', losses:'0', ties: '0', team_id: teams[0].id, player_id: players[4].id, season_id: seasons[0].id, match_id: matches[0].id },
  { games_played: '1', kills: '0', deaths: '1', wins: '0', losses:'1', ties: '0', team_id: teams[1].id, player_id: players[5].id, season_id: seasons[0].id, match_id: matches[0].id },
  { games_played: '1', kills: '0', deaths: '1', wins: '0', losses:'1', ties: '0', team_id: teams[1].id, player_id: players[6].id, season_id: seasons[0].id, match_id: matches[0].id },
  { games_played: '1', kills: '0', deaths: '1', wins: '0', losses:'1', ties: '0', team_id: teams[1].id, player_id: players[7].id, season_id: seasons[0].id, match_id: matches[0].id },
  { games_played: '1', kills: '0', deaths: '1', wins: '0', losses:'1', ties: '0', team_id: teams[1].id, player_id: players[8].id, season_id: seasons[0].id, match_id: matches[0].id },
  { games_played: '1', kills: '0', deaths: '1', wins: '0', losses:'1', ties: '0', team_id: teams[1].id, player_id: players[9].id, season_id: seasons[0].id, match_id: matches[0].id }
])

#Coaches?
