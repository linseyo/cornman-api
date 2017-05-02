class ScoresController < ApplicationController
  def index
    @top_10_scores = Score.order('score desc').limit(10)
  end

  def create
    @new_score = Score.new(score_params)
    @new_score.save!
  end

  private
  def score_params
    params.permit(:username, :score)
  end
end
