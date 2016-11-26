require 'test_helper'

class StatisticsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @statistic = statistics(:one)
  end

  test "should get index" do
    get statistics_url
    assert_response :success
  end

  test "should get new" do
    get new_statistic_url
    assert_response :success
  end

  test "should create statistic" do
    assert_difference('Statistic.count') do
      post statistics_url, params: { statistic: { deaths: @statistic.deaths, games_played: @statistic.games_played, kills: @statistic.kills, losses: @statistic.losses, match_id: @statistic.match_id, season_id: @statistic.season_id, team_id: @statistic.team_id, ties: @statistic.ties, wins: @statistic.wins } }
    end

    assert_redirected_to statistic_url(Statistic.last)
  end

  test "should show statistic" do
    get statistic_url(@statistic)
    assert_response :success
  end

  test "should get edit" do
    get edit_statistic_url(@statistic)
    assert_response :success
  end

  test "should update statistic" do
    patch statistic_url(@statistic), params: { statistic: { deaths: @statistic.deaths, games_played: @statistic.games_played, kills: @statistic.kills, losses: @statistic.losses, match_id: @statistic.match_id, season_id: @statistic.season_id, team_id: @statistic.team_id, ties: @statistic.ties, wins: @statistic.wins } }
    assert_redirected_to statistic_url(@statistic)
  end

  test "should destroy statistic" do
    assert_difference('Statistic.count', -1) do
      delete statistic_url(@statistic)
    end

    assert_redirected_to statistics_url
  end
end
