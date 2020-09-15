class Team < ApplicationRecord
  # Team 1 for teams
  TEAM_1 = "team_1"

  # Team 2 for teams
  TEAM_2 = "team_2"

  # Team 3 for teams
  TEAM_3 = "team_3"

  # Team 4 for teams
  TEAM_4 = "team_4"

  # Team 5 for teams
  TEAM_5 = "team_5"

  # Unassigned for teams
  UNASSIGNED = "unassigned"

  validates :name, presence: true

  # returns team_1 id for droppzone
  def self.team_1
    find_by(name: TEAM_1)
  end

  # returns team_2 id for droppzone
  def self.team_2
    find_by(name: TEAM_2)
  end

  # returns team_3 id for droppzone
  def self.team_3
    find_by(name: TEAM_3)
  end

  # returns team_4 id for droppzone
  def self.team_4
    find_by(name: TEAM_4)
  end

  # returns team_5 id for droppzone
  def self.team_5
    find_by(name: TEAM_5)
  end

  # returns team_5 id for droppzone
  def self.unassigned
    find_by(name: UNASSIGNED)
  end
  
end
