#!/bin/bash
GEN="rails generate scaffold"

$GEN User first_name:string last_name:string email:string phone_number:string coachID:string age:integer region:string player:references

#drop old Role
rails d scaffold Role

$GEN Favorite teamID:string playerID:string user:references
$GEN Season season_name:string
$GEN Player ign:string age:integer country:string in_game_role:string team:references
$GEN Team leagueID:string bio:text coachID:string team_name:string league:references
$GEN Statistic games_played:integer kills:integer deaths:integer wins:integer losses:integer ties:integer team:references match:references season:references
$GEN League prize_money:string league_name:string
$GEN Match team1ID:string team2ID:string leagueID:string match_time:string match_date:string location:string team1Score:integer team2Score:integer league:references
