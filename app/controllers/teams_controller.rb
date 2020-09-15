class TeamsController < ApplicationController
  def index
    @unassigned = fetch_unassigned
    @team_1 = fetch_team_1
  end

  private 

  def all_users 
    User.includes(:team)
  end

  def fetch_unassigned
    all_users.by_team("unassigned")
  end

  def fetch_team_1
    all_users.by_team("team_1")
  end

end
