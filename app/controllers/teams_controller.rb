class TeamsController < ApplicationController
  def index
    @unassigned = fetch_unassigned
    @team_1 = fetch_team_0
    @team_2 = fetch_team_1
    @team_3 = fetch_team_2
    @team_4 = fetch_team_3
    @team_5 = fetch_team_4
  end

  def update
    @team = Team.find(params[:id])
    if @team.update(team_params)
      redirect_to teams_path
      flash[:success] = "team Updated"
    else
      flash[:error] = "team Not Updated"
    end
  end

  private 

  def team_params
    params.require(:team).permit(:name)
  end

  def all_users 
    User.includes(:team)
  end

  def fetch_unassigned
    all_users.by_team("unassigned")
  end

  def fetch_team_0
    all_users.by_team("team_1")
  end

  def fetch_team_1
    all_users.by_team("team_2")
  end

  def fetch_team_2
    all_users.by_team("team_3")
  end

  def fetch_team_3
    all_users.by_team("team_4")
  end

  def fetch_team_4
    all_users.by_team("team_5")
  end

end
