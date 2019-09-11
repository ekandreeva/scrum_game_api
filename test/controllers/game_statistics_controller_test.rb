require 'test_helper'

class GameStatisticsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @game_statistic = game_statistics(:one)
  end

  test "should get index" do
    get game_statistics_url, as: :json
    assert_response :success
  end

  test "should create game_statistic" do
    assert_difference('GameStatistic.count') do
      post game_statistics_url, params: { game_statistic: {  } }, as: :json
    end

    assert_response 201
  end

  test "should show game_statistic" do
    get game_statistic_url(@game_statistic), as: :json
    assert_response :success
  end

  test "should update game_statistic" do
    patch game_statistic_url(@game_statistic), params: { game_statistic: {  } }, as: :json
    assert_response 200
  end

  test "should destroy game_statistic" do
    assert_difference('GameStatistic.count', -1) do
      delete game_statistic_url(@game_statistic), as: :json
    end

    assert_response 204
  end
end
