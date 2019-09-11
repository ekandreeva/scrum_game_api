class GameStatisticsController < ApplicationController
  before_action :set_game_statistic, only: [:show, :update, :destroy]

  # GET /game_statistics
  def index
    @game_statistics = GameStatistic.all

    render json: @game_statistics
  end

  # GET /game_statistics/1
  def show
    render json: @game_statistic
  end

  # POST /game_statistics
  def create
    @game_statistic = GameStatistic.new(game_statistic_params)

    if @game_statistic.save
      render json: @game_statistic, status: :created, location: @game_statistic
    else
      render json: @game_statistic.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /game_statistics/1
  def update
    if @game_statistic.update(game_statistic_params)
      render json: @game_statistic
    else
      render json: @game_statistic.errors, status: :unprocessable_entity
    end
  end

  # DELETE /game_statistics/1
  def destroy
    @game_statistic.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_game_statistic
      @game_statistic = GameStatistic.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def game_statistic_params
      params.fetch(:game_statistic, {})
    end
end
