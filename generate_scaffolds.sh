#!/bin/bash
GEN="rails generate scaffold"

#Users is already created

#drop old Role
rails d scaffold Role

$GEN Favorite teamID:string playerID:string
$GEN Season season_name:string
$GEN Player ign:string age:integer country:string in_game_role:string
$GEN Team leagueID:string bio:text coachID:string team_name:string
$GEN Statistic games_played:integer kills:integer deaths:integer wins:integer losses:integer ties:integer
$GEN League prize_money:string league_name:string
$GEN Match team1ID:string team2ID:string leagueID:string match_time:string match_date:string location:string team1Score:integer team2Score:integer
