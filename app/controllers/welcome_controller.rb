class WelcomeController < ApplicationController

  before_action :authenticate_user! , only: [:score, :create_score, :person, :create_person]

  def index

  end

  def score
    @score = Score.new
  end

  def create_score
    @user = current_user
    @score = @user.scores.build(score_params)
    if @score.save
      redirect_to person_path
    else
      render 'score'
    end
  end

  def person
    @person = Person.new
  end

  def create_person
    @user = current_user
    @person = current_user.person.new(person_params)
    if @person.save
      redirect_to result_path
    else
      render 'person'
    end
  end

  def result
  end

  private
  def score_params
    params.require(:score).permit(:chinese, :english, :mathA, :mathB, :science, :physics, :history, :geography, :civics, :biology)
  end
  def person_params
    params.require(:person).permit(:personality)
  end
end
