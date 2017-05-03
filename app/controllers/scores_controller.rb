class ScoresController < ApplicationController
  def index
    @top_10_scores = Score.order('score desc').limit(10)
    render :json => @top_10_scores
  end

  def create
    # p params
    # p score_params
    @new_score = Score.new(score_params)
    # p @new_score
    @new_score.save!
  end

  private
  def score_params
    params.permit(:username, :score)
  end
end
